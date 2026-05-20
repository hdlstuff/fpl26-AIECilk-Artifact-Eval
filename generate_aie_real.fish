#!/usr/bin/env fish

# Generate AIE projects for synthetic benchmarks across PE counts.
#
# Dry run:
#   ./generate_aie_synthetic.fish --dry-run

set -l SCRIPT_NAME (status basename)
set -l ROOT_DIR /home/eryilmaz/repos/fpl26-aie
set -l SYNTHETIC_DIR $ROOT_DIR/real
set -l AIE_DIR $ROOT_DIR/aie
set -l ARCH_GEN_DIR /home/eryilmaz/repos/HardCilk/architecture-generator
# set -l PE_COUNTS 1 4 16 32 64 128
set -l PE_COUNTS 8

function usage
    echo "Usage: $SCRIPT_NAME [--dry-run] [--build-only] [--max-parallel N]"
    echo "  --dry-run        Process only first benchmark folder, first config, first PE"
    echo "  --build-only     Skip generation; run tmux compilation for all AIE folders"
    echo "  --max-parallel N Run at most N tmux builds in parallel (default: 8)"
end

function fail
    echo "[ERROR] $argv" >&2
    exit 1
end

function log
    echo "[INFO] $argv"
end

function warn
    echo "[WARN] $argv" >&2
end

function require_dir
    if not test -d $argv[1]
        fail "Directory not found: $argv[1]"
    end
end

function require_cmd
    if not type -q $argv[1]
        fail "Required command not found: $argv[1]"
    end
end

function copy_static_assets
    set -l src_dir $argv[1]
    set -l dst_dir $argv[2]

    for item in $src_dir/* $src_dir/.*
        set -l base (basename $item)

        if test "$base" = "." -o "$base" = ".."
            continue
        end

        if string match -rq '\\.json$' -- $base
            continue
        end

        if test -e $item
            cp -a $item $dst_dir/
        end
    end
end

function update_num_pe
    set -l in_file $argv[1]
    set -l out_file $argv[2]
    set -l pe_count $argv[3]

    cp -r $in_file $out_file
    or fail "Failed to copy $in_file to $out_file for numProcessingElements update"
    # perl -pe 's/"numProcessingElements"\s*:\s*\d+\s*,/"numProcessingElements": '$pe_count',/g' $in_file > $out_file
end

function patch_top_reset
    set -l rtl_dir $argv[1]

    for rtl_file in $rtl_dir/*.v
        if not test -f $rtl_file
            continue
        end

        set -l top_module (basename $rtl_file .v)

        env TOP_MODULE=$top_module perl -0777 -i -pe '
            my $mod = $ENV{TOP_MODULE};
            s{(module\s+\Q$mod\E\s*\(.*?\);\s*)(.*?)(\nendmodule)}{
                my ($head, $body, $tail) = ($1, $2, $3);

                # Rename the top-module port in the module definition list.
                $head =~ s/\breset\b/reset_n/;

                # Rename input declaration and inject active-high internal reset.
                if ($body !~ /\bwire\s+reset\s*=\s*~\s*reset_n\s*;/m) {
                    $body =~ s/^(\s*)input(\s+wire)?\s+reset\s*;/$1input$2 reset_n;\n$1wire reset = ~reset_n;/m;
                } else {
                    $body =~ s/^(\s*)input(\s+wire)?\s+reset\s*;/$1input$2 reset_n;/m;
                }

                $head . $body . $tail;
            }es;
        ' $rtl_file
    end
end

function run_tmux_build_flow
    set -l out_dir $argv[1]
    set -l out_name $argv[2]

    set -l session_name "aie_build_"$out_name
    set -l log_dir $out_dir/../../tmux_logs
    set -l timestamp (date +%Y%m%d_%H%M%S)
    set -l log_file $log_dir/$session_name"_"$timestamp".log"

    mkdir -p $log_dir
    or fail "Failed to create tmux log directory $log_dir"

    if tmux has-session -t $session_name 2>/dev/null
        warn "tmux session already exists, replacing: $session_name"
        tmux kill-session -t $session_name
        or fail "Failed to kill existing tmux session $session_name"
    end

    # Start an interactive fish shell so the session remains attachable.
    tmux new-session -d -s $session_name -c $out_dir fish
    or fail "Failed to create tmux session $session_name"

    tmux pipe-pane -t $session_name -o "perl -pe 's/\\e\\[[0-9;?]*[ -\\/]*[@-~]//g; s/\\e\\][^\\a]*(\\a|\\e\\\\)//g; s/\\r//g' >> '$log_file'"
    or fail "Failed to enable tmux logging for $session_name"

    tmux send-keys -t $session_name "cd src/host" C-m
    tmux send-keys -t $session_name "mkdir build" C-m
    tmux send-keys -t $session_name "cd build" C-m
    tmux send-keys -t $session_name "cmake .." C-m
    tmux send-keys -t $session_name "make" C-m
    tmux send-keys -t $session_name "cd ../../../" C-m
    tmux send-keys -t $session_name "enable_xilinx_2022.2" C-m
    tmux send-keys -t $session_name "make all" C-m

    echo "[INFO] Started tmux session $session_name in $out_dir" >&2
    echo "[INFO] Session log file: $log_file" >&2
    echo "[INFO] Attach with: tmux attach -t $session_name" >&2

    echo $session_name
end

function wait_for_tmux_sessions
    set -l sessions $argv

    if test (count $sessions) -eq 0
        return 0
    end

    while true
        set -l remaining
        for s in $sessions
            if tmux has-session -t $s 2>/dev/null
                set remaining $remaining $s
            end
        end

        if test (count $remaining) -eq 0
            break
        end

        sleep 5
    end
end

argparse 'd/dry-run' 'b/build-only' 'p/max-parallel=' 'h/help' -- $argv
or begin
    usage
    exit 1
end

if set -q _flag_help
    usage
    exit 0
end

set -l dry_run 0
if set -q _flag_dry_run
    set dry_run 1
    log "Dry run mode enabled"
end

set -l build_only 0
if set -q _flag_build_only
    set build_only 1
    log "Build-only mode enabled"
end

set -l max_parallel 8
if set -q _flag_max_parallel
    set max_parallel $_flag_max_parallel
end

if test $max_parallel -lt 1
    fail "--max-parallel must be >= 1"
end

require_dir $ROOT_DIR
require_dir $AIE_DIR

if test $build_only -eq 0
    require_dir $SYNTHETIC_DIR
    require_dir $ARCH_GEN_DIR
end

require_cmd tmux
require_cmd date
require_cmd cat

if test $build_only -eq 0
    require_cmd git
    require_cmd sbt
    require_cmd perl
    require_cmd cp
    require_cmd mktemp
end

if test $build_only -eq 1
    set -l aie_dirs (find $AIE_DIR -mindepth 1 -maxdepth 1 -type d | sort)
    if test (count $aie_dirs) -eq 0
        fail "No AIE project folders found in $AIE_DIR"
    end

    if test $dry_run -eq 1
        set aie_dirs $aie_dirs[1]
    end

    set -l active_sessions
    for out_dir in $aie_dirs
        set -l out_name (basename $out_dir)
        log "Build-only: running tmux build for $out_name"
        set -l session_name (run_tmux_build_flow $out_dir $out_name)
        or fail "Failed to start tmux build flow for $out_dir"

        set active_sessions $active_sessions $session_name
        if test (count $active_sessions) -ge $max_parallel
            log "Waiting for batch of $max_parallel builds to finish"
            wait_for_tmux_sessions $active_sessions
            set active_sessions
        end
    end

    if test (count $active_sessions) -gt 0
        log "Waiting for remaining builds to finish"
        wait_for_tmux_sessions $active_sessions
    end

    log "All done"
    exit 0
end

set -l bench_dirs (find $SYNTHETIC_DIR -mindepth 1 -maxdepth 1 -type d | sort)
if test (count $bench_dirs) -eq 0
    fail "No benchmark folders found in $SYNTHETIC_DIR"
end

if test $dry_run -eq 1
    set bench_dirs $bench_dirs[1]
end

pushd $ARCH_GEN_DIR >/dev/null
or fail "Could not enter $ARCH_GEN_DIR"

set -l original_branch (git rev-parse --abbrev-ref HEAD)
or fail "Could not determine current git branch in $ARCH_GEN_DIR"

set -l temp_dir (mktemp -d)
or fail "Could not create temporary directory"

set -l stop_after_first 0
set -l active_sessions

for bench_dir in $bench_dirs
    set -l bench_name (basename $bench_dir)

    set -l config_files (find $bench_dir -maxdepth 1 -type f -name '*.json' | sort)
    if test (count $config_files) -eq 0
        warn "Skipping $bench_name (no JSON config found)"
        continue
    end

    if test $dry_run -eq 1
        set config_files $config_files[1]
    end

    for config_file in $config_files
        set -l config_stem (basename $config_file .json)

        set -l pe_values $PE_COUNTS
        if test $dry_run -eq 1
            set pe_values $PE_COUNTS[1]
        end

        for pe in $pe_values
            log "Benchmark folder=$bench_name config=$config_stem PE=$pe"

            set -l temp_cfg $temp_dir/$config_stem"_pe"$pe.json
            update_num_pe $config_file $temp_cfg $pe
            or fail "Failed to patch numProcessingElements in $config_file"

            git checkout aie-project
            or fail "Failed to checkout branch aie-project"

            sbt "runMain HardCilk.HardCilkEmitter -k -r 10 $temp_cfg" 2>&1
            or fail "Emitter -k failed for $temp_cfg on branch aie-project"

            git checkout axipagesplitter
            or fail "Failed to checkout branch axipagesplitter"

            sbt "runMain HardCilk.HardCilkEmitter -g -r 10 $temp_cfg" 2>&1
            or fail "Emitter -g failed for $temp_cfg on branch axipagesplitter"

            set -l generated_dir $ARCH_GEN_DIR/$config_stem"_pe"$pe"_hardcilk_output"
            set -l generated_sw_dir $generated_dir/software/aie_$config_stem"_pe"$pe
            set -l generated_rtl_dir $generated_dir/rtl

            require_dir $generated_dir
            require_dir $generated_sw_dir
            require_dir $generated_rtl_dir

            set -l out_name $config_stem"_pe"$pe"_8"
            set -l out_dir $AIE_DIR/$out_name
            set -l out_rtl_dst $out_dir/src/rtl/$config_stem

            if test -d $out_dir
                log "Removing existing output directory $out_dir"
                rm -rf $out_dir
            end

            mkdir -p $out_dir
            or fail "Failed to create output directory $out_dir"

            copy_static_assets $bench_dir $out_dir
            or fail "Failed to copy static benchmark assets from $bench_dir"

            cp -a $generated_sw_dir/. $out_dir/
            or fail "Failed to copy generated software from $generated_sw_dir"

            mkdir -p $out_rtl_dst
            or fail "Failed to create destination RTL directory $out_rtl_dst"

            cp -a $generated_rtl_dir/. $out_rtl_dst/
            or fail "Failed to copy generated RTL from $generated_rtl_dir"

            patch_top_reset $out_rtl_dst
            or fail "Failed to patch reset polarity in $out_rtl_dst"

            log "Created $out_dir"

            # set -l session_name (run_tmux_build_flow $out_dir $out_name)
            # or fail "Failed to start tmux build flow for $out_dir"

            set active_sessions $active_sessions $session_name
            if test (count $active_sessions) -ge $max_parallel
                log "Waiting for batch of $max_parallel builds to finish"
                wait_for_tmux_sessions $active_sessions
                set active_sessions
            end

            if test $dry_run -eq 1
                set stop_after_first 1
                break
            end
        end

        if test $stop_after_first -eq 1
            break
        end
    end

    if test $stop_after_first -eq 1
        break
    end
end

if test $original_branch != (git rev-parse --abbrev-ref HEAD)
    git checkout $original_branch
    or warn "Could not restore original branch $original_branch"
end

if test -d $temp_dir
    rm -rf $temp_dir
end

popd >/dev/null

if test (count $active_sessions) -gt 0
    log "Waiting for remaining builds to finish"
    wait_for_tmux_sessions $active_sessions
end

log "All done"

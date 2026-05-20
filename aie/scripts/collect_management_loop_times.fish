#!/usr/bin/env fish

# Collects management loop timings across experiment/PE/config combinations.
# Usage:
#   fish collect_management_loop_times.fish [base_dir] [output_csv]
# Defaults:
#   base_dir   = /home/eryilmaz/repos/fpl26-aie/aie
#   output_csv = <base_dir>/management_loop_times.csv

set -l base_dir "/home/eryilmaz/repos/fpl26-aie/aie"
if test (count $argv) -ge 1
    set base_dir $argv[1]
end

set -l output_csv "$base_dir/management_loop_times.csv"
if test (count $argv) -ge 2
    set output_csv $argv[2]
end

set -l experiments exp1 exp2 exp3
set -l pe_counts 1 28
set -l configs 1 2 4 8 16 32 64 128 256 512 1024

# Write CSV header.
echo "experiment,pe,config,time_taken_s" > "$output_csv"

for exp in $experiments
    for pe in $pe_counts
        for cfg in $configs
            set -l dir $base_dir/$exp"_pe"$pe
            set -l file "$dir/tasksize$cfg.txt"

            if not test -f "$file"
                echo "$exp,$pe,$cfg,,$file,missing_file" >> "$output_csv"
                continue
            end

            set -l line (grep -m1 "Time taken for management loop:" "$file" 2>/dev/null)
            if test -z "$line"
                echo "$exp,$pe,$cfg,,$file,missing_time_line" >> "$output_csv"
                continue
            end

            set -l time_taken (string match -r --groups-only 'Time taken for management loop:\s*([0-9]+(?:\.[0-9]+)?)s' "$line")
            if test -z "$time_taken"
                echo "$exp,$pe,$cfg,,$file,parse_failed" >> "$output_csv"
                continue
            end

            echo "$exp,$pe,$cfg,$time_taken" >> "$output_csv"
        end
    end
end

echo "CSV written to: $output_csv"

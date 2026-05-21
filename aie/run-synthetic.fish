#!/usr/bin/env fish

set -x EXPS exp1 exp2 exp3
# set -x EXPS exp3
set -x PES pe1 pe2 pe4 pe8 pe16 pe28 pe32 pe64 pe128
set -x DELAYS 1 2 4 8 16 32 64 128 256 512 1024 2048 4096

set -x ROOTDIR (pwd)


for exp in $EXPS
    for pe in $PES
        set -x EXPDIR "$exp"_"$pe"
        if test -e "$ROOTDIR"/"$EXPDIR"/src/host/build/projects/pageRank/pageRank_xrt
            echo "Executable for $EXPDIR already exists, skipping build"
        else
            echo "Building $EXPDIR"
            cd "$ROOTDIR"/"$EXPDIR"/src/host
            mkdir -p build
            cd build
            cmake ..
            make -j
        end
    end
end

set -x PES pe1 pe28

enable_xilinx_2022.2

for exp in $EXPS
    for pe in $PES
        for DELAY in $DELAYS
            sleep 1
            set -x EXPDIR "$exp"_"$pe"
            xbutil reset -d 01:00.1 --force
            cd "$ROOTDIR"/"$EXPDIR"
            echo "Running $EXPDIR with delay $DELAY"
            if test "$exp" = "exp3"
                ./src/host/build/projects/pageRank/pageRank_xrt ./xclbins/paper_exp1_hw.xclbin $DELAY 9 4 1 > tasksize"$DELAY".txt
            else
                ./src/host/build/projects/pageRank/pageRank_xrt ./xclbins/paper_exp1_hw.xclbin $DELAY 9 7 > tasksize"$DELAY".txt
            end
        end
    end
end

set -x EXPS exp1 exp2 exp3
set -x DELAYS 4096
set -x PES pe1 pe2 pe4 pe8 pe16 pe32 pe64 pe128

for exp in $EXPS
    for pe in $PES
        for DELAY in $DELAYS
            sleep 1
            set -x EXPDIR "$exp"_"$pe"
            xbutil reset -d 01:00.1 --force
            cd "$ROOTDIR"/"$EXPDIR"
            echo "Running $EXPDIR with delay $DELAY"
            if test "$exp" = "exp3"
                ./src/host/build/projects/pageRank/pageRank_xrt ./xclbins/paper_exp1_hw.xclbin $DELAY 9 4 1 > scalability"$DELAY".txt
            else
                ./src/host/build/projects/pageRank/pageRank_xrt ./xclbins/paper_exp1_hw.xclbin $DELAY 9 7 > scalability"$DELAY".txt
            end
        end
    end
end
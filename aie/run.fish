#!/usr/bin/env fish

set -x EXPS exp1 exp2 exp3
# set -x EXPS exp3
set -x PES pe1 pe28
set -x ROOTDIR "/home/eryilmaz/repos/fpl26-aie/aie"
set -x DELAYS 2048 4096

for exp in $EXPS
    for pe in $PES
        for DELAY in $DELAYS
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

set -x DELAYS 64 128
set -x EXPS exp2

for exp in $EXPS
    for pe in $PES
        for DELAY in $DELAYS
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
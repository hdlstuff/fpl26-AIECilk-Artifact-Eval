#!/usr/bin/env fish
set -x ROOTDIR (pwd)

# Build host executables
cd "$ROOTDIR"/fib_pe1
make host
if test -e "$ROOTDIR"/pageRankv2_pe1_8/src/host/build/projects/pageRank/pageRank_xrt
    echo "Executable for pageRankv2_pe1_8 already exists, skipping build"
else
    echo "Building pageRankv2_pe1_8"
    cd "$ROOTDIR"/pageRankv2_pe1_8/src/host
    mkdir -p build
    cd build
    cmake ..
    make -j
end


enable_xilinx_2022.2

# Run fibonacci
# cd "$ROOTDIR"/fib_pe1
# for i in (seq 1 10)
#     xbutil reset -d 01:00.1 --force
#     bass "$ROOTDIR"/xbutil_power_logger.sh -i 0 -o power.txt -O output.txt -- ./host ./xclbins/fibonacci_hw.xclbin 36
# end



# Run pageRankv2_pe1_8
cd "$ROOTDIR"/pageRankv2_pe1_8
for i in (seq 1 1)
    xbutil reset -d 01:00.1 --force
    bass "$ROOTDIR"/xbutil_power_logger.sh -i 0 -o power.txt -O output.txt -- ./src/host/build/projects/pageRank/pageRank_xrt ./xclbins/pageRankHS_hw.xclbin /tools/graphs/com-orkut.ungraph.txt
end

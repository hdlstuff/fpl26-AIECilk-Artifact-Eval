#!/usr/bin/env fish
set -x ROOTDIR (pwd)

# Build host executables
cd "$ROOTDIR"/fib_pe1
make host
if test -e "$ROOTDIR"/pagerank_pe1/src/host/build/projects/pageRank/pageRank_xrt
    echo "Executable for pagerank_pe1 already exists, skipping build"
else
    echo "Building pagerank_pe1"
    cd "$ROOTDIR"/pagerank_pe1/src/host
    mkdir -p build
    cd build
    cmake ..
    make -j
end


enable_xilinx_2022.2

# Run fibonacci
cd "$ROOTDIR"/fib_pe1
for i in (seq 1 1)
    sleep 1
    xbutil reset -d 01:00.1 --force
    sleep 1
    bass "$ROOTDIR"/xbutil_power_logger.sh -i 0 -o power.txt -O output.txt -- ./host ./xclbins/fibonacci_hw.xclbin 36
end



# Run pagerank_pe1
cd "$ROOTDIR"/pagerank_pe1
for i in (seq 1 1)
    sleep 1
    xbutil reset -d 01:00.1 --force
    sleep 1
    bass "$ROOTDIR"/xbutil_power_logger.sh -i 0 -o power.txt -O output.txt -- ./src/host/build/projects/pageRank/pageRank_xrt ./xclbins/pageRankHS_hw.xclbin /tools/graphs/com-orkut.ungraph.txt
end

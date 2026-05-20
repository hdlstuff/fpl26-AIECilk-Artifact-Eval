#include <pageRankDriver.h>
#include <memIO_xrt.h>
#include <experimental/xrt_xclbin.h>
#include <experimental/xrt_ip.h>
#include <string>


#include <xrt/xrt_device.h>


#define FPGA_COUNT 1



// main parses args
int main(int argc, char* argv[])
{

    xrt::device fpga_card[FPGA_COUNT];
    xrt::uuid  uuids[FPGA_COUNT];

    // Read arguments xclbin, delay, depth, branchFactor

    if (argc < 5) {
        std::cout << "Usage: " << argv[0] << " <xclbin> {delay} {depth} {branchFactor} {serialPhase}" << std::endl;
        return 1;
    }
    std::string xclbin_path = argv[1];
    uint32_t delay = std::stoul(argv[2]);
    uint16_t depth = std::stoul(argv[3]);
    uint16_t branchFactor = std::stoul(argv[4]);
    uint16_t serialPhase = std::stoul(argv[5]);

    for (int i = 0; i < FPGA_COUNT; i++) {
        fpga_card[i] = xrt::device(i);
        uuids[i] = fpga_card[i].load_xclbin(xclbin_path);
    }


    auto pr0_name = "exp3:{exp3_1}";


    auto pageRank_0= xrt::ip(fpga_card[0], uuids[0], pr0_name);

    std::vector<Memory *> memories_;
    auto memory_0 = XRTMemory(fpga_card[0], pageRank_0);
    memories_.push_back(&memory_0);



    pageRankDriver driver(memories_, delay, depth, branchFactor, serialPhase);
    driver.run_test_bench_mFpga();


    return 0;
}
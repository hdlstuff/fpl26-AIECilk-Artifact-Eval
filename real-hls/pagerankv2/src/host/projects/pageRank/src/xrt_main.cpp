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

    assert(argc == 3);
     
    // The first argument is the pass to the xclbin
    std::string xclbin_path = argv[1];
    std::string graph_file = argv[2];


    for (int i = 0; i < FPGA_COUNT; i++) {
        fpga_card[i] = xrt::device(i); 
        uuids[i] = fpga_card[i].load_xclbin(xclbin_path);
    }


    auto pr0_name = "pageRankHS:{pageRankHS_1}";


    auto pageRank_0= xrt::ip(fpga_card[0], uuids[0], pr0_name);

    std::vector<Memory *> memories_;
    auto memory_0 = XRTMemory(fpga_card[0], pageRank_0);
    memories_.push_back(&memory_0);
    


    pageRankDriver driver(memories_, graph_file);
    driver.run_test_bench_mFpga();


    return 0;
}
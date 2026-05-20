// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of mem_0
//        bit 31~0 - mem_0[31:0] (Read/Write)
// 0x14 : Data signal of mem_0
//        bit 31~0 - mem_0[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of mem_1
//        bit 31~0 - mem_1[31:0] (Read/Write)
// 0x20 : Data signal of mem_1
//        bit 31~0 - mem_1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of mem_2
//        bit 31~0 - mem_2[31:0] (Read/Write)
// 0x2c : Data signal of mem_2
//        bit 31~0 - mem_2[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of mem_5
//        bit 31~0 - mem_5[31:0] (Read/Write)
// 0x38 : Data signal of mem_5
//        bit 31~0 - mem_5[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_MEM_0_DATA 0x10
#define CONTROL_BITS_MEM_0_DATA 64
#define CONTROL_ADDR_MEM_1_DATA 0x1c
#define CONTROL_BITS_MEM_1_DATA 64
#define CONTROL_ADDR_MEM_2_DATA 0x28
#define CONTROL_BITS_MEM_2_DATA 64
#define CONTROL_ADDR_MEM_5_DATA 0x34
#define CONTROL_BITS_MEM_5_DATA 64

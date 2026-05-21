// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XVERTEX_MAP_H
#define XVERTEX_MAP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvertex_map_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XVertex_map_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XVertex_map;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVertex_map_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVertex_map_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVertex_map_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVertex_map_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XVertex_map_Initialize(XVertex_map *InstancePtr, UINTPTR BaseAddress);
XVertex_map_Config* XVertex_map_LookupConfig(UINTPTR BaseAddress);
#else
int XVertex_map_Initialize(XVertex_map *InstancePtr, u16 DeviceId);
XVertex_map_Config* XVertex_map_LookupConfig(u16 DeviceId);
#endif
int XVertex_map_CfgInitialize(XVertex_map *InstancePtr, XVertex_map_Config *ConfigPtr);
#else
int XVertex_map_Initialize(XVertex_map *InstancePtr, const char* InstanceName);
int XVertex_map_Release(XVertex_map *InstancePtr);
#endif


void XVertex_map_Set_mem_0(XVertex_map *InstancePtr, u64 Data);
u64 XVertex_map_Get_mem_0(XVertex_map *InstancePtr);
void XVertex_map_Set_mem_1(XVertex_map *InstancePtr, u64 Data);
u64 XVertex_map_Get_mem_1(XVertex_map *InstancePtr);
void XVertex_map_Set_mem_2(XVertex_map *InstancePtr, u64 Data);
u64 XVertex_map_Get_mem_2(XVertex_map *InstancePtr);
void XVertex_map_Set_mem_5(XVertex_map *InstancePtr, u64 Data);
u64 XVertex_map_Get_mem_5(XVertex_map *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif

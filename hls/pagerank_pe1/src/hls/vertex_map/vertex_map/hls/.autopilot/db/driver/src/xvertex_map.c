// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xvertex_map.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVertex_map_CfgInitialize(XVertex_map *InstancePtr, XVertex_map_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVertex_map_Set_mem_0(XVertex_map *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_0_DATA, (u32)(Data));
    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_0_DATA + 4, (u32)(Data >> 32));
}

u64 XVertex_map_Get_mem_0(XVertex_map *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_0_DATA);
    Data += (u64)XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_0_DATA + 4) << 32;
    return Data;
}

void XVertex_map_Set_mem_1(XVertex_map *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_1_DATA, (u32)(Data));
    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_1_DATA + 4, (u32)(Data >> 32));
}

u64 XVertex_map_Get_mem_1(XVertex_map *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_1_DATA);
    Data += (u64)XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_1_DATA + 4) << 32;
    return Data;
}

void XVertex_map_Set_mem_2(XVertex_map *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_2_DATA, (u32)(Data));
    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_2_DATA + 4, (u32)(Data >> 32));
}

u64 XVertex_map_Get_mem_2(XVertex_map *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_2_DATA);
    Data += (u64)XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_2_DATA + 4) << 32;
    return Data;
}

void XVertex_map_Set_mem_5(XVertex_map *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_5_DATA, (u32)(Data));
    XVertex_map_WriteReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_5_DATA + 4, (u32)(Data >> 32));
}

u64 XVertex_map_Get_mem_5(XVertex_map *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_5_DATA);
    Data += (u64)XVertex_map_ReadReg(InstancePtr->Control_BaseAddress, XVERTEX_MAP_CONTROL_ADDR_MEM_5_DATA + 4) << 32;
    return Data;
}


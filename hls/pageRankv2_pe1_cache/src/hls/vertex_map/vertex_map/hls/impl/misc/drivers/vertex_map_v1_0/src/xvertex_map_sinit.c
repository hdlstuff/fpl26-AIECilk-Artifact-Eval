// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xvertex_map.h"

extern XVertex_map_Config XVertex_map_ConfigTable[];

#ifdef SDT
XVertex_map_Config *XVertex_map_LookupConfig(UINTPTR BaseAddress) {
	XVertex_map_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XVertex_map_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XVertex_map_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XVertex_map_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVertex_map_Initialize(XVertex_map *InstancePtr, UINTPTR BaseAddress) {
	XVertex_map_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVertex_map_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVertex_map_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XVertex_map_Config *XVertex_map_LookupConfig(u16 DeviceId) {
	XVertex_map_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVERTEX_MAP_NUM_INSTANCES; Index++) {
		if (XVertex_map_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVertex_map_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVertex_map_Initialize(XVertex_map *InstancePtr, u16 DeviceId) {
	XVertex_map_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVertex_map_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVertex_map_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif


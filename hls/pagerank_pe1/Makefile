
# Copyright (C) 2023 Advanced Micro Devices, Inc
#
# SPDX-License-Identifier: MIT

ECHO=@echo

.PHONY: help

# TARGET := hw_emu
TARGET := hw
PLATFORM := xilinx_vck5000_gen4x8_qdma_2_202220_1
PLATFORM_NAME := $(basename $(notdir $(PLATFORM)))

FINAL_XCLBIN := xclbins/pageRankHS_$(TARGET).xclbin
XSA_OBJ      := xclbins/pageRankHS_$(TARGET).xsa

# Discover all RTL kernel directories (./src/rtl/*)
RTL_DIRS := $(wildcard ./src/rtl/*)
# Generate XO targets for all kernels
RTL_XOS := $(patsubst %,xos/%-$(TARGET)-$(PLATFORM_NAME).xo,$(notdir $(RTL_DIRS)))

###########################################################
# clean
###########################################################
.PHONY: clean
clean:
	@rm -rf Work libadf.a xos *.xsa *.xclbin *.o *.so *.exe _x packaged xclbins .Xil *.log host sim *.jou Map_Report.csv sol.db


##########################################################################
# The below commands generate XO files from pre-existing RTL kernels.
# Usage:
#   make xos/pageRankHS-hw-xilinx_vck5000_gen4x8_qdma_2_202220_1.xo
#   make xos/DownSize_256_128-hw-xilinx_vck5000_gen4x8_qdma_2_202220_1.xo
#   make all_xos  (builds all discovered RTL kernels)
###########################################################################

# Build all XO files
.PHONY: all_xos
all_xos: $(RTL_XOS)

# Pattern rule for generating XO files from RTL directories
# Extracts kernel name from the target filename
VIVADO := $(XILINX_VIVADO)/bin/vivado
.SECONDEXPANSION:
xos/%-$(TARGET)-$(PLATFORM_NAME).xo: $$(wildcard ./src/rtl/%/*) scripts/gen_xo.tcl scripts/package_kernel.tcl scripts/xml/%.xml
	@mkdir -p xos
	@$(ECHO) "Generating XO file: $@ from $<"
	@$(VIVADO) -mode batch -source scripts/gen_xo.tcl -tclargs $@ $* $(TARGET) $(PLATFORM_NAME)

# List available kernels
.PHONY: list_kernels
list_kernels:
	@$(ECHO) "Available RTL kernels: $(RTL_KERNELS)"
	@$(ECHO) "XO targets: $(RTL_XOS)"

###########################################################################
# xclbin and xsa directory
###########################################################################

$(dir $(FINAL_XCLBIN)):
	mkdir -p $(dir $(FINAL_XCLBIN))

$(dir $(XSA_OBJ)):
	mkdir -p $(dir $(XSA_OBJ))


###########################################################################
# xclbin generation
###########################################################################
VPP := v++
VPPFLAGS := --target=$(TARGET) --platform=$(PLATFORM) --save-temps -g --kernel_frequency 300
# VPPFLAGS += --profile.data all:all:all

$(XSA_OBJ): $(RTL_XOS) $(dir $(XSA_OBJ))
	@mkdir -p xclbins
	@echo "Linking XSA: $(XSA_OBJ)"
	$(VPP) $(VPPFLAGS) -l -o $@ $(RTL_XOS) --config ./connectivity.cfg --vivado.synth.jobs 32 --vivado.impl.jobs 16 --linkhook.do_last vpl.impl.opt_design,scripts/clear_drc_errors.tcl


###########################################################
# package temp xclbin file
###########################################################
$(FINAL_XCLBIN): $(XSA_OBJ) $(dir $(FINAL_XCLBIN))
	v++ -p -t $(TARGET) -f $(PLATFORM) $(XSA_OBJ) -o $@ --package.boot_mode=ospi

###########################################################
# default target
###########################################################
.PHONY: cp_emulation
# if the target is hw_emu, copy the emulation data to the sim/behav_waveform/xsim directory for waveform viewing
cp_emulation:
	if [ "$(TARGET)" = "hw_emu" ]; then \
		mkdir -p ./sim/behav_waveform/xsim && \
		cp -r ./emulation_data/* ./sim/behav_waveform/xsim/; \
	fi

.PHONY: all
all:  $(FINAL_XCLBIN) cp_emulation

.PHONY: run
run: all
# 	enable_xilinx_2022.2
	if [ "$(TARGET)" = "hw_emu" ]; then \
	  export XCL_EMULATION_MODE=hw_emu; \
	else \
	  unset XCL_EMULATION_MODE; \
	fi; \
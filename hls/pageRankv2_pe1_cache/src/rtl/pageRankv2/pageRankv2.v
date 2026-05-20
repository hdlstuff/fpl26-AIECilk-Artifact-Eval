module vertex_map_1 (
	io_ap_rst_n,
	io_ap_clk,
	io_argOut_TREADY,
	io_argOut_TVALID,
	io_argOut_TDATA,
	io_taskIn_TREADY,
	io_taskIn_TVALID,
	io_taskIn_TDATA,
	io_s_axi_control_ARREADY,
	io_s_axi_control_ARVALID,
	io_s_axi_control_ARADDR,
	io_s_axi_control_RREADY,
	io_s_axi_control_RVALID,
	io_s_axi_control_RDATA,
	io_s_axi_control_RRESP,
	io_s_axi_control_AWREADY,
	io_s_axi_control_AWVALID,
	io_s_axi_control_AWADDR,
	io_s_axi_control_WREADY,
	io_s_axi_control_WVALID,
	io_s_axi_control_WDATA,
	io_s_axi_control_WSTRB,
	io_s_axi_control_BREADY,
	io_s_axi_control_BVALID,
	io_s_axi_control_BRESP,
	io_m_axi_gmem_ARREADY,
	io_m_axi_gmem_ARVALID,
	io_m_axi_gmem_ARID,
	io_m_axi_gmem_ARADDR,
	io_m_axi_gmem_ARLEN,
	io_m_axi_gmem_ARSIZE,
	io_m_axi_gmem_ARBURST,
	io_m_axi_gmem_ARLOCK,
	io_m_axi_gmem_ARCACHE,
	io_m_axi_gmem_ARPROT,
	io_m_axi_gmem_ARQOS,
	io_m_axi_gmem_ARREGION,
	io_m_axi_gmem_ARUSER,
	io_m_axi_gmem_RREADY,
	io_m_axi_gmem_RVALID,
	io_m_axi_gmem_RID,
	io_m_axi_gmem_RDATA,
	io_m_axi_gmem_RRESP,
	io_m_axi_gmem_RLAST,
	io_m_axi_gmem_AWREADY,
	io_m_axi_gmem_AWVALID,
	io_m_axi_gmem_AWID,
	io_m_axi_gmem_AWADDR,
	io_m_axi_gmem_AWLEN,
	io_m_axi_gmem_AWSIZE,
	io_m_axi_gmem_AWBURST,
	io_m_axi_gmem_AWLOCK,
	io_m_axi_gmem_AWCACHE,
	io_m_axi_gmem_AWPROT,
	io_m_axi_gmem_AWQOS,
	io_m_axi_gmem_AWREGION,
	io_m_axi_gmem_AWUSER,
	io_m_axi_gmem_WREADY,
	io_m_axi_gmem_WVALID,
	io_m_axi_gmem_WDATA,
	io_m_axi_gmem_WSTRB,
	io_m_axi_gmem_WLAST,
	io_m_axi_gmem_WUSER,
	io_m_axi_gmem_BREADY,
	io_m_axi_gmem_BVALID,
	io_m_axi_gmem_BID,
	io_m_axi_gmem_BRESP
);
	input io_ap_rst_n;
	input io_ap_clk;
	input io_argOut_TREADY;
	output wire io_argOut_TVALID;
	output wire [63:0] io_argOut_TDATA;
	output wire io_taskIn_TREADY;
	input io_taskIn_TVALID;
	input [511:0] io_taskIn_TDATA;
	output wire io_s_axi_control_ARREADY;
	input io_s_axi_control_ARVALID;
	input [3:0] io_s_axi_control_ARADDR;
	input io_s_axi_control_RREADY;
	output wire io_s_axi_control_RVALID;
	output wire [31:0] io_s_axi_control_RDATA;
	output wire [1:0] io_s_axi_control_RRESP;
	output wire io_s_axi_control_AWREADY;
	input io_s_axi_control_AWVALID;
	input [3:0] io_s_axi_control_AWADDR;
	output wire io_s_axi_control_WREADY;
	input io_s_axi_control_WVALID;
	input [31:0] io_s_axi_control_WDATA;
	input [3:0] io_s_axi_control_WSTRB;
	input io_s_axi_control_BREADY;
	output wire io_s_axi_control_BVALID;
	output wire [1:0] io_s_axi_control_BRESP;
	input io_m_axi_gmem_ARREADY;
	output wire io_m_axi_gmem_ARVALID;
	output wire [2:0] io_m_axi_gmem_ARID;
	output wire [63:0] io_m_axi_gmem_ARADDR;
	output wire [7:0] io_m_axi_gmem_ARLEN;
	output wire [2:0] io_m_axi_gmem_ARSIZE;
	output wire [1:0] io_m_axi_gmem_ARBURST;
	output wire io_m_axi_gmem_ARLOCK;
	output wire [3:0] io_m_axi_gmem_ARCACHE;
	output wire [2:0] io_m_axi_gmem_ARPROT;
	output wire [3:0] io_m_axi_gmem_ARQOS;
	output wire [3:0] io_m_axi_gmem_ARREGION;
	output wire io_m_axi_gmem_ARUSER;
	output wire io_m_axi_gmem_RREADY;
	input io_m_axi_gmem_RVALID;
	input [2:0] io_m_axi_gmem_RID;
	input [255:0] io_m_axi_gmem_RDATA;
	input [1:0] io_m_axi_gmem_RRESP;
	input io_m_axi_gmem_RLAST;
	input io_m_axi_gmem_AWREADY;
	output wire io_m_axi_gmem_AWVALID;
	output wire [2:0] io_m_axi_gmem_AWID;
	output wire [63:0] io_m_axi_gmem_AWADDR;
	output wire [7:0] io_m_axi_gmem_AWLEN;
	output wire [2:0] io_m_axi_gmem_AWSIZE;
	output wire [1:0] io_m_axi_gmem_AWBURST;
	output wire io_m_axi_gmem_AWLOCK;
	output wire [3:0] io_m_axi_gmem_AWCACHE;
	output wire [2:0] io_m_axi_gmem_AWPROT;
	output wire [3:0] io_m_axi_gmem_AWQOS;
	output wire [3:0] io_m_axi_gmem_AWREGION;
	output wire io_m_axi_gmem_AWUSER;
	input io_m_axi_gmem_WREADY;
	output wire io_m_axi_gmem_WVALID;
	output wire [255:0] io_m_axi_gmem_WDATA;
	output wire [31:0] io_m_axi_gmem_WSTRB;
	output wire io_m_axi_gmem_WLAST;
	output wire io_m_axi_gmem_WUSER;
	output wire io_m_axi_gmem_BREADY;
	input io_m_axi_gmem_BVALID;
	input [2:0] io_m_axi_gmem_BID;
	input [1:0] io_m_axi_gmem_BRESP;
	vertex_map pe(
		.ap_rst_n(io_ap_rst_n),
		.ap_clk(io_ap_clk),
		.argOut_TREADY(io_argOut_TREADY),
		.argOut_TVALID(io_argOut_TVALID),
		.argOut_TDATA(io_argOut_TDATA),
		.taskIn_TREADY(io_taskIn_TREADY),
		.taskIn_TVALID(io_taskIn_TVALID),
		.taskIn_TDATA(io_taskIn_TDATA),
		.s_axi_control_ARREADY(io_s_axi_control_ARREADY),
		.s_axi_control_ARVALID(io_s_axi_control_ARVALID),
		.s_axi_control_ARADDR(io_s_axi_control_ARADDR),
		.s_axi_control_RREADY(io_s_axi_control_RREADY),
		.s_axi_control_RVALID(io_s_axi_control_RVALID),
		.s_axi_control_RDATA(io_s_axi_control_RDATA),
		.s_axi_control_RRESP(io_s_axi_control_RRESP),
		.s_axi_control_AWREADY(io_s_axi_control_AWREADY),
		.s_axi_control_AWVALID(io_s_axi_control_AWVALID),
		.s_axi_control_AWADDR(io_s_axi_control_AWADDR),
		.s_axi_control_WREADY(io_s_axi_control_WREADY),
		.s_axi_control_WVALID(io_s_axi_control_WVALID),
		.s_axi_control_WDATA(io_s_axi_control_WDATA),
		.s_axi_control_WSTRB(io_s_axi_control_WSTRB),
		.s_axi_control_BREADY(io_s_axi_control_BREADY),
		.s_axi_control_BVALID(io_s_axi_control_BVALID),
		.s_axi_control_BRESP(io_s_axi_control_BRESP),
		.m_axi_gmem_ARREADY(io_m_axi_gmem_ARREADY),
		.m_axi_gmem_ARVALID(io_m_axi_gmem_ARVALID),
		.m_axi_gmem_ARID(io_m_axi_gmem_ARID),
		.m_axi_gmem_ARADDR(io_m_axi_gmem_ARADDR),
		.m_axi_gmem_ARLEN(io_m_axi_gmem_ARLEN),
		.m_axi_gmem_ARSIZE(io_m_axi_gmem_ARSIZE),
		.m_axi_gmem_ARBURST(io_m_axi_gmem_ARBURST),
		.m_axi_gmem_ARLOCK(io_m_axi_gmem_ARLOCK),
		.m_axi_gmem_ARCACHE(io_m_axi_gmem_ARCACHE),
		.m_axi_gmem_ARPROT(io_m_axi_gmem_ARPROT),
		.m_axi_gmem_ARQOS(io_m_axi_gmem_ARQOS),
		.m_axi_gmem_ARREGION(io_m_axi_gmem_ARREGION),
		.m_axi_gmem_ARUSER(io_m_axi_gmem_ARUSER),
		.m_axi_gmem_RREADY(io_m_axi_gmem_RREADY),
		.m_axi_gmem_RVALID(io_m_axi_gmem_RVALID),
		.m_axi_gmem_RID(io_m_axi_gmem_RID),
		.m_axi_gmem_RDATA(io_m_axi_gmem_RDATA),
		.m_axi_gmem_RRESP(io_m_axi_gmem_RRESP),
		.m_axi_gmem_RLAST(io_m_axi_gmem_RLAST),
		.m_axi_gmem_RUSER(1'h0),
		.m_axi_gmem_AWREADY(io_m_axi_gmem_AWREADY),
		.m_axi_gmem_AWVALID(io_m_axi_gmem_AWVALID),
		.m_axi_gmem_AWID(io_m_axi_gmem_AWID),
		.m_axi_gmem_AWADDR(io_m_axi_gmem_AWADDR),
		.m_axi_gmem_AWLEN(io_m_axi_gmem_AWLEN),
		.m_axi_gmem_AWSIZE(io_m_axi_gmem_AWSIZE),
		.m_axi_gmem_AWBURST(io_m_axi_gmem_AWBURST),
		.m_axi_gmem_AWLOCK(io_m_axi_gmem_AWLOCK),
		.m_axi_gmem_AWCACHE(io_m_axi_gmem_AWCACHE),
		.m_axi_gmem_AWPROT(io_m_axi_gmem_AWPROT),
		.m_axi_gmem_AWQOS(io_m_axi_gmem_AWQOS),
		.m_axi_gmem_AWREGION(io_m_axi_gmem_AWREGION),
		.m_axi_gmem_AWUSER(io_m_axi_gmem_AWUSER),
		.m_axi_gmem_WREADY(io_m_axi_gmem_WREADY),
		.m_axi_gmem_WVALID(io_m_axi_gmem_WVALID),
		.m_axi_gmem_WDATA(io_m_axi_gmem_WDATA),
		.m_axi_gmem_WSTRB(io_m_axi_gmem_WSTRB),
		.m_axi_gmem_WLAST(io_m_axi_gmem_WLAST),
		.m_axi_gmem_WUSER(io_m_axi_gmem_WUSER),
		.m_axi_gmem_BREADY(io_m_axi_gmem_BREADY),
		.m_axi_gmem_BVALID(io_m_axi_gmem_BVALID),
		.m_axi_gmem_BID(io_m_axi_gmem_BID),
		.m_axi_gmem_BRESP(io_m_axi_gmem_BRESP),
		.m_axi_gmem_BUSER(1'h0)
	);
endmodule
module pageRankReduce_1 (
	io_ap_rst_n,
	io_ap_clk,
	io_argOut_TREADY,
	io_argOut_TVALID,
	io_argOut_TDATA,
	io_taskIn_TREADY,
	io_taskIn_TVALID,
	io_taskIn_TDATA,
	io_taskOutGlobal_TREADY,
	io_taskOutGlobal_TVALID,
	io_taskOutGlobal_TDATA
);
	input io_ap_rst_n;
	input io_ap_clk;
	input io_argOut_TREADY;
	output wire io_argOut_TVALID;
	output wire [63:0] io_argOut_TDATA;
	output wire io_taskIn_TREADY;
	input io_taskIn_TVALID;
	input [511:0] io_taskIn_TDATA;
	input io_taskOutGlobal_TREADY;
	output wire io_taskOutGlobal_TVALID;
	output wire [511:0] io_taskOutGlobal_TDATA;
	pageRankReduce pe(
		.ap_rst_n(io_ap_rst_n),
		.ap_clk(io_ap_clk),
		.ap_ready(),
		.ap_idle(),
		.ap_done(),
		.ap_start(1'h1),
		.argOut_TREADY(io_argOut_TREADY),
		.argOut_TVALID(io_argOut_TVALID),
		.argOut_TDATA(io_argOut_TDATA),
		.taskIn_TREADY(io_taskIn_TREADY),
		.taskIn_TVALID(io_taskIn_TVALID),
		.taskIn_TDATA(io_taskIn_TDATA),
		.taskOutGlobal_TREADY(io_taskOutGlobal_TREADY),
		.taskOutGlobal_TVALID(io_taskOutGlobal_TVALID),
		.taskOutGlobal_TDATA(io_taskOutGlobal_TDATA)
	);
endmodule
module ram_2x9 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [8:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [8:0] W0_data;
	reg [8:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 9'bxxxxxxxxx);
endmodule
module Queue2_AddressChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_prot,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_prot
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [5:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_prot;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [5:0] io_deq_bits_addr;
	output wire [2:0] io_deq_bits_prot;
	wire [8:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x9 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_prot, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[5:0];
	assign io_deq_bits_prot = _ram_ext_R0_data[8:6];
endmodule
module ram_2x66 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [65:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [65:0] W0_data;
	reg [65:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 66'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_enq_bits_resp,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_resp
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	wire [65:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x66 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_resp, io_enq_bits_data})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_data = _ram_ext_R0_data[63:0];
	assign io_deq_bits_resp = _ram_ext_R0_data[65:64];
endmodule
module ram_2x72 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [71:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [71:0] W0_data;
	reg [71:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 72'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_WriteDataChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_enq_bits_strb,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_strb
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_data;
	input [7:0] io_enq_bits_strb;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_data;
	output wire [7:0] io_deq_bits_strb;
	wire [71:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x72 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_strb, io_enq_bits_data})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_data = _ram_ext_R0_data[63:0];
	assign io_deq_bits_strb = _ram_ext_R0_data[71:64];
endmodule
module ram_2x2 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [1:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [1:0] W0_data;
	reg [1:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 2'bxx);
endmodule
module Queue2_WriteResponseChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_resp,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_resp
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_resp;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_resp;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x2 ram_resp_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits_resp),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits_resp)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module Queue1_AddressChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_prot,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [5:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_prot;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [5:0] io_deq_bits_addr;
	reg [8:0] ram;
	reg full;
	always @(posedge clock) begin : sv2v_autoblock_1
		reg do_enq;
		do_enq = ~full & io_enq_valid;
		if (do_enq)
			ram <= {io_enq_bits_prot, io_enq_bits_addr};
		if (reset)
			full <= 1'h0;
		else if (~(do_enq == (io_deq_ready & full)))
			full <= do_enq;
	end
	assign io_enq_ready = ~full;
	assign io_deq_valid = full;
	assign io_deq_bits_addr = ram[5:0];
endmodule
module Queue1_ReadDataChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_resp
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_data;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	reg [65:0] ram;
	reg full;
	always @(posedge clock) begin : sv2v_autoblock_1
		reg do_enq;
		do_enq = ~full & io_enq_valid;
		if (do_enq)
			ram <= {2'h0, io_enq_bits_data};
		if (reset)
			full <= 1'h0;
		else if (~(do_enq == (io_deq_ready & full)))
			full <= do_enq;
	end
	assign io_enq_ready = ~full;
	assign io_deq_valid = full;
	assign io_deq_bits_data = ram[63:0];
	assign io_deq_bits_resp = ram[65:64];
endmodule
module Queue1_WriteDataChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_enq_bits_strb,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_strb
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_data;
	input [7:0] io_enq_bits_strb;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_data;
	output wire [7:0] io_deq_bits_strb;
	reg [71:0] ram;
	reg full;
	always @(posedge clock) begin : sv2v_autoblock_1
		reg do_enq;
		do_enq = ~full & io_enq_valid;
		if (do_enq)
			ram <= {io_enq_bits_strb, io_enq_bits_data};
		if (reset)
			full <= 1'h0;
		else if (~(do_enq == (io_deq_ready & full)))
			full <= do_enq;
	end
	assign io_enq_ready = ~full;
	assign io_deq_valid = full;
	assign io_deq_bits_data = ram[63:0];
	assign io_deq_bits_strb = ram[71:64];
endmodule
module Queue1_WriteResponseChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_deq_ready,
	io_deq_valid
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_deq_ready;
	output wire io_deq_valid;
	reg full;
	always @(posedge clock)
		if (reset)
			full <= 1'h0;
		else begin : sv2v_autoblock_1
			reg do_enq;
			do_enq = ~full & io_enq_valid;
			if (~(do_enq == (io_deq_ready & full)))
				full <= do_enq;
		end
	assign io_enq_ready = ~full;
	assign io_deq_valid = full;
endmodule
module ram_16x512 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [3:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [511:0] R0_data;
	input [3:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [511:0] W0_data;
	reg [511:0] Memory [0:15];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 512'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue16_UInt512 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits,
	io_count
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [511:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [511:0] io_deq_bits;
	output wire [4:0] io_count;
	reg [3:0] enq_ptr_value;
	reg [3:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 4'h0;
			deq_ptr_value <= 4'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 4'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 4'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_16x512 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_count = {maybe_full & ptr_match, enq_ptr_value - deq_ptr_value};
endmodule
module ram_2x512 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [511:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [511:0] W0_data;
	reg [511:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 512'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_UInt512 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [511:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [511:0] io_deq_bits;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_deq == do_enq))
				maybe_full <= do_enq;
		end
	ram_2x512 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module WriteTaskToNetwork (
	clock,
	reset,
	io_connNetwork_ctrl_serveStealReq_valid,
	io_connNetwork_ctrl_serveStealReq_ready,
	io_connNetwork_data_qOutTask_ready,
	io_connNetwork_data_qOutTask_valid,
	io_connNetwork_data_qOutTask_bits,
	io_s_axis_task_ready,
	io_s_axis_task_valid,
	io_s_axis_task_bits,
	io_startToken_valid,
	io_numTasksToStealOrServe
);
	input clock;
	input reset;
	output wire io_connNetwork_ctrl_serveStealReq_valid;
	input io_connNetwork_ctrl_serveStealReq_ready;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [511:0] io_connNetwork_data_qOutTask_bits;
	output wire io_s_axis_task_ready;
	input io_s_axis_task_valid;
	input [511:0] io_s_axis_task_bits;
	input io_startToken_valid;
	input [31:0] io_numTasksToStealOrServe;
	reg [31:0] numberOftasksToStealOrServeReg;
	reg startTokenReceived;
	reg [31:0] allowCount;
	wire io_connNetwork_ctrl_serveStealReq_valid_0 = startTokenReceived & (allowCount < numberOftasksToStealOrServeReg);
	reg [31:0] tasksWritten;
	wire _GEN = (startTokenReceived & (tasksWritten < allowCount)) & io_s_axis_task_valid;
	wire io_connNetwork_data_qOutTask_valid_0 = _GEN & io_s_axis_task_valid;
	reg [31:0] writeTaskCount;
	reg [31:0] cyclesCounter;
	wire _GEN_0 = cyclesCounter == 32'h000186a0;
	always @(posedge clock)
		if ((1 & _GEN_0) & ~reset) begin
			$fwrite(32'h80000002, "_______\n");
			$fwrite(32'h80000002, "FPGA ID: %d, Tasks written to local stealing network: %d\n", 64'h0000000000000000, writeTaskCount);
			$fwrite(32'h80000002, "_______\n");
		end
	always @(posedge clock)
		if (reset) begin
			numberOftasksToStealOrServeReg <= 32'h00000000;
			startTokenReceived <= 1'h0;
			allowCount <= 32'h00000000;
			tasksWritten <= 32'h00000000;
			writeTaskCount <= 32'h00000000;
			cyclesCounter <= 32'h00000000;
		end
		else begin : sv2v_autoblock_1
			reg _GEN_1;
			reg _GEN_2;
			reg _GEN_3;
			_GEN_1 = ~startTokenReceived & io_startToken_valid;
			_GEN_3 = startTokenReceived & (tasksWritten == numberOftasksToStealOrServeReg);
			_GEN_2 = io_connNetwork_data_qOutTask_ready & io_connNetwork_data_qOutTask_valid_0;
			if (_GEN_1)
				numberOftasksToStealOrServeReg <= io_numTasksToStealOrServe;
			startTokenReceived <= ~_GEN_3 & (_GEN_1 | startTokenReceived);
			if (_GEN_3) begin
				allowCount <= 32'h00000000;
				tasksWritten <= 32'h00000000;
			end
			else begin
				if (io_connNetwork_ctrl_serveStealReq_valid_0 & io_connNetwork_ctrl_serveStealReq_ready)
					allowCount <= allowCount + 32'h00000001;
				if (_GEN & _GEN_2)
					tasksWritten <= tasksWritten + 32'h00000001;
			end
			if (_GEN_2)
				writeTaskCount <= writeTaskCount + 32'h00000001;
			if (_GEN_0)
				cyclesCounter <= 32'h00000000;
			else
				cyclesCounter <= cyclesCounter + 32'h00000001;
		end
	assign io_connNetwork_ctrl_serveStealReq_valid = io_connNetwork_ctrl_serveStealReq_valid_0;
	assign io_connNetwork_data_qOutTask_valid = io_connNetwork_data_qOutTask_valid_0;
	assign io_connNetwork_data_qOutTask_bits = (_GEN ? io_s_axis_task_bits : 512'h0);
	assign io_s_axis_task_ready = _GEN & io_connNetwork_data_qOutTask_ready;
endmodule
module elasticDemux (
	io_source_ready,
	io_source_valid,
	io_source_bits,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [511:0] io_source_bits;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [511:0] io_sinks_0_bits;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [511:0] io_sinks_1_bits;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits = io_source_bits;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits = io_source_bits;
	assign io_select_ready = fire;
endmodule
module CircularQueueRegisterInc (
	io_currValue,
	io_maxLen,
	io_nextvalue,
	io_incrValue
);
	input [63:0] io_currValue;
	input [63:0] io_maxLen;
	output wire [63:0] io_nextvalue;
	input [63:0] io_incrValue;
	wire [63:0] _io_nextvalue_T_2 = io_currValue + io_incrValue;
	assign io_nextvalue = (_io_nextvalue_T_2 < io_maxLen ? _io_nextvalue_T_2 : _io_nextvalue_T_2 - io_maxLen);
endmodule
module SpawnerServer (
	clock,
	reset,
	io_m_axi_ARREADY,
	io_m_axi_ARVALID,
	io_m_axi_ARADDR,
	io_m_axi_ARLEN,
	io_m_axi_RREADY,
	io_m_axi_RVALID,
	io_m_axi_RDATA,
	io_m_axi_RLAST,
	io_m_axi_AWREADY,
	io_m_axi_AWVALID,
	io_m_axi_AWADDR,
	io_m_axi_AWLEN,
	io_m_axi_WREADY,
	io_m_axi_WVALID,
	io_m_axi_WDATA,
	io_m_axi_WLAST,
	io_m_axi_BREADY,
	io_m_axi_BVALID,
	io_connNetwork_slave_data_availableTask_ready,
	io_connNetwork_slave_data_availableTask_valid,
	io_connNetwork_slave_data_availableTask_bits,
	io_connNetwork_master_ctrl_serveStealReq_valid,
	io_connNetwork_master_ctrl_serveStealReq_ready,
	io_connNetwork_master_data_qOutTask_ready,
	io_connNetwork_master_data_qOutTask_valid,
	io_connNetwork_master_data_qOutTask_bits,
	io_axi_mgmt_ar_ready,
	io_axi_mgmt_ar_valid,
	io_axi_mgmt_ar_bits_addr,
	io_axi_mgmt_ar_bits_prot,
	io_axi_mgmt_r_ready,
	io_axi_mgmt_r_valid,
	io_axi_mgmt_r_bits_data,
	io_axi_mgmt_r_bits_resp,
	io_axi_mgmt_aw_ready,
	io_axi_mgmt_aw_valid,
	io_axi_mgmt_aw_bits_addr,
	io_axi_mgmt_aw_bits_prot,
	io_axi_mgmt_w_ready,
	io_axi_mgmt_w_valid,
	io_axi_mgmt_w_bits_data,
	io_axi_mgmt_w_bits_strb,
	io_axi_mgmt_b_ready,
	io_axi_mgmt_b_valid,
	io_axi_mgmt_b_bits_resp
);
	input clock;
	input reset;
	input io_m_axi_ARREADY;
	output wire io_m_axi_ARVALID;
	output wire [63:0] io_m_axi_ARADDR;
	output wire [7:0] io_m_axi_ARLEN;
	output wire io_m_axi_RREADY;
	input io_m_axi_RVALID;
	input [511:0] io_m_axi_RDATA;
	input io_m_axi_RLAST;
	input io_m_axi_AWREADY;
	output wire io_m_axi_AWVALID;
	output wire [63:0] io_m_axi_AWADDR;
	output wire [7:0] io_m_axi_AWLEN;
	input io_m_axi_WREADY;
	output wire io_m_axi_WVALID;
	output wire [511:0] io_m_axi_WDATA;
	output wire io_m_axi_WLAST;
	output wire io_m_axi_BREADY;
	input io_m_axi_BVALID;
	output wire io_connNetwork_slave_data_availableTask_ready;
	input io_connNetwork_slave_data_availableTask_valid;
	input [511:0] io_connNetwork_slave_data_availableTask_bits;
	output wire io_connNetwork_master_ctrl_serveStealReq_valid;
	input io_connNetwork_master_ctrl_serveStealReq_ready;
	input io_connNetwork_master_data_qOutTask_ready;
	output wire io_connNetwork_master_data_qOutTask_valid;
	output wire [511:0] io_connNetwork_master_data_qOutTask_bits;
	output wire io_axi_mgmt_ar_ready;
	input io_axi_mgmt_ar_valid;
	input [5:0] io_axi_mgmt_ar_bits_addr;
	input [2:0] io_axi_mgmt_ar_bits_prot;
	input io_axi_mgmt_r_ready;
	output wire io_axi_mgmt_r_valid;
	output wire [63:0] io_axi_mgmt_r_bits_data;
	output wire [1:0] io_axi_mgmt_r_bits_resp;
	output wire io_axi_mgmt_aw_ready;
	input io_axi_mgmt_aw_valid;
	input [5:0] io_axi_mgmt_aw_bits_addr;
	input [2:0] io_axi_mgmt_aw_bits_prot;
	output wire io_axi_mgmt_w_ready;
	input io_axi_mgmt_w_valid;
	input [63:0] io_axi_mgmt_w_bits_data;
	input [7:0] io_axi_mgmt_w_bits_strb;
	input io_axi_mgmt_b_ready;
	output wire io_axi_mgmt_b_valid;
	output wire [1:0] io_axi_mgmt_b_bits_resp;
	wire [63:0] _fifoHeadReg_c_io_nextvalue;
	wire [63:0] _fifoTailReg_c_io_nextvalue;
	wire _demux_io_source_ready;
	wire _demux_io_sinks_0_valid;
	wire [511:0] _demux_io_sinks_0_bits;
	wire _demux_io_sinks_1_valid;
	wire [511:0] _demux_io_sinks_1_bits;
	wire _demux_io_select_ready;
	wire _WriteTaskToNetwork_io_connNetwork_data_qOutTask_valid;
	wire _WriteTaskToNetwork_io_s_axis_task_ready;
	wire _sinkBuffer_io_enq_ready;
	wire _sinkBuffer_io_deq_valid;
	wire [511:0] _sinkBuffer_io_deq_bits;
	wire _queue_write_io_enq_ready;
	wire _queue_write_io_deq_valid;
	wire [511:0] _queue_write_io_deq_bits;
	wire [4:0] _queue_write_io_count;
	wire _queue_read_io_enq_ready;
	wire _queue_read_io_deq_valid;
	wire [511:0] _queue_read_io_deq_bits;
	wire [4:0] _queue_read_io_count;
	wire _wrRespQueue__io_enq_ready;
	wire _wrRespQueue__io_deq_valid;
	wire _wrReqData__deq_q_io_enq_ready;
	wire _wrReqData__deq_q_io_deq_valid;
	wire [63:0] _wrReqData__deq_q_io_deq_bits_data;
	wire [7:0] _wrReqData__deq_q_io_deq_bits_strb;
	wire _wrReq__deq_q_io_enq_ready;
	wire _wrReq__deq_q_io_deq_valid;
	wire [5:0] _wrReq__deq_q_io_deq_bits_addr;
	wire _rdRespQueue__io_enq_ready;
	wire _rdRespQueue__io_deq_valid;
	wire [63:0] _rdRespQueue__io_deq_bits_data;
	wire [1:0] _rdRespQueue__io_deq_bits_resp;
	wire _rdReq__deq_q_io_enq_ready;
	wire _rdReq__deq_q_io_deq_valid;
	wire [5:0] _rdReq__deq_q_io_deq_bits_addr;
	wire _s_axil__sinkBuffer_1_io_enq_ready;
	wire _s_axil__sourceBuffer_2_io_deq_valid;
	wire [63:0] _s_axil__sourceBuffer_2_io_deq_bits_data;
	wire [7:0] _s_axil__sourceBuffer_2_io_deq_bits_strb;
	wire _s_axil__sourceBuffer_1_io_deq_valid;
	wire [5:0] _s_axil__sourceBuffer_1_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_1_io_deq_bits_prot;
	wire _s_axil__sinkBuffer_io_enq_ready;
	wire _s_axil__sourceBuffer_io_deq_valid;
	wire [5:0] _s_axil__sourceBuffer_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_io_deq_bits_prot;
	wire rdReq = _rdReq__deq_q_io_deq_valid & _rdRespQueue__io_enq_ready;
	wire wrReq = (_wrReq__deq_q_io_deq_valid & _wrReqData__deq_q_io_deq_valid) & _wrRespQueue__io_enq_ready;
	reg queue_is_reading;
	reg eagerFork_regs_0;
	reg eagerFork_regs_1;
	wire eagerFork_view__ready_qual1_0 = _demux_io_source_ready | eagerFork_regs_0;
	wire eagerFork_view__ready_qual1_1 = _demux_io_select_ready | eagerFork_regs_1;
	wire s_axis_slave_TREADY = eagerFork_view__ready_qual1_0 & eagerFork_view__ready_qual1_1;
	reg [63:0] rPause;
	reg [63:0] rAddr;
	reg [63:0] maxLength;
	reg [63:0] fifoTailReg;
	reg [63:0] fifoHeadReg;
	reg [63:0] currLen;
	reg [63:0] procInterrupt;
	reg writeAddressDone;
	reg writeDataDone;
	reg [63:0] writeTasksCounterWriting;
	reg [63:0] writeTasksCounterBvalid;
	reg readAddressDone;
	wire _GEN = maxLength < (currLen + 64'h0000000000000010);
	wire _GEN_0 = rPause == 64'h0000000000000000;
	wire _GEN_1 = (_queue_write_io_deq_valid & ~writeAddressDone) & ~_GEN;
	wire _GEN_2 = _GEN_0 & _GEN_1;
	wire _GEN_3 = writeAddressDone & ~writeDataDone;
	wire _GEN_4 = _GEN_0 & _GEN_3;
	wire _view__w_bits_last_T = writeTasksCounterWriting == 64'h0000000000000001;
	wire _GEN_5 = (writeAddressDone & writeDataDone) & ~readAddressDone;
	wire _GEN_6 = (((_queue_read_io_count == 5'h00) & |currLen) & ~_sinkBuffer_io_deq_valid) & ~readAddressDone;
	wire _GEN_7 = _GEN_0 & _GEN_6;
	wire _GEN_8 = _GEN_0 & readAddressDone;
	reg [63:0] fireInCounter;
	reg [63:0] fireOutCounter;
	reg [63:0] cyclesCounter;
	wire _GEN_9 = cyclesCounter == 64'h00000000000186a0;
	wire [511:0] _GEN_10 = {64'hffffffffffffffff, currLen, procInterrupt, fifoHeadReg, fifoTailReg, maxLength, rAddr, rPause};
	always @(posedge clock)
		if ((1 & _GEN_9) & ~reset) begin
			$fwrite(32'h80000002, "_______\n");
			$fwrite(32'h80000002, "FPGA ID: %d, fireInCounter: %d, fireOutCounter: %d\n", 1'h0, fireInCounter, fireOutCounter);
			$fwrite(32'h80000002, "_______\n");
		end
	always @(posedge clock)
		if (reset) begin
			queue_is_reading <= 1'h0;
			eagerFork_regs_0 <= 1'h0;
			eagerFork_regs_1 <= 1'h0;
			rPause <= 64'hffffffffffffffff;
			rAddr <= 64'h0000000000000000;
			maxLength <= 64'h0000000000000000;
			fifoTailReg <= 64'h0000000000000000;
			fifoHeadReg <= 64'h0000000000000000;
			currLen <= 64'h0000000000000000;
			procInterrupt <= 64'h0000000000000000;
			writeAddressDone <= 1'h0;
			writeDataDone <= 1'h0;
			writeTasksCounterWriting <= 64'h0000000000000000;
			writeTasksCounterBvalid <= 64'h0000000000000000;
			readAddressDone <= 1'h0;
			fireInCounter <= 64'h0000000000000000;
			fireOutCounter <= 64'h0000000000000000;
			cyclesCounter <= 64'h0000000000000000;
		end
		else begin : sv2v_autoblock_1
			reg [63:0] _GEN_11;
			reg _GEN_12;
			reg _GEN_13;
			reg _GEN_14;
			_GEN_11 = {59'h000000000000000, _queue_write_io_count};
			_GEN_12 = _GEN_5 & io_m_axi_BVALID;
			_GEN_13 = io_m_axi_RVALID & _queue_read_io_enq_ready;
			_GEN_14 = readAddressDone & _GEN_13;
			if (_GEN_0) begin : sv2v_autoblock_2
				reg _GEN_15;
				reg _GEN_16;
				reg _GEN_17;
				_GEN_15 = io_m_axi_WREADY & _queue_write_io_deq_valid;
				_GEN_16 = _GEN_6 & io_m_axi_ARREADY;
				_GEN_17 = (readAddressDone & _GEN_13) & io_m_axi_RLAST;
				queue_is_reading <= ~_GEN_17 & (_GEN_16 | queue_is_reading);
				writeAddressDone <= ~_GEN_12 & ((_GEN_1 & io_m_axi_AWREADY) | writeAddressDone);
				writeDataDone <= ~_GEN_12 & (((_GEN_3 & _GEN_15) & _view__w_bits_last_T) | writeDataDone);
				if (_GEN_3 & _GEN_15)
					writeTasksCounterWriting <= writeTasksCounterWriting - 64'h0000000000000001;
				else if (_GEN_1)
					writeTasksCounterWriting <= _GEN_11;
				readAddressDone <= ~_GEN_17 & (_GEN_16 | readAddressDone);
			end
			eagerFork_regs_0 <= (eagerFork_view__ready_qual1_0 & _sinkBuffer_io_deq_valid) & ~s_axis_slave_TREADY;
			eagerFork_regs_1 <= (eagerFork_view__ready_qual1_1 & _sinkBuffer_io_deq_valid) & ~s_axis_slave_TREADY;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h0))
				rPause <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : rPause[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : rPause[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : rPause[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : rPause[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : rPause[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : rPause[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : rPause[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : rPause[7:0])};
			else if (_GEN)
				rPause <= 64'hffffffffffffffff;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h1))
				rAddr <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : rAddr[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : rAddr[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : rAddr[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : rAddr[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : rAddr[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : rAddr[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : rAddr[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : rAddr[7:0])};
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h2))
				maxLength <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : maxLength[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : maxLength[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : maxLength[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : maxLength[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : maxLength[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : maxLength[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : maxLength[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : maxLength[7:0])};
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h3))
				fifoTailReg <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : fifoTailReg[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : fifoTailReg[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : fifoTailReg[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : fifoTailReg[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : fifoTailReg[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : fifoTailReg[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : fifoTailReg[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : fifoTailReg[7:0])};
			else if (_GEN_0 & _GEN_12)
				fifoTailReg <= _fifoTailReg_c_io_nextvalue;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h4))
				fifoHeadReg <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : fifoHeadReg[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : fifoHeadReg[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : fifoHeadReg[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : fifoHeadReg[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : fifoHeadReg[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : fifoHeadReg[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : fifoHeadReg[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : fifoHeadReg[7:0])};
			else if (_GEN_0 & _GEN_14)
				fifoHeadReg <= _fifoHeadReg_c_io_nextvalue;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h6))
				currLen <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : currLen[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : currLen[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : currLen[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : currLen[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : currLen[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : currLen[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : currLen[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : currLen[7:0])};
			else if (_GEN_0) begin
				if (_GEN_14)
					currLen <= currLen - 64'h0000000000000001;
				else if (_GEN_12)
					currLen <= currLen + writeTasksCounterBvalid;
			end
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h5))
				procInterrupt <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : procInterrupt[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : procInterrupt[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : procInterrupt[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : procInterrupt[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : procInterrupt[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : procInterrupt[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : procInterrupt[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : procInterrupt[7:0])};
			if (_GEN_2)
				writeTasksCounterBvalid <= _GEN_11;
			if (_sinkBuffer_io_enq_ready & io_connNetwork_slave_data_availableTask_valid)
				fireInCounter <= fireInCounter + 64'h0000000000000001;
			if (io_connNetwork_master_data_qOutTask_ready & _WriteTaskToNetwork_io_connNetwork_data_qOutTask_valid)
				fireOutCounter <= fireOutCounter + 64'h0000000000000001;
			if (_GEN_9)
				cyclesCounter <= 64'h0000000000000000;
			else
				cyclesCounter <= cyclesCounter + 64'h0000000000000001;
		end
	Queue2_AddressChannel s_axil__sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_axi_mgmt_ar_ready),
		.io_enq_valid(io_axi_mgmt_ar_valid),
		.io_enq_bits_addr(io_axi_mgmt_ar_bits_addr),
		.io_enq_bits_prot(io_axi_mgmt_ar_bits_prot),
		.io_deq_ready(_rdReq__deq_q_io_enq_ready),
		.io_deq_valid(_s_axil__sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_s_axil__sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_prot(_s_axil__sourceBuffer_io_deq_bits_prot)
	);
	Queue2_ReadDataChannel s_axil__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_s_axil__sinkBuffer_io_enq_ready),
		.io_enq_valid(_rdRespQueue__io_deq_valid),
		.io_enq_bits_data(_rdRespQueue__io_deq_bits_data),
		.io_enq_bits_resp(_rdRespQueue__io_deq_bits_resp),
		.io_deq_ready(io_axi_mgmt_r_ready),
		.io_deq_valid(io_axi_mgmt_r_valid),
		.io_deq_bits_data(io_axi_mgmt_r_bits_data),
		.io_deq_bits_resp(io_axi_mgmt_r_bits_resp)
	);
	Queue2_AddressChannel s_axil__sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_axi_mgmt_aw_ready),
		.io_enq_valid(io_axi_mgmt_aw_valid),
		.io_enq_bits_addr(io_axi_mgmt_aw_bits_addr),
		.io_enq_bits_prot(io_axi_mgmt_aw_bits_prot),
		.io_deq_ready(_wrReq__deq_q_io_enq_ready),
		.io_deq_valid(_s_axil__sourceBuffer_1_io_deq_valid),
		.io_deq_bits_addr(_s_axil__sourceBuffer_1_io_deq_bits_addr),
		.io_deq_bits_prot(_s_axil__sourceBuffer_1_io_deq_bits_prot)
	);
	Queue2_WriteDataChannel s_axil__sourceBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_axi_mgmt_w_ready),
		.io_enq_valid(io_axi_mgmt_w_valid),
		.io_enq_bits_data(io_axi_mgmt_w_bits_data),
		.io_enq_bits_strb(io_axi_mgmt_w_bits_strb),
		.io_deq_ready(_wrReqData__deq_q_io_enq_ready),
		.io_deq_valid(_s_axil__sourceBuffer_2_io_deq_valid),
		.io_deq_bits_data(_s_axil__sourceBuffer_2_io_deq_bits_data),
		.io_deq_bits_strb(_s_axil__sourceBuffer_2_io_deq_bits_strb)
	);
	Queue2_WriteResponseChannel s_axil__sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_s_axil__sinkBuffer_1_io_enq_ready),
		.io_enq_valid(_wrRespQueue__io_deq_valid),
		.io_enq_bits_resp(2'h0),
		.io_deq_ready(io_axi_mgmt_b_ready),
		.io_deq_valid(io_axi_mgmt_b_valid),
		.io_deq_bits_resp(io_axi_mgmt_b_bits_resp)
	);
	Queue1_AddressChannel rdReq__deq_q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_rdReq__deq_q_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_io_deq_valid),
		.io_enq_bits_addr(_s_axil__sourceBuffer_io_deq_bits_addr),
		.io_enq_bits_prot(_s_axil__sourceBuffer_io_deq_bits_prot),
		.io_deq_ready(rdReq),
		.io_deq_valid(_rdReq__deq_q_io_deq_valid),
		.io_deq_bits_addr(_rdReq__deq_q_io_deq_bits_addr)
	);
	Queue1_ReadDataChannel rdRespQueue_(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_rdRespQueue__io_enq_ready),
		.io_enq_valid(rdReq),
		.io_enq_bits_data(_GEN_10[_rdReq__deq_q_io_deq_bits_addr[5:3] * 64+:64]),
		.io_deq_ready(_s_axil__sinkBuffer_io_enq_ready),
		.io_deq_valid(_rdRespQueue__io_deq_valid),
		.io_deq_bits_data(_rdRespQueue__io_deq_bits_data),
		.io_deq_bits_resp(_rdRespQueue__io_deq_bits_resp)
	);
	Queue1_AddressChannel wrReq__deq_q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_wrReq__deq_q_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_1_io_deq_valid),
		.io_enq_bits_addr(_s_axil__sourceBuffer_1_io_deq_bits_addr),
		.io_enq_bits_prot(_s_axil__sourceBuffer_1_io_deq_bits_prot),
		.io_deq_ready(wrReq),
		.io_deq_valid(_wrReq__deq_q_io_deq_valid),
		.io_deq_bits_addr(_wrReq__deq_q_io_deq_bits_addr)
	);
	Queue1_WriteDataChannel wrReqData__deq_q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_wrReqData__deq_q_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_2_io_deq_valid),
		.io_enq_bits_data(_s_axil__sourceBuffer_2_io_deq_bits_data),
		.io_enq_bits_strb(_s_axil__sourceBuffer_2_io_deq_bits_strb),
		.io_deq_ready(wrReq),
		.io_deq_valid(_wrReqData__deq_q_io_deq_valid),
		.io_deq_bits_data(_wrReqData__deq_q_io_deq_bits_data),
		.io_deq_bits_strb(_wrReqData__deq_q_io_deq_bits_strb)
	);
	Queue1_WriteResponseChannel wrRespQueue_(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_wrRespQueue__io_enq_ready),
		.io_enq_valid(wrReq),
		.io_deq_ready(_s_axil__sinkBuffer_1_io_enq_ready),
		.io_deq_valid(_wrRespQueue__io_deq_valid)
	);
	Queue16_UInt512 queue_read(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_queue_read_io_enq_ready),
		.io_enq_valid((_GEN_8 ? io_m_axi_RVALID : _demux_io_sinks_1_valid)),
		.io_enq_bits((_GEN_8 ? io_m_axi_RDATA : _demux_io_sinks_1_bits)),
		.io_deq_ready(_WriteTaskToNetwork_io_s_axis_task_ready),
		.io_deq_valid(_queue_read_io_deq_valid),
		.io_deq_bits(_queue_read_io_deq_bits),
		.io_count(_queue_read_io_count)
	);
	Queue16_UInt512 queue_write(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_queue_write_io_enq_ready),
		.io_enq_valid(_demux_io_sinks_0_valid),
		.io_enq_bits(_demux_io_sinks_0_bits),
		.io_deq_ready(_GEN_4 & io_m_axi_WREADY),
		.io_deq_valid(_queue_write_io_deq_valid),
		.io_deq_bits(_queue_write_io_deq_bits),
		.io_count(_queue_write_io_count)
	);
	Queue2_UInt512 sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_io_enq_ready),
		.io_enq_valid(io_connNetwork_slave_data_availableTask_valid),
		.io_enq_bits(io_connNetwork_slave_data_availableTask_bits),
		.io_deq_ready(s_axis_slave_TREADY),
		.io_deq_valid(_sinkBuffer_io_deq_valid),
		.io_deq_bits(_sinkBuffer_io_deq_bits)
	);
	WriteTaskToNetwork WriteTaskToNetwork(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(io_connNetwork_master_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(io_connNetwork_master_ctrl_serveStealReq_ready),
		.io_connNetwork_data_qOutTask_ready(io_connNetwork_master_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_WriteTaskToNetwork_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(io_connNetwork_master_data_qOutTask_bits),
		.io_s_axis_task_ready(_WriteTaskToNetwork_io_s_axis_task_ready),
		.io_s_axis_task_valid(_queue_read_io_deq_valid),
		.io_s_axis_task_bits(_queue_read_io_deq_bits),
		.io_startToken_valid(_GEN_0 & _queue_read_io_deq_valid),
		.io_numTasksToStealOrServe((_GEN_0 & _queue_read_io_deq_valid ? {27'h0000000, _queue_read_io_count} : 32'h00000000))
	);
	elasticDemux demux(
		.io_source_ready(_demux_io_source_ready),
		.io_source_valid(_sinkBuffer_io_deq_valid & ~eagerFork_regs_0),
		.io_source_bits(_sinkBuffer_io_deq_bits),
		.io_sinks_0_ready(_queue_write_io_enq_ready),
		.io_sinks_0_valid(_demux_io_sinks_0_valid),
		.io_sinks_0_bits(_demux_io_sinks_0_bits),
		.io_sinks_1_ready(_queue_read_io_enq_ready),
		.io_sinks_1_valid(_demux_io_sinks_1_valid),
		.io_sinks_1_bits(_demux_io_sinks_1_bits),
		.io_select_ready(_demux_io_select_ready),
		.io_select_valid(_sinkBuffer_io_deq_valid & ~eagerFork_regs_1),
		.io_select_bits(~_queue_read_io_count[4] & ~queue_is_reading)
	);
	CircularQueueRegisterInc fifoTailReg_c(
		.io_currValue(fifoTailReg),
		.io_maxLen(maxLength),
		.io_nextvalue(_fifoTailReg_c_io_nextvalue),
		.io_incrValue(writeTasksCounterBvalid)
	);
	CircularQueueRegisterInc fifoHeadReg_c(
		.io_currValue(fifoHeadReg),
		.io_maxLen(maxLength),
		.io_nextvalue(_fifoHeadReg_c_io_nextvalue),
		.io_incrValue(64'h0000000000000001)
	);
	assign io_m_axi_ARVALID = _GEN_0 & _GEN_6;
	assign io_m_axi_ARADDR = (_GEN_7 ? rAddr + {fifoHeadReg[57:0], 6'h00} : 64'h0000000000000000);
	assign io_m_axi_ARLEN = (_GEN_7 ? (currLen < 64'h0000000000000010 ? currLen[7:0] - 8'h01 : 8'h0f) : 8'h00);
	assign io_m_axi_RREADY = _GEN_8 & _queue_read_io_enq_ready;
	assign io_m_axi_AWVALID = _GEN_0 & _GEN_1;
	assign io_m_axi_AWADDR = (_GEN_2 ? rAddr + {fifoTailReg[57:0], 6'h00} : 64'h0000000000000000);
	assign io_m_axi_AWLEN = (_GEN_2 ? (_queue_write_io_count[4] ? 8'h0f : {3'h0, _queue_write_io_count - 5'h01}) : 8'h00);
	assign io_m_axi_WVALID = _GEN_4 & _queue_write_io_deq_valid;
	assign io_m_axi_WDATA = (_GEN_4 ? _queue_write_io_deq_bits : 512'h0);
	assign io_m_axi_WLAST = _GEN_4 & _view__w_bits_last_T;
	assign io_m_axi_BREADY = _GEN_0 & _GEN_5;
	assign io_connNetwork_slave_data_availableTask_ready = _sinkBuffer_io_enq_ready;
	assign io_connNetwork_master_data_qOutTask_valid = _WriteTaskToNetwork_io_connNetwork_data_qOutTask_valid;
endmodule
module SchedulerNetworkDataUnit (
	clock,
	reset,
	io_taskIn,
	io_taskOut,
	io_validIn,
	io_validOut,
	io_connSS_availableTask_ready,
	io_connSS_availableTask_valid,
	io_connSS_availableTask_bits,
	io_connSS_qOutTask_ready,
	io_connSS_qOutTask_valid,
	io_connSS_qOutTask_bits,
	io_occupied
);
	input clock;
	input reset;
	input [511:0] io_taskIn;
	output wire [511:0] io_taskOut;
	input io_validIn;
	output wire io_validOut;
	input io_connSS_availableTask_ready;
	output wire io_connSS_availableTask_valid;
	output wire [511:0] io_connSS_availableTask_bits;
	output wire io_connSS_qOutTask_ready;
	input io_connSS_qOutTask_valid;
	input [511:0] io_connSS_qOutTask_bits;
	output wire io_occupied;
	reg [511:0] taskReg;
	reg validReg;
	wire io_connSS_availableTask_valid_0 = io_connSS_availableTask_ready & io_validIn;
	wire _GEN = io_connSS_qOutTask_valid & ~io_validIn;
	always @(posedge clock)
		if (reset) begin
			taskReg <= 512'h0;
			validReg <= 1'h0;
		end
		else begin
			taskReg <= (io_connSS_availableTask_valid_0 ? 512'h0 : (_GEN ? io_connSS_qOutTask_bits : (io_validIn ? io_taskIn : 512'h0)));
			validReg <= ~io_connSS_availableTask_valid_0 & (_GEN | io_validIn);
		end
	assign io_taskOut = taskReg;
	assign io_validOut = validReg;
	assign io_connSS_availableTask_valid = io_connSS_availableTask_valid_0;
	assign io_connSS_availableTask_bits = (io_connSS_availableTask_valid_0 ? io_taskIn : 512'h0);
	assign io_connSS_qOutTask_ready = ~io_connSS_availableTask_valid_0 & _GEN;
	assign io_occupied = validReg;
endmodule
module SchedulerNetworkControlUnit (
	clock,
	reset,
	io_reqTaskIn,
	io_reqTaskOut,
	io_connSS_serveStealReq_valid,
	io_connSS_serveStealReq_ready,
	io_connSS_stealReq_valid,
	io_connSS_stealReq_ready
);
	input clock;
	input reset;
	input io_reqTaskIn;
	output wire io_reqTaskOut;
	input io_connSS_serveStealReq_valid;
	output wire io_connSS_serveStealReq_ready;
	input io_connSS_stealReq_valid;
	output wire io_connSS_stealReq_ready;
	reg stealReqReg;
	always @(posedge clock)
		if (reset)
			stealReqReg <= 1'h0;
		else
			stealReqReg <= io_reqTaskIn;
	assign io_reqTaskOut = io_connSS_stealReq_valid | (~io_connSS_serveStealReq_valid & stealReqReg);
	assign io_connSS_serveStealReq_ready = stealReqReg;
	assign io_connSS_stealReq_ready = ~stealReqReg;
endmodule
module SchedulerNetwork (
	clock,
	reset,
	io_connSS_0_data_availableTask_ready,
	io_connSS_0_data_availableTask_valid,
	io_connSS_0_data_availableTask_bits,
	io_connSS_1_ctrl_serveStealReq_valid,
	io_connSS_1_ctrl_serveStealReq_ready,
	io_connSS_1_ctrl_stealReq_valid,
	io_connSS_1_ctrl_stealReq_ready,
	io_connSS_1_data_qOutTask_ready,
	io_connSS_1_data_qOutTask_valid,
	io_connSS_1_data_qOutTask_bits
);
	input clock;
	input reset;
	input io_connSS_0_data_availableTask_ready;
	output wire io_connSS_0_data_availableTask_valid;
	output wire [511:0] io_connSS_0_data_availableTask_bits;
	input io_connSS_1_ctrl_serveStealReq_valid;
	output wire io_connSS_1_ctrl_serveStealReq_ready;
	input io_connSS_1_ctrl_stealReq_valid;
	output wire io_connSS_1_ctrl_stealReq_ready;
	output wire io_connSS_1_data_qOutTask_ready;
	input io_connSS_1_data_qOutTask_valid;
	input [511:0] io_connSS_1_data_qOutTask_bits;
	wire _ctrlunits_1_io_reqTaskOut;
	wire _ctrlunits_0_io_reqTaskOut;
	wire [511:0] _dataUnits_1_io_taskOut;
	wire _dataUnits_1_io_validOut;
	wire [511:0] _dataUnits_0_io_taskOut;
	wire _dataUnits_0_io_validOut;
	SchedulerNetworkDataUnit dataUnits_0(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_1_io_taskOut),
		.io_taskOut(_dataUnits_0_io_taskOut),
		.io_validIn(_dataUnits_1_io_validOut),
		.io_validOut(_dataUnits_0_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_0_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_0_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_0_data_availableTask_bits),
		.io_connSS_qOutTask_ready(),
		.io_connSS_qOutTask_valid(1'h0),
		.io_connSS_qOutTask_bits(512'h0),
		.io_occupied()
	);
	SchedulerNetworkDataUnit dataUnits_1(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_0_io_taskOut),
		.io_taskOut(_dataUnits_1_io_taskOut),
		.io_validIn(_dataUnits_0_io_validOut),
		.io_validOut(_dataUnits_1_io_validOut),
		.io_connSS_availableTask_ready(1'h0),
		.io_connSS_availableTask_valid(),
		.io_connSS_availableTask_bits(),
		.io_connSS_qOutTask_ready(io_connSS_1_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_1_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_1_data_qOutTask_bits),
		.io_occupied()
	);
	SchedulerNetworkControlUnit ctrlunits_0(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_1_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_0_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(1'h1),
		.io_connSS_serveStealReq_ready(),
		.io_connSS_stealReq_valid(1'h0),
		.io_connSS_stealReq_ready()
	);
	SchedulerNetworkControlUnit ctrlunits_1(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_0_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_1_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_1_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_1_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_1_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_1_ctrl_stealReq_ready)
	);
endmodule
module SchedulerNetwork_1 (
	clock,
	reset,
	io_connSS_0_ctrl_serveStealReq_valid,
	io_connSS_0_ctrl_serveStealReq_ready,
	io_connSS_0_data_availableTask_ready,
	io_connSS_0_data_availableTask_valid,
	io_connSS_0_data_availableTask_bits,
	io_connSS_0_data_qOutTask_ready,
	io_connSS_0_data_qOutTask_valid,
	io_connSS_0_data_qOutTask_bits,
	io_connSS_1_ctrl_serveStealReq_valid,
	io_connSS_1_ctrl_serveStealReq_ready,
	io_connSS_1_data_qOutTask_ready,
	io_connSS_1_data_qOutTask_valid,
	io_connSS_1_data_qOutTask_bits,
	io_connSS_2_ctrl_serveStealReq_valid,
	io_connSS_2_ctrl_serveStealReq_ready,
	io_connSS_2_ctrl_stealReq_valid,
	io_connSS_2_ctrl_stealReq_ready,
	io_connSS_2_data_availableTask_ready,
	io_connSS_2_data_availableTask_valid,
	io_connSS_2_data_availableTask_bits,
	io_connSS_2_data_qOutTask_ready,
	io_connSS_2_data_qOutTask_valid,
	io_connSS_2_data_qOutTask_bits,
	io_ntwDataUnitOccupancyVSS_0
);
	input clock;
	input reset;
	input io_connSS_0_ctrl_serveStealReq_valid;
	output wire io_connSS_0_ctrl_serveStealReq_ready;
	input io_connSS_0_data_availableTask_ready;
	output wire io_connSS_0_data_availableTask_valid;
	output wire [511:0] io_connSS_0_data_availableTask_bits;
	output wire io_connSS_0_data_qOutTask_ready;
	input io_connSS_0_data_qOutTask_valid;
	input [511:0] io_connSS_0_data_qOutTask_bits;
	input io_connSS_1_ctrl_serveStealReq_valid;
	output wire io_connSS_1_ctrl_serveStealReq_ready;
	output wire io_connSS_1_data_qOutTask_ready;
	input io_connSS_1_data_qOutTask_valid;
	input [511:0] io_connSS_1_data_qOutTask_bits;
	input io_connSS_2_ctrl_serveStealReq_valid;
	output wire io_connSS_2_ctrl_serveStealReq_ready;
	input io_connSS_2_ctrl_stealReq_valid;
	output wire io_connSS_2_ctrl_stealReq_ready;
	input io_connSS_2_data_availableTask_ready;
	output wire io_connSS_2_data_availableTask_valid;
	output wire [511:0] io_connSS_2_data_availableTask_bits;
	output wire io_connSS_2_data_qOutTask_ready;
	input io_connSS_2_data_qOutTask_valid;
	input [511:0] io_connSS_2_data_qOutTask_bits;
	output wire io_ntwDataUnitOccupancyVSS_0;
	wire _ctrlunits_2_io_reqTaskOut;
	wire _ctrlunits_1_io_reqTaskOut;
	wire _ctrlunits_0_io_reqTaskOut;
	wire [511:0] _dataUnits_2_io_taskOut;
	wire _dataUnits_2_io_validOut;
	wire [511:0] _dataUnits_1_io_taskOut;
	wire _dataUnits_1_io_validOut;
	wire [511:0] _dataUnits_0_io_taskOut;
	wire _dataUnits_0_io_validOut;
	SchedulerNetworkDataUnit dataUnits_0(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_2_io_taskOut),
		.io_taskOut(_dataUnits_0_io_taskOut),
		.io_validIn(_dataUnits_2_io_validOut),
		.io_validOut(_dataUnits_0_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_0_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_0_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_0_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_0_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_0_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_0_data_qOutTask_bits),
		.io_occupied(io_ntwDataUnitOccupancyVSS_0)
	);
	SchedulerNetworkDataUnit dataUnits_1(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_0_io_taskOut),
		.io_taskOut(_dataUnits_1_io_taskOut),
		.io_validIn(_dataUnits_0_io_validOut),
		.io_validOut(_dataUnits_1_io_validOut),
		.io_connSS_availableTask_ready(1'h0),
		.io_connSS_availableTask_valid(),
		.io_connSS_availableTask_bits(),
		.io_connSS_qOutTask_ready(io_connSS_1_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_1_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_1_data_qOutTask_bits),
		.io_occupied()
	);
	SchedulerNetworkDataUnit dataUnits_2(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_1_io_taskOut),
		.io_taskOut(_dataUnits_2_io_taskOut),
		.io_validIn(_dataUnits_1_io_validOut),
		.io_validOut(_dataUnits_2_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_2_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_2_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_2_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_2_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_2_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_2_data_qOutTask_bits),
		.io_occupied()
	);
	SchedulerNetworkControlUnit ctrlunits_0(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_1_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_0_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_0_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_0_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(1'h0),
		.io_connSS_stealReq_ready()
	);
	SchedulerNetworkControlUnit ctrlunits_1(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_2_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_1_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_1_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_1_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(1'h0),
		.io_connSS_stealReq_ready()
	);
	SchedulerNetworkControlUnit ctrlunits_2(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_0_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_2_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_2_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_2_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_2_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_2_ctrl_stealReq_ready)
	);
endmodule
module SchedulerClient (
	clock,
	reset,
	io_connNetwork_ctrl_serveStealReq_valid,
	io_connNetwork_ctrl_serveStealReq_ready,
	io_connNetwork_ctrl_stealReq_valid,
	io_connNetwork_ctrl_stealReq_ready,
	io_connNetwork_data_availableTask_ready,
	io_connNetwork_data_availableTask_valid,
	io_connNetwork_data_availableTask_bits,
	io_connNetwork_data_qOutTask_ready,
	io_connNetwork_data_qOutTask_valid,
	io_connNetwork_data_qOutTask_bits,
	io_connQ_currLength,
	io_connQ_push_ready,
	io_connQ_push_valid,
	io_connQ_push_bits,
	io_connQ_pop_ready,
	io_connQ_pop_valid,
	io_connQ_pop_bits
);
	input clock;
	input reset;
	output wire io_connNetwork_ctrl_serveStealReq_valid;
	input io_connNetwork_ctrl_serveStealReq_ready;
	output wire io_connNetwork_ctrl_stealReq_valid;
	input io_connNetwork_ctrl_stealReq_ready;
	output wire io_connNetwork_data_availableTask_ready;
	input io_connNetwork_data_availableTask_valid;
	input [511:0] io_connNetwork_data_availableTask_bits;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [511:0] io_connNetwork_data_qOutTask_bits;
	input [6:0] io_connQ_currLength;
	input io_connQ_push_ready;
	output wire io_connQ_push_valid;
	output wire [511:0] io_connQ_push_bits;
	output wire io_connQ_pop_ready;
	input io_connQ_pop_valid;
	input [511:0] io_connQ_pop_bits;
	reg [2:0] stateReg;
	reg [511:0] stolenTaskReg;
	reg [511:0] giveTaskReg;
	reg [1:0] taskRequestCount;
	reg [31:0] tasksGivenAwayCount;
	reg [31:0] requestKilledCount;
	reg [31:0] requestFullCount;
	wire _GEN = stateReg == 3'h0;
	wire _GEN_0 = stateReg == 3'h1;
	wire _GEN_1 = io_connNetwork_ctrl_stealReq_ready & (taskRequestCount == 2'h1);
	wire _GEN_2 = io_connNetwork_ctrl_stealReq_ready & (taskRequestCount == 2'h2);
	wire _GEN_3 = io_connQ_currLength > 7'h12;
	wire _GEN_4 = _GEN_2 | _GEN_3;
	wire _GEN_5 = _GEN_1 | _GEN_4;
	wire _GEN_6 = stateReg == 3'h2;
	wire _GEN_7 = _GEN | _GEN_0;
	wire _GEN_8 = stateReg == 3'h3;
	wire _GEN_9 = (_GEN | _GEN_0) | _GEN_6;
	wire _GEN_10 = stateReg == 3'h4;
	wire _GEN_11 = stateReg == 3'h5;
	wire _GEN_12 = _GEN_8 | _GEN_10;
	wire _GEN_13 = _GEN_6 | _GEN_12;
	wire _GEN_14 = (_GEN | _GEN_0) | _GEN_13;
	wire _GEN_15 = stateReg == 3'h6;
	wire _GEN_16 = ((_GEN_6 | _GEN_8) | _GEN_10) | _GEN_11;
	always @(posedge clock)
		if (reset) begin
			stateReg <= 3'h0;
			stolenTaskReg <= 512'h0;
			giveTaskReg <= 512'h0;
			taskRequestCount <= 2'h1;
			tasksGivenAwayCount <= 32'h00000000;
			requestKilledCount <= 32'h00000003;
			requestFullCount <= 32'h00000003;
		end
		else begin : sv2v_autoblock_1
			reg _GEN_17;
			reg _GEN_18;
			reg _GEN_19;
			reg _GEN_20;
			reg [31:0] _GEN_21;
			reg _GEN_22;
			reg _GEN_23;
			reg _GEN_24;
			reg [1:0] _GEN_25;
			reg [23:0] _GEN_26;
			reg [15:0] _GEN_27;
			reg [255:0] _GEN_28;
			_GEN_21 = (_GEN_13 | ~(_GEN_11 & io_connNetwork_data_qOutTask_ready) ? tasksGivenAwayCount : tasksGivenAwayCount + 32'h00000001);
			_GEN_28 = {_GEN_21, _GEN_21, _GEN_21, tasksGivenAwayCount, tasksGivenAwayCount, tasksGivenAwayCount, (_GEN_5 | ~(|tasksGivenAwayCount) ? tasksGivenAwayCount : tasksGivenAwayCount - 32'h00000001), tasksGivenAwayCount};
			_GEN_17 = io_connQ_currLength < 7'h13;
			_GEN_18 = requestKilledCount == 32'h00000000;
			_GEN_19 = io_connQ_currLength > 7'h3e;
			_GEN_20 = io_connQ_currLength == 7'h00;
			_GEN_22 = io_connQ_currLength[6] | (io_connNetwork_ctrl_serveStealReq_ready & _GEN_3);
			_GEN_23 = _GEN_17 & io_connNetwork_ctrl_serveStealReq_ready;
			_GEN_24 = _GEN_23 | _GEN_17;
			_GEN_25 = ((_GEN_16 | ~_GEN_15) | _GEN_22 ? taskRequestCount : (_GEN_23 ? 2'h2 : (_GEN_17 ? 2'h1 : taskRequestCount)));
			_GEN_26 = {stateReg, (_GEN_22 ? 3'h4 : (_GEN_24 ? 3'h1 : 3'h6)), (io_connNetwork_data_qOutTask_ready ? 3'h0 : (_GEN_17 ? 3'h3 : 3'h5)), (io_connQ_pop_valid ? 3'h5 : (_GEN_20 ? 3'h1 : 3'h4)), (io_connQ_push_ready ? 3'h0 : (_GEN_19 ? 3'h5 : 3'h3)), (io_connNetwork_data_availableTask_valid ? 3'h3 : (_GEN_3 ? 3'h0 : (_GEN_18 ? 3'h1 : 3'h2))), (_GEN_1 ? 3'h2 : (_GEN_2 ? 3'h1 : (_GEN_3 ? 3'h6 : (|tasksGivenAwayCount | (requestFullCount == 32'h00000000) ? 3'h2 : 3'h1)))), (_GEN_17 ? 3'h1 : (io_connQ_currLength[6] ? 3'h4 : (io_connQ_currLength > 7'h13 ? 3'h6 : 3'h0)))};
			stateReg <= _GEN_26[stateReg * 3+:3];
			if (~_GEN_7) begin
				if (_GEN_6) begin
					if (io_connNetwork_data_availableTask_valid)
						stolenTaskReg <= io_connNetwork_data_availableTask_bits;
				end
				else if (((_GEN_12 | ~_GEN_11) | io_connNetwork_data_qOutTask_ready) | ~_GEN_17)
					;
				else
					stolenTaskReg <= giveTaskReg;
			end
			if (~_GEN_9) begin
				if (_GEN_8) begin
					if (io_connQ_push_ready | ~_GEN_19)
						;
					else
						giveTaskReg <= stolenTaskReg;
				end
				else if (_GEN_10 & io_connQ_pop_valid)
					giveTaskReg <= io_connQ_pop_bits;
			end
			_GEN_27 = {_GEN_25, _GEN_25, taskRequestCount, taskRequestCount, taskRequestCount, taskRequestCount, (_GEN_1 | ~_GEN_2 ? taskRequestCount : 2'h1), taskRequestCount};
			taskRequestCount <= _GEN_27[stateReg * 2+:2];
			tasksGivenAwayCount <= _GEN_28[stateReg * 32+:32];
			if (_GEN) begin
				if (_GEN_17)
					requestFullCount <= 32'h00000003;
			end
			else if (_GEN_0) begin
				if (_GEN_1 | ~(_GEN_4 | ~(|tasksGivenAwayCount)))
					requestKilledCount <= 32'h00000003;
				if (io_connNetwork_ctrl_serveStealReq_ready)
					requestFullCount <= requestFullCount - 32'h00000001;
				else
					requestFullCount <= 32'h00000003;
			end
			else begin
				if (_GEN_6) begin
					if (io_connNetwork_ctrl_serveStealReq_ready)
						requestKilledCount <= 32'h00000003;
					else
						requestKilledCount <= requestKilledCount - 32'h00000001;
				end
				if ((_GEN_6 ? (io_connNetwork_data_availableTask_valid | _GEN_3) | ~_GEN_18 : _GEN_8 | (_GEN_10 ? io_connQ_pop_valid | ~_GEN_20 : ((_GEN_11 | ~_GEN_15) | _GEN_22) | ~_GEN_24)))
					;
				else
					requestFullCount <= 32'h00000003;
			end
		end
	assign io_connNetwork_ctrl_serveStealReq_valid = ~_GEN & (_GEN_0 ? ~_GEN_5 & |tasksGivenAwayCount : ~_GEN_16 & _GEN_15);
	assign io_connNetwork_ctrl_stealReq_valid = ~_GEN & _GEN_0;
	assign io_connNetwork_data_availableTask_ready = ~_GEN_7 & _GEN_6;
	assign io_connNetwork_data_qOutTask_valid = ~_GEN_14 & _GEN_11;
	assign io_connNetwork_data_qOutTask_bits = (_GEN_14 | ~_GEN_11 ? 512'h0 : giveTaskReg);
	assign io_connQ_push_valid = ~_GEN_9 & _GEN_8;
	assign io_connQ_push_bits = (_GEN_9 | ~_GEN_8 ? 512'h0 : stolenTaskReg);
	assign io_connQ_pop_ready = ~(((_GEN | _GEN_0) | _GEN_6) | _GEN_8) & _GEN_10;
endmodule
module hw_deque (
	clock,
	reset,
	io_connVec_0_currLength,
	io_connVec_0_pop_ready,
	io_connVec_0_pop_valid,
	io_connVec_0_pop_bits,
	io_connVec_1_currLength,
	io_connVec_1_push_ready,
	io_connVec_1_push_valid,
	io_connVec_1_push_bits,
	io_connVec_1_pop_ready,
	io_connVec_1_pop_valid,
	io_connVec_1_pop_bits
);
	input clock;
	input reset;
	output wire [7:0] io_connVec_0_currLength;
	input io_connVec_0_pop_ready;
	output wire io_connVec_0_pop_valid;
	output wire [511:0] io_connVec_0_pop_bits;
	output wire [7:0] io_connVec_1_currLength;
	output wire io_connVec_1_push_ready;
	input io_connVec_1_push_valid;
	input [511:0] io_connVec_1_push_bits;
	input io_connVec_1_pop_ready;
	output wire io_connVec_1_pop_valid;
	output wire [511:0] io_connVec_1_pop_bits;
	wire [511:0] _bramMem_a_dout;
	wire [511:0] _bramMem_b_dout;
	reg [7:0] sideReg_0;
	reg [7:0] sideReg_1;
	reg readLatency_0;
	reg readLatency_1;
	reg writeLatency_0;
	reg writeLatency_1;
	reg [2:0] stateRegs_0;
	reg [2:0] stateRegs_1;
	wire _GEN = stateRegs_0 == 3'h0;
	wire _GEN_0 = stateRegs_1 == 3'h0;
	wire _GEN_1 = stateRegs_0 == 3'h1;
	wire _GEN_2 = stateRegs_0 == 3'h2;
	wire _GEN_3 = sideReg_0 == 8'h41;
	wire _GEN_4 = stateRegs_0 == 3'h4;
	wire [7:0] _bramMem_io_a_addr_T_2 = sideReg_0 + 8'h01;
	wire _GEN_5 = (_GEN | _GEN_1) | _GEN_2;
	wire _GEN_6 = stateRegs_1 == 3'h1;
	wire _GEN_7 = stateRegs_1 == 3'h2;
	wire _GEN_8 = sideReg_1 == 8'h00;
	wire _GEN_9 = stateRegs_1 == 3'h4;
	wire [7:0] _bramMem_io_b_addr_T_6 = sideReg_1 - 8'h01;
	wire _GEN_10 = (_GEN_0 | _GEN_6) | _GEN_7;
	wire _GEN_11 = stateRegs_1 == 3'h3;
	wire [7:0] currLen = (sideReg_0 > sideReg_1 ? ((sideReg_1 + 8'h42) - sideReg_0) - 8'h01 : (sideReg_1 - sideReg_0) - 8'h01);
	always @(posedge clock)
		if (reset) begin
			sideReg_0 <= 8'h00;
			sideReg_1 <= 8'h01;
			readLatency_0 <= 1'h0;
			readLatency_1 <= 1'h0;
			writeLatency_0 <= 1'h0;
			writeLatency_1 <= 1'h0;
			stateRegs_0 <= 3'h0;
			stateRegs_1 <= 3'h0;
		end
		else begin : sv2v_autoblock_1
			reg [23:0] _GEN_12;
			reg [23:0] _GEN_13;
			_GEN_12 = {stateRegs_0, stateRegs_0, stateRegs_0, 6'h00, (readLatency_0 ? 3'h2 : 3'h4), 1'h0, ~writeLatency_0, 2'h2, (io_connVec_0_pop_ready & |currLen[7:1]) | ((io_connVec_0_pop_ready & _GEN_0) & |currLen), 1'h0};
			_GEN_13 = {stateRegs_1, stateRegs_1, stateRegs_1, 6'h00, (readLatency_1 ? 3'h2 : 3'h4), 1'h0, ~writeLatency_1, 1'h1, (io_connVec_1_push_valid & (currLen < 8'h41) ? 3'h1 : {1'h0, (io_connVec_1_pop_ready & |currLen[7:1]) | (((io_connVec_1_pop_ready & ~io_connVec_0_pop_ready) & |currLen) & (stateRegs_0 != 3'h4)), 1'h0})};
			if (~_GEN_5) begin
				if (_GEN_4) begin
					if (_GEN_3)
						sideReg_0 <= 8'h00;
					else
						sideReg_0 <= _bramMem_io_a_addr_T_2;
				end
				else if (stateRegs_0 == 3'h3) begin
					if (sideReg_0 == 8'h00)
						sideReg_0 <= 8'h41;
					else
						sideReg_0 <= sideReg_0 - 8'h01;
				end
			end
			if (~_GEN_10) begin
				if (_GEN_9) begin
					if (_GEN_8)
						sideReg_1 <= 8'h41;
					else
						sideReg_1 <= _bramMem_io_b_addr_T_6;
				end
				else if (_GEN_11) begin
					if (sideReg_1 == 8'h41)
						sideReg_1 <= 8'h00;
					else
						sideReg_1 <= sideReg_1 + 8'h01;
				end
			end
			readLatency_0 <= (((_GEN | _GEN_1) | ~_GEN_2) | (readLatency_0 - 1'h1)) & readLatency_0;
			readLatency_1 <= (((_GEN_0 | _GEN_6) | ~_GEN_7) | (readLatency_1 - 1'h1)) & readLatency_1;
			writeLatency_0 <= ((_GEN | ~_GEN_1) | (writeLatency_0 - 1'h1)) & writeLatency_0;
			writeLatency_1 <= ((_GEN_0 | ~_GEN_6) | (writeLatency_1 - 1'h1)) & writeLatency_1;
			stateRegs_0 <= _GEN_12[stateRegs_0 * 3+:3];
			stateRegs_1 <= _GEN_13[stateRegs_1 * 3+:3];
		end
	DualPortBRAM #(
		.ADDR(11),
		.DATA(512)
	) bramMem(
		.clk(clock),
		.rst(reset),
		.a_addr((_GEN ? 11'h7ff : (_GEN_1 ? {3'h0, sideReg_0} : (_GEN_2 ? (_GEN_3 ? 11'h000 : {3'h0, sideReg_0 + 8'h01}) : (_GEN_4 ? (_GEN_3 ? 11'h000 : {3'h0, _bramMem_io_a_addr_T_2}) : 11'h7ff))))),
		.a_din(512'h0),
		.a_wr(~_GEN & _GEN_1),
		.a_dout(_bramMem_a_dout),
		.b_addr((_GEN_0 ? 11'h7ff : (_GEN_6 ? {3'h0, sideReg_1} : (_GEN_7 ? (_GEN_8 ? 11'h041 : {3'h0, sideReg_1 - 8'h01}) : (_GEN_9 ? (_GEN_8 ? 11'h041 : {3'h0, _bramMem_io_b_addr_T_6}) : 11'h7ff))))),
		.b_din(io_connVec_1_push_bits),
		.b_wr(~_GEN_0 & _GEN_6),
		.b_dout(_bramMem_b_dout)
	);
	assign io_connVec_0_currLength = currLen;
	assign io_connVec_0_pop_valid = ~_GEN_5 & _GEN_4;
	assign io_connVec_0_pop_bits = (_GEN_5 | ~_GEN_4 ? 512'h0 : _bramMem_a_dout);
	assign io_connVec_1_currLength = currLen;
	assign io_connVec_1_push_ready = ~(((_GEN_0 | _GEN_6) | _GEN_7) | _GEN_9) & _GEN_11;
	assign io_connVec_1_pop_valid = ~_GEN_10 & _GEN_9;
	assign io_connVec_1_pop_bits = (_GEN_10 | ~_GEN_9 ? 512'h0 : _bramMem_b_dout);
endmodule
module SchedulerLocalNetwork (
	clock,
	reset,
	io_connPE_0_pop_ready,
	io_connPE_0_pop_valid,
	io_connPE_0_pop_bits,
	io_connVSS_0_ctrl_serveStealReq_valid,
	io_connVSS_0_ctrl_serveStealReq_ready,
	io_connVSS_0_data_availableTask_ready,
	io_connVSS_0_data_availableTask_valid,
	io_connVSS_0_data_availableTask_bits,
	io_connVSS_0_data_qOutTask_ready,
	io_connVSS_0_data_qOutTask_valid,
	io_connVSS_0_data_qOutTask_bits,
	io_connVAS_0_ctrl_serveStealReq_valid,
	io_connVAS_0_ctrl_serveStealReq_ready,
	io_connVAS_0_data_qOutTask_ready,
	io_connVAS_0_data_qOutTask_valid,
	io_connVAS_0_data_qOutTask_bits,
	io_ntwDataUnitOccupancyVSS_0,
	io_lengths_of_hardware_queues_0
);
	input clock;
	input reset;
	input io_connPE_0_pop_ready;
	output wire io_connPE_0_pop_valid;
	output wire [511:0] io_connPE_0_pop_bits;
	input io_connVSS_0_ctrl_serveStealReq_valid;
	output wire io_connVSS_0_ctrl_serveStealReq_ready;
	input io_connVSS_0_data_availableTask_ready;
	output wire io_connVSS_0_data_availableTask_valid;
	output wire [511:0] io_connVSS_0_data_availableTask_bits;
	output wire io_connVSS_0_data_qOutTask_ready;
	input io_connVSS_0_data_qOutTask_valid;
	input [511:0] io_connVSS_0_data_qOutTask_bits;
	input io_connVAS_0_ctrl_serveStealReq_valid;
	output wire io_connVAS_0_ctrl_serveStealReq_ready;
	output wire io_connVAS_0_data_qOutTask_ready;
	input io_connVAS_0_data_qOutTask_valid;
	input [511:0] io_connVAS_0_data_qOutTask_bits;
	output wire io_ntwDataUnitOccupancyVSS_0;
	output wire [7:0] io_lengths_of_hardware_queues_0;
	wire [7:0] _taskQueues_0_io_connVec_1_currLength;
	wire _taskQueues_0_io_connVec_1_push_ready;
	wire _taskQueues_0_io_connVec_1_pop_valid;
	wire [511:0] _taskQueues_0_io_connVec_1_pop_bits;
	wire _stealServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_0_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_0_io_connNetwork_data_availableTask_ready;
	wire _stealServers_0_io_connNetwork_data_qOutTask_valid;
	wire [511:0] _stealServers_0_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_0_io_connQ_push_valid;
	wire [511:0] _stealServers_0_io_connQ_push_bits;
	wire _stealServers_0_io_connQ_pop_ready;
	wire _stealNet_io_connSS_2_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_2_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_2_data_availableTask_valid;
	wire [511:0] _stealNet_io_connSS_2_data_availableTask_bits;
	wire _stealNet_io_connSS_2_data_qOutTask_ready;
	SchedulerNetwork_1 stealNet(
		.clock(clock),
		.reset(reset),
		.io_connSS_0_ctrl_serveStealReq_valid(io_connVSS_0_ctrl_serveStealReq_valid),
		.io_connSS_0_ctrl_serveStealReq_ready(io_connVSS_0_ctrl_serveStealReq_ready),
		.io_connSS_0_data_availableTask_ready(io_connVSS_0_data_availableTask_ready),
		.io_connSS_0_data_availableTask_valid(io_connVSS_0_data_availableTask_valid),
		.io_connSS_0_data_availableTask_bits(io_connVSS_0_data_availableTask_bits),
		.io_connSS_0_data_qOutTask_ready(io_connVSS_0_data_qOutTask_ready),
		.io_connSS_0_data_qOutTask_valid(io_connVSS_0_data_qOutTask_valid),
		.io_connSS_0_data_qOutTask_bits(io_connVSS_0_data_qOutTask_bits),
		.io_connSS_1_ctrl_serveStealReq_valid(io_connVAS_0_ctrl_serveStealReq_valid),
		.io_connSS_1_ctrl_serveStealReq_ready(io_connVAS_0_ctrl_serveStealReq_ready),
		.io_connSS_1_data_qOutTask_ready(io_connVAS_0_data_qOutTask_ready),
		.io_connSS_1_data_qOutTask_valid(io_connVAS_0_data_qOutTask_valid),
		.io_connSS_1_data_qOutTask_bits(io_connVAS_0_data_qOutTask_bits),
		.io_connSS_2_ctrl_serveStealReq_valid(_stealServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_2_ctrl_serveStealReq_ready(_stealNet_io_connSS_2_ctrl_serveStealReq_ready),
		.io_connSS_2_ctrl_stealReq_valid(_stealServers_0_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_2_ctrl_stealReq_ready(_stealNet_io_connSS_2_ctrl_stealReq_ready),
		.io_connSS_2_data_availableTask_ready(_stealServers_0_io_connNetwork_data_availableTask_ready),
		.io_connSS_2_data_availableTask_valid(_stealNet_io_connSS_2_data_availableTask_valid),
		.io_connSS_2_data_availableTask_bits(_stealNet_io_connSS_2_data_availableTask_bits),
		.io_connSS_2_data_qOutTask_ready(_stealNet_io_connSS_2_data_qOutTask_ready),
		.io_connSS_2_data_qOutTask_valid(_stealServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connSS_2_data_qOutTask_bits(_stealServers_0_io_connNetwork_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0(io_ntwDataUnitOccupancyVSS_0)
	);
	SchedulerClient stealServers_0(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_2_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_0_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_2_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_0_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_2_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_2_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_2_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_0_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_0_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_0_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_0_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_0_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_0_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_0_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_0_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_0(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_0),
		.io_connVec_0_pop_ready(io_connPE_0_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_0_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_0_pop_bits),
		.io_connVec_1_currLength(_taskQueues_0_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_0_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_0_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_0_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_0_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_0_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_0_io_connVec_1_pop_bits)
	);
endmodule
module Queue16_UInt (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_bits,
	io_count
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [511:0] io_enq_bits;
	input io_deq_ready;
	output wire [511:0] io_deq_bits;
	output wire [4:0] io_count;
	reg [3:0] enq_ptr_value;
	reg [3:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 4'h0;
			deq_ptr_value <= 4'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~(ptr_match & ~maybe_full);
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 4'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 4'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_16x512 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_count = {maybe_full & ptr_match, enq_ptr_value - deq_ptr_value};
endmodule
module SchedulerServer (
	clock,
	reset,
	io_connNetwork_ctrl_serveStealReq_valid,
	io_connNetwork_ctrl_serveStealReq_ready,
	io_connNetwork_data_availableTask_ready,
	io_connNetwork_data_availableTask_valid,
	io_connNetwork_data_availableTask_bits,
	io_connNetwork_data_qOutTask_ready,
	io_connNetwork_data_qOutTask_valid,
	io_connNetwork_data_qOutTask_bits,
	io_axi_mgmt_ar_ready,
	io_axi_mgmt_ar_valid,
	io_axi_mgmt_ar_bits_addr,
	io_axi_mgmt_ar_bits_prot,
	io_axi_mgmt_r_ready,
	io_axi_mgmt_r_valid,
	io_axi_mgmt_r_bits_data,
	io_axi_mgmt_r_bits_resp,
	io_axi_mgmt_aw_ready,
	io_axi_mgmt_aw_valid,
	io_axi_mgmt_aw_bits_addr,
	io_axi_mgmt_aw_bits_prot,
	io_axi_mgmt_w_ready,
	io_axi_mgmt_w_valid,
	io_axi_mgmt_w_bits_data,
	io_axi_mgmt_w_bits_strb,
	io_axi_mgmt_b_ready,
	io_axi_mgmt_b_valid,
	io_axi_mgmt_b_bits_resp,
	io_read_address_ready,
	io_read_address_valid,
	io_read_address_bits,
	io_read_data_ready,
	io_read_data_valid,
	io_read_data_bits,
	io_read_burst_len,
	io_write_address_ready,
	io_write_address_valid,
	io_write_address_bits,
	io_write_data_ready,
	io_write_data_valid,
	io_write_data_bits,
	io_write_burst_len,
	io_write_last,
	io_ntwDataUnitOccupancy,
	io_paused,
	io_lengths_of_hardware_queues_0
);
	input clock;
	input reset;
	output wire io_connNetwork_ctrl_serveStealReq_valid;
	input io_connNetwork_ctrl_serveStealReq_ready;
	output wire io_connNetwork_data_availableTask_ready;
	input io_connNetwork_data_availableTask_valid;
	input [511:0] io_connNetwork_data_availableTask_bits;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [511:0] io_connNetwork_data_qOutTask_bits;
	output wire io_axi_mgmt_ar_ready;
	input io_axi_mgmt_ar_valid;
	input [5:0] io_axi_mgmt_ar_bits_addr;
	input [2:0] io_axi_mgmt_ar_bits_prot;
	input io_axi_mgmt_r_ready;
	output wire io_axi_mgmt_r_valid;
	output wire [63:0] io_axi_mgmt_r_bits_data;
	output wire [1:0] io_axi_mgmt_r_bits_resp;
	output wire io_axi_mgmt_aw_ready;
	input io_axi_mgmt_aw_valid;
	input [5:0] io_axi_mgmt_aw_bits_addr;
	input [2:0] io_axi_mgmt_aw_bits_prot;
	output wire io_axi_mgmt_w_ready;
	input io_axi_mgmt_w_valid;
	input [63:0] io_axi_mgmt_w_bits_data;
	input [7:0] io_axi_mgmt_w_bits_strb;
	input io_axi_mgmt_b_ready;
	output wire io_axi_mgmt_b_valid;
	output wire [1:0] io_axi_mgmt_b_bits_resp;
	input io_read_address_ready;
	output wire io_read_address_valid;
	output wire [63:0] io_read_address_bits;
	output wire io_read_data_ready;
	input io_read_data_valid;
	input [511:0] io_read_data_bits;
	output wire [3:0] io_read_burst_len;
	input io_write_address_ready;
	output wire io_write_address_valid;
	output wire [63:0] io_write_address_bits;
	input io_write_data_ready;
	output wire io_write_data_valid;
	output wire [511:0] io_write_data_bits;
	output wire [3:0] io_write_burst_len;
	output wire io_write_last;
	input io_ntwDataUnitOccupancy;
	output wire io_paused;
	input [7:0] io_lengths_of_hardware_queues_0;
	wire _taskQueueBuffer_io_enq_ready;
	wire [511:0] _taskQueueBuffer_io_deq_bits;
	wire [4:0] _taskQueueBuffer_io_count;
	wire _wrRespQueue__io_enq_ready;
	wire _wrRespQueue__io_deq_valid;
	wire _wrReqData__deq_q_io_enq_ready;
	wire _wrReqData__deq_q_io_deq_valid;
	wire [63:0] _wrReqData__deq_q_io_deq_bits_data;
	wire [7:0] _wrReqData__deq_q_io_deq_bits_strb;
	wire _wrReq__deq_q_io_enq_ready;
	wire _wrReq__deq_q_io_deq_valid;
	wire [5:0] _wrReq__deq_q_io_deq_bits_addr;
	wire _rdRespQueue__io_enq_ready;
	wire _rdRespQueue__io_deq_valid;
	wire [63:0] _rdRespQueue__io_deq_bits_data;
	wire [1:0] _rdRespQueue__io_deq_bits_resp;
	wire _rdReq__deq_q_io_enq_ready;
	wire _rdReq__deq_q_io_deq_valid;
	wire [5:0] _rdReq__deq_q_io_deq_bits_addr;
	wire _s_axil__sinkBuffer_1_io_enq_ready;
	wire _s_axil__sourceBuffer_2_io_deq_valid;
	wire [63:0] _s_axil__sourceBuffer_2_io_deq_bits_data;
	wire [7:0] _s_axil__sourceBuffer_2_io_deq_bits_strb;
	wire _s_axil__sourceBuffer_1_io_deq_valid;
	wire [5:0] _s_axil__sourceBuffer_1_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_1_io_deq_bits_prot;
	wire _s_axil__sinkBuffer_io_enq_ready;
	wire _s_axil__sourceBuffer_io_deq_valid;
	wire [5:0] _s_axil__sourceBuffer_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_io_deq_bits_prot;
	wire rdReq = _rdReq__deq_q_io_deq_valid & _rdRespQueue__io_enq_ready;
	wire wrReq = (_wrReq__deq_q_io_deq_valid & _wrReqData__deq_q_io_deq_valid) & _wrRespQueue__io_enq_ready;
	reg [63:0] rAddr;
	reg [63:0] rPause;
	reg [63:0] procInterrupt;
	reg [63:0] maxLength;
	reg [3:0] stateReg;
	reg [63:0] currLen;
	reg [63:0] contentionCounter;
	reg networkCongested;
	reg [63:0] fifoTailReg;
	reg [63:0] fifoHeadReg;
	reg [4:0] memDataCounter;
	reg [63:0] queuesUtil;
	wire _GEN = stateReg == 4'h2;
	wire _GEN_0 = stateReg == 4'h4;
	wire _GEN_1 = stateReg == 4'h3;
	wire _GEN_2 = memDataCounter == 5'h01;
	wire _GEN_3 = _GEN | _GEN_0;
	wire _GEN_4 = stateReg == 4'h6;
	wire _GEN_5 = stateReg == 4'h5;
	wire _GEN_6 = (_GEN_0 | _GEN_1) | _GEN_4;
	wire _GEN_7 = _GEN | _GEN_6;
	wire _GEN_8 = stateReg == 4'h7;
	wire _GEN_9 = (_GEN | _GEN_0) | _GEN_1;
	wire _GEN_10 = _GEN_9 | ~_GEN_4;
	wire _GEN_11 = _GEN_4 | _GEN_5;
	wire [511:0] _GEN_12 = {queuesUtil, currLen, procInterrupt, fifoHeadReg, fifoTailReg, maxLength, rAddr, rPause};
	always @(posedge clock)
		if (reset) begin
			rAddr <= 64'h0000000000000000;
			rPause <= 64'h0000000000000000;
			procInterrupt <= 64'h0000000000000000;
			maxLength <= 64'h0000000000000000;
			stateReg <= 4'h0;
			currLen <= 64'h0000000000000000;
			contentionCounter <= 64'h0000000000000000;
			networkCongested <= 1'h0;
			fifoTailReg <= 64'h0000000000000000;
			fifoHeadReg <= 64'h0000000000000000;
			memDataCounter <= 5'h00;
			queuesUtil <= 64'h0000000000000000;
		end
		else begin : sv2v_autoblock_1
			reg _GEN_13;
			reg _GEN_14;
			reg _GEN_15;
			reg [63:0] _GEN_16;
			reg _GEN_17;
			reg _GEN_18;
			reg _GEN_19;
			reg [63:0] _GEN_20;
			_GEN_19 = rPause == 64'h0000000000000000;
			_GEN_13 = stateReg == 4'h0;
			_GEN_14 = ((currLen == maxLength) & networkCongested) | (maxLength < (currLen + 64'h0000000000000010));
			_GEN_15 = io_write_data_ready & _GEN_2;
			_GEN_16 = maxLength - 64'h0000000000000001;
			_GEN_17 = _GEN_13 | _GEN_3;
			_GEN_18 = io_read_data_valid & _GEN_2;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h1))
				rAddr <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : rAddr[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : rAddr[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : rAddr[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : rAddr[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : rAddr[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : rAddr[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : rAddr[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : rAddr[7:0])};
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h0))
				rPause <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : rPause[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : rPause[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : rPause[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : rPause[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : rPause[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : rPause[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : rPause[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : rPause[7:0])};
			else if (_GEN_13 & (|procInterrupt | _GEN_14))
				rPause <= 64'hffffffffffffffff;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h5))
				procInterrupt <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : procInterrupt[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : procInterrupt[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : procInterrupt[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : procInterrupt[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : procInterrupt[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : procInterrupt[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : procInterrupt[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : procInterrupt[7:0])};
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h2))
				maxLength <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : maxLength[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : maxLength[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : maxLength[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : maxLength[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : maxLength[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : maxLength[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : maxLength[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : maxLength[7:0])};
			_GEN_20 = {stateReg, stateReg, stateReg, stateReg, stateReg, (_GEN_19 ? 4'h0 : 4'ha), (_GEN_19 ? 4'h0 : 4'h9), (io_connNetwork_ctrl_serveStealReq_ready ? 4'h7 : (networkCongested | (|procInterrupt) ? 4'h0 : stateReg)), (io_connNetwork_data_qOutTask_ready | networkCongested ? 4'h0 : 4'h7), (io_read_address_ready ? 4'h5 : stateReg), (_GEN_18 ? 4'h8 : stateReg), (io_write_address_ready ? 4'h3 : stateReg), (_GEN_15 ? 4'h0 : stateReg), ((_taskQueueBuffer_io_count == 5'h0f) & io_connNetwork_data_availableTask_valid ? 4'h4 : (io_connNetwork_data_availableTask_valid & networkCongested ? 4'h2 : (networkCongested ? stateReg : 4'h0))), stateReg, (|procInterrupt ? 4'ha : (_GEN_14 ? 4'h9 : (networkCongested & (_taskQueueBuffer_io_count == 5'h10) ? 4'h4 : (networkCongested ? 4'h2 : ((~networkCongested & |currLen) & ~(|_taskQueueBuffer_io_count) ? 4'h6 : (~networkCongested & |_taskQueueBuffer_io_count ? 4'h7 : stateReg))))))};
			stateReg <= _GEN_20[stateReg * 4+:4];
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h6))
				currLen <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : currLen[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : currLen[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : currLen[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : currLen[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : currLen[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : currLen[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : currLen[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : currLen[7:0])};
			else if (~_GEN_17) begin
				if (_GEN_1) begin
					if (_GEN_15)
						currLen <= currLen + 64'h0000000000000001;
					else if (io_write_data_ready)
						currLen <= currLen + 64'h0000000000000001;
				end
				else if (_GEN_4 | ~_GEN_5)
					;
				else if (_GEN_18)
					currLen <= currLen - 64'h0000000000000001;
				else if (io_read_data_valid)
					currLen <= currLen - 64'h0000000000000001;
			end
			if ((~io_connNetwork_ctrl_serveStealReq_ready & io_ntwDataUnitOccupancy) & (contentionCounter != 64'h0000000000000002))
				contentionCounter <= contentionCounter + 64'h0000000000000001;
			else if ((io_connNetwork_ctrl_serveStealReq_ready & |contentionCounter) & ~io_ntwDataUnitOccupancy)
				contentionCounter <= contentionCounter - 64'h0000000000000001;
			networkCongested <= |contentionCounter | (|contentionCounter & networkCongested);
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h3))
				fifoTailReg <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : fifoTailReg[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : fifoTailReg[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : fifoTailReg[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : fifoTailReg[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : fifoTailReg[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : fifoTailReg[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : fifoTailReg[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : fifoTailReg[7:0])};
			else if (_GEN_17 | ~_GEN_1)
				;
			else begin : sv2v_autoblock_2
				reg _GEN_21;
				_GEN_21 = fifoTailReg < _GEN_16;
				if (_GEN_15) begin
					if (_GEN_21)
						fifoTailReg <= fifoTailReg + 64'h0000000000000001;
					else
						fifoTailReg <= 64'h0000000000000000;
				end
				else if (io_write_data_ready) begin
					if (_GEN_21)
						fifoTailReg <= fifoTailReg + 64'h0000000000000001;
					else
						fifoTailReg <= 64'h0000000000000000;
				end
			end
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h4))
				fifoHeadReg <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : fifoHeadReg[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : fifoHeadReg[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : fifoHeadReg[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : fifoHeadReg[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : fifoHeadReg[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : fifoHeadReg[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : fifoHeadReg[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : fifoHeadReg[7:0])};
			else if ((_GEN_13 | _GEN_7) | ~_GEN_5)
				;
			else begin : sv2v_autoblock_3
				reg _GEN_22;
				_GEN_22 = fifoHeadReg < _GEN_16;
				if (_GEN_18) begin
					if (_GEN_22)
						fifoHeadReg <= fifoHeadReg + 64'h0000000000000001;
					else
						fifoHeadReg <= 64'h0000000000000000;
				end
				else if (io_read_data_valid) begin
					if (_GEN_22)
						fifoHeadReg <= fifoHeadReg + 64'h0000000000000001;
					else
						fifoHeadReg <= 64'h0000000000000000;
				end
			end
			if (~(_GEN_13 | _GEN)) begin
				if (_GEN_0) begin
					if (io_write_address_ready)
						memDataCounter <= 5'h10;
				end
				else if (_GEN_1) begin
					if (_GEN_15 | ~io_write_data_ready)
						;
					else
						memDataCounter <= memDataCounter - 5'h01;
				end
				else if (_GEN_4) begin
					if (io_read_address_ready)
						memDataCounter <= (currLen < 64'h0000000000000010 ? currLen[4:0] : 5'h10);
				end
				else if ((~_GEN_5 | _GEN_18) | ~io_read_data_valid)
					;
				else
					memDataCounter <= memDataCounter - 5'h01;
			end
			if (wrReq & (&_wrReq__deq_q_io_deq_bits_addr[5:3]))
				queuesUtil <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : queuesUtil[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : queuesUtil[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : queuesUtil[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : queuesUtil[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : queuesUtil[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : queuesUtil[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : queuesUtil[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : queuesUtil[7:0])};
			else
				queuesUtil <= {56'h00000000000000, io_lengths_of_hardware_queues_0};
		end
	Queue2_AddressChannel s_axil__sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_axi_mgmt_ar_ready),
		.io_enq_valid(io_axi_mgmt_ar_valid),
		.io_enq_bits_addr(io_axi_mgmt_ar_bits_addr),
		.io_enq_bits_prot(io_axi_mgmt_ar_bits_prot),
		.io_deq_ready(_rdReq__deq_q_io_enq_ready),
		.io_deq_valid(_s_axil__sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_s_axil__sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_prot(_s_axil__sourceBuffer_io_deq_bits_prot)
	);
	Queue2_ReadDataChannel s_axil__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_s_axil__sinkBuffer_io_enq_ready),
		.io_enq_valid(_rdRespQueue__io_deq_valid),
		.io_enq_bits_data(_rdRespQueue__io_deq_bits_data),
		.io_enq_bits_resp(_rdRespQueue__io_deq_bits_resp),
		.io_deq_ready(io_axi_mgmt_r_ready),
		.io_deq_valid(io_axi_mgmt_r_valid),
		.io_deq_bits_data(io_axi_mgmt_r_bits_data),
		.io_deq_bits_resp(io_axi_mgmt_r_bits_resp)
	);
	Queue2_AddressChannel s_axil__sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_axi_mgmt_aw_ready),
		.io_enq_valid(io_axi_mgmt_aw_valid),
		.io_enq_bits_addr(io_axi_mgmt_aw_bits_addr),
		.io_enq_bits_prot(io_axi_mgmt_aw_bits_prot),
		.io_deq_ready(_wrReq__deq_q_io_enq_ready),
		.io_deq_valid(_s_axil__sourceBuffer_1_io_deq_valid),
		.io_deq_bits_addr(_s_axil__sourceBuffer_1_io_deq_bits_addr),
		.io_deq_bits_prot(_s_axil__sourceBuffer_1_io_deq_bits_prot)
	);
	Queue2_WriteDataChannel s_axil__sourceBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_axi_mgmt_w_ready),
		.io_enq_valid(io_axi_mgmt_w_valid),
		.io_enq_bits_data(io_axi_mgmt_w_bits_data),
		.io_enq_bits_strb(io_axi_mgmt_w_bits_strb),
		.io_deq_ready(_wrReqData__deq_q_io_enq_ready),
		.io_deq_valid(_s_axil__sourceBuffer_2_io_deq_valid),
		.io_deq_bits_data(_s_axil__sourceBuffer_2_io_deq_bits_data),
		.io_deq_bits_strb(_s_axil__sourceBuffer_2_io_deq_bits_strb)
	);
	Queue2_WriteResponseChannel s_axil__sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_s_axil__sinkBuffer_1_io_enq_ready),
		.io_enq_valid(_wrRespQueue__io_deq_valid),
		.io_enq_bits_resp(2'h0),
		.io_deq_ready(io_axi_mgmt_b_ready),
		.io_deq_valid(io_axi_mgmt_b_valid),
		.io_deq_bits_resp(io_axi_mgmt_b_bits_resp)
	);
	Queue1_AddressChannel rdReq__deq_q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_rdReq__deq_q_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_io_deq_valid),
		.io_enq_bits_addr(_s_axil__sourceBuffer_io_deq_bits_addr),
		.io_enq_bits_prot(_s_axil__sourceBuffer_io_deq_bits_prot),
		.io_deq_ready(rdReq),
		.io_deq_valid(_rdReq__deq_q_io_deq_valid),
		.io_deq_bits_addr(_rdReq__deq_q_io_deq_bits_addr)
	);
	Queue1_ReadDataChannel rdRespQueue_(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_rdRespQueue__io_enq_ready),
		.io_enq_valid(rdReq),
		.io_enq_bits_data(_GEN_12[_rdReq__deq_q_io_deq_bits_addr[5:3] * 64+:64]),
		.io_deq_ready(_s_axil__sinkBuffer_io_enq_ready),
		.io_deq_valid(_rdRespQueue__io_deq_valid),
		.io_deq_bits_data(_rdRespQueue__io_deq_bits_data),
		.io_deq_bits_resp(_rdRespQueue__io_deq_bits_resp)
	);
	Queue1_AddressChannel wrReq__deq_q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_wrReq__deq_q_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_1_io_deq_valid),
		.io_enq_bits_addr(_s_axil__sourceBuffer_1_io_deq_bits_addr),
		.io_enq_bits_prot(_s_axil__sourceBuffer_1_io_deq_bits_prot),
		.io_deq_ready(wrReq),
		.io_deq_valid(_wrReq__deq_q_io_deq_valid),
		.io_deq_bits_addr(_wrReq__deq_q_io_deq_bits_addr)
	);
	Queue1_WriteDataChannel wrReqData__deq_q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_wrReqData__deq_q_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_2_io_deq_valid),
		.io_enq_bits_data(_s_axil__sourceBuffer_2_io_deq_bits_data),
		.io_enq_bits_strb(_s_axil__sourceBuffer_2_io_deq_bits_strb),
		.io_deq_ready(wrReq),
		.io_deq_valid(_wrReqData__deq_q_io_deq_valid),
		.io_deq_bits_data(_wrReqData__deq_q_io_deq_bits_data),
		.io_deq_bits_strb(_wrReqData__deq_q_io_deq_bits_strb)
	);
	Queue1_WriteResponseChannel wrRespQueue_(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_wrRespQueue__io_enq_ready),
		.io_enq_valid(wrReq),
		.io_deq_ready(_s_axil__sinkBuffer_1_io_enq_ready),
		.io_deq_valid(_wrRespQueue__io_deq_valid)
	);
	Queue16_UInt taskQueueBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_taskQueueBuffer_io_enq_ready),
		.io_enq_valid((_GEN ? io_connNetwork_data_availableTask_valid : (~_GEN_6 & _GEN_5) & io_read_data_valid)),
		.io_enq_bits((_GEN ? io_connNetwork_data_availableTask_bits : (_GEN_6 | ~_GEN_5 ? 512'h0 : io_read_data_bits))),
		.io_deq_ready(~_GEN_3 & (_GEN_1 ? io_write_data_ready : (~_GEN_11 & _GEN_8) & io_connNetwork_data_qOutTask_ready)),
		.io_deq_bits(_taskQueueBuffer_io_deq_bits),
		.io_count(_taskQueueBuffer_io_count)
	);
	assign io_connNetwork_ctrl_serveStealReq_valid = ~(((((_GEN | _GEN_0) | _GEN_1) | _GEN_4) | _GEN_5) | _GEN_8) & (stateReg == 4'h8);
	assign io_connNetwork_data_availableTask_ready = _GEN & _taskQueueBuffer_io_enq_ready;
	assign io_connNetwork_data_qOutTask_valid = ~(((_GEN | _GEN_0) | _GEN_1) | _GEN_11) & _GEN_8;
	assign io_connNetwork_data_qOutTask_bits = _taskQueueBuffer_io_deq_bits;
	assign io_read_address_valid = ~_GEN_9 & _GEN_4;
	assign io_read_address_bits = (_GEN_10 ? 64'h0000000000000000 : {fifoHeadReg[57:0], 6'h00} + rAddr);
	assign io_read_data_ready = ~_GEN_7 & _GEN_5;
	assign io_read_burst_len = (_GEN_10 ? 4'h0 : (currLen < 64'h0000000000000010 ? currLen[3:0] - 4'h1 : 4'hf));
	assign io_write_address_valid = ~_GEN & _GEN_0;
	assign io_write_address_bits = (_GEN | ~_GEN_0 ? 64'h0000000000000000 : {fifoTailReg[57:0], 6'h00} + rAddr);
	assign io_write_data_valid = ~_GEN_3 & _GEN_1;
	assign io_write_data_bits = _taskQueueBuffer_io_deq_bits;
	assign io_write_burst_len = (_GEN ? 4'h0 : {4 {_GEN_0}});
	assign io_write_last = (~_GEN_3 & _GEN_1) & _GEN_2;
	assign io_paused = rPause[0];
endmodule
module RVtoAXIBridge (
	clock,
	reset,
	io_read_address_ready,
	io_read_address_valid,
	io_read_address_bits,
	io_read_data_ready,
	io_read_data_valid,
	io_read_data_bits,
	io_write_address_ready,
	io_write_address_valid,
	io_write_address_bits,
	io_write_data_ready,
	io_write_data_valid,
	io_write_data_bits,
	io_writeBurst_len,
	io_writeBurst_last,
	io_readBurst_len,
	axi_ar_ready,
	axi_ar_valid,
	axi_ar_bits_addr,
	axi_ar_bits_len,
	axi_r_ready,
	axi_r_valid,
	axi_r_bits_data,
	axi_aw_ready,
	axi_aw_valid,
	axi_aw_bits_addr,
	axi_aw_bits_len,
	axi_w_ready,
	axi_w_valid,
	axi_w_bits_data,
	axi_w_bits_last,
	axi_b_valid
);
	input clock;
	input reset;
	output wire io_read_address_ready;
	input io_read_address_valid;
	input [63:0] io_read_address_bits;
	input io_read_data_ready;
	output wire io_read_data_valid;
	output wire [511:0] io_read_data_bits;
	output wire io_write_address_ready;
	input io_write_address_valid;
	input [63:0] io_write_address_bits;
	output wire io_write_data_ready;
	input io_write_data_valid;
	input [511:0] io_write_data_bits;
	input [3:0] io_writeBurst_len;
	input io_writeBurst_last;
	input [3:0] io_readBurst_len;
	input axi_ar_ready;
	output wire axi_ar_valid;
	output wire [63:0] axi_ar_bits_addr;
	output wire [7:0] axi_ar_bits_len;
	output wire axi_r_ready;
	input axi_r_valid;
	input [511:0] axi_r_bits_data;
	input axi_aw_ready;
	output wire axi_aw_valid;
	output wire [63:0] axi_aw_bits_addr;
	output wire [7:0] axi_aw_bits_len;
	input axi_w_ready;
	output wire axi_w_valid;
	output wire [511:0] axi_w_bits_data;
	output wire axi_w_bits_last;
	input axi_b_valid;
	reg writeHandshakeDetector;
	wire axi_w_valid_0 = (io_write_data_valid & axi_w_ready) & ~writeHandshakeDetector;
	always @(posedge clock)
		if (reset)
			writeHandshakeDetector <= 1'h0;
		else if (axi_w_valid_0)
			writeHandshakeDetector <= io_writeBurst_last | writeHandshakeDetector;
		else
			writeHandshakeDetector <= ~axi_b_valid & writeHandshakeDetector;
	assign io_read_address_ready = axi_ar_ready;
	assign io_read_data_valid = axi_r_valid;
	assign io_read_data_bits = axi_r_bits_data;
	assign io_write_address_ready = axi_aw_ready;
	assign io_write_data_ready = axi_w_ready & ~writeHandshakeDetector;
	assign axi_ar_valid = io_read_address_valid;
	assign axi_ar_bits_addr = io_read_address_bits;
	assign axi_ar_bits_len = {4'h0, io_readBurst_len};
	assign axi_r_ready = io_read_data_ready;
	assign axi_aw_valid = io_write_address_valid;
	assign axi_aw_bits_addr = io_write_address_bits;
	assign axi_aw_bits_len = {4'h0, io_writeBurst_len};
	assign axi_w_valid = axi_w_valid_0;
	assign axi_w_bits_data = io_write_data_bits;
	assign axi_w_bits_last = io_writeBurst_last;
endmodule
module Counter (
	clock,
	reset,
	io_incEn,
	io_decEn,
	io_empty,
	io_full
);
	input clock;
	input reset;
	input io_incEn;
	input io_decEn;
	output wire io_empty;
	output wire io_full;
	reg rCounter;
	always @(posedge clock)
		if (reset)
			rCounter <= 1'h0;
		else if (~(io_incEn & io_decEn)) begin
			if (io_incEn)
				rCounter <= rCounter - 1'h1;
			else if (io_decEn)
				rCounter <= rCounter - 1'h1;
		end
	assign io_empty = ~rCounter;
	assign io_full = rCounter;
endmodule
module ram_2x93 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [92:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [92:0] W0_data;
	reg [92:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 93'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_WriteAddressChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [92:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x93 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[63:0];
	assign io_deq_bits_len = _ram_ext_R0_data[71:64];
	assign io_deq_bits_size = _ram_ext_R0_data[74:72];
	assign io_deq_bits_burst = _ram_ext_R0_data[76:75];
	assign io_deq_bits_lock = _ram_ext_R0_data[77];
	assign io_deq_bits_cache = _ram_ext_R0_data[81:78];
	assign io_deq_bits_prot = _ram_ext_R0_data[84:82];
	assign io_deq_bits_qos = _ram_ext_R0_data[88:85];
	assign io_deq_bits_region = _ram_ext_R0_data[92:89];
endmodule
module Queue2_ReadAddressChannel (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [92:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x93 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[63:0];
	assign io_deq_bits_len = _ram_ext_R0_data[71:64];
	assign io_deq_bits_size = _ram_ext_R0_data[74:72];
	assign io_deq_bits_burst = _ram_ext_R0_data[76:75];
	assign io_deq_bits_lock = _ram_ext_R0_data[77];
	assign io_deq_bits_cache = _ram_ext_R0_data[81:78];
	assign io_deq_bits_prot = _ram_ext_R0_data[84:82];
	assign io_deq_bits_qos = _ram_ext_R0_data[88:85];
	assign io_deq_bits_region = _ram_ext_R0_data[92:89];
endmodule
module AxiWriteBuffer (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_last,
	s_axi_b_valid,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_last,
	m_axi_b_valid
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [511:0] s_axi_r_bits_data;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input s_axi_w_bits_last;
	output wire s_axi_b_valid;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [511:0] m_axi_r_bits_data;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [511:0] m_axi_w_bits_data;
	output wire m_axi_w_bits_last;
	input m_axi_b_valid;
	wire s_axi_aw_ready_0;
	wire _sinkBuffered__sinkBuffer_1_io_enq_ready;
	wire _sinkBuffered__sinkBuffer_io_enq_ready;
	wire _counter_io_empty;
	wire _counter_io_full;
	wire _counter_io_incEn_T = s_axi_aw_ready_0 & s_axi_aw_valid;
	assign s_axi_aw_ready_0 = (_sinkBuffered__sinkBuffer_io_enq_ready & s_axi_aw_valid) & ~_counter_io_full;
	wire s_axi_ar_ready_0 = ((_sinkBuffered__sinkBuffer_1_io_enq_ready & s_axi_ar_valid) & _counter_io_empty) & ~_counter_io_incEn_T;
	Counter counter(
		.clock(clock),
		.reset(reset),
		.io_incEn(_counter_io_incEn_T),
		.io_decEn(m_axi_b_valid),
		.io_empty(_counter_io_empty),
		.io_full(_counter_io_full)
	);
	Queue2_WriteAddressChannel sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(s_axi_aw_ready_0),
		.io_enq_bits_addr(s_axi_aw_bits_addr),
		.io_enq_bits_len(s_axi_aw_bits_len),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(m_axi_aw_ready),
		.io_deq_valid(m_axi_aw_valid),
		.io_deq_bits_addr(m_axi_aw_bits_addr),
		.io_deq_bits_len(m_axi_aw_bits_len),
		.io_deq_bits_size(m_axi_aw_bits_size),
		.io_deq_bits_burst(m_axi_aw_bits_burst),
		.io_deq_bits_lock(m_axi_aw_bits_lock),
		.io_deq_bits_cache(m_axi_aw_bits_cache),
		.io_deq_bits_prot(m_axi_aw_bits_prot),
		.io_deq_bits_qos(m_axi_aw_bits_qos),
		.io_deq_bits_region(m_axi_aw_bits_region)
	);
	Queue2_ReadAddressChannel sinkBuffered__sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffered__sinkBuffer_1_io_enq_ready),
		.io_enq_valid(s_axi_ar_ready_0),
		.io_enq_bits_addr(s_axi_ar_bits_addr),
		.io_enq_bits_len(s_axi_ar_bits_len),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(m_axi_ar_ready),
		.io_deq_valid(m_axi_ar_valid),
		.io_deq_bits_addr(m_axi_ar_bits_addr),
		.io_deq_bits_len(m_axi_ar_bits_len),
		.io_deq_bits_size(m_axi_ar_bits_size),
		.io_deq_bits_burst(m_axi_ar_bits_burst),
		.io_deq_bits_lock(m_axi_ar_bits_lock),
		.io_deq_bits_cache(m_axi_ar_bits_cache),
		.io_deq_bits_prot(m_axi_ar_bits_prot),
		.io_deq_bits_qos(m_axi_ar_bits_qos),
		.io_deq_bits_region(m_axi_ar_bits_region)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_r_valid = m_axi_r_valid;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = m_axi_b_valid;
	assign m_axi_r_ready = s_axi_r_ready;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
endmodule
module AxisDataWidthConverter (
	io_dataIn_TREADY,
	io_dataIn_TVALID,
	io_dataIn_TDATA,
	io_dataOut_TREADY,
	io_dataOut_TVALID,
	io_dataOut_TDATA
);
	output wire io_dataIn_TREADY;
	input io_dataIn_TVALID;
	input [511:0] io_dataIn_TDATA;
	input io_dataOut_TREADY;
	output wire io_dataOut_TVALID;
	output wire [511:0] io_dataOut_TDATA;
	assign io_dataIn_TREADY = io_dataOut_TREADY;
	assign io_dataOut_TVALID = io_dataIn_TVALID;
	assign io_dataOut_TDATA = io_dataIn_TDATA;
endmodule
module GlobalTaskBuffer (
	clock,
	reset,
	io_in_ready,
	io_in_valid,
	io_in_bits,
	io_connStealNtw_ctrl_serveStealReq_valid,
	io_connStealNtw_ctrl_serveStealReq_ready,
	io_connStealNtw_data_qOutTask_ready,
	io_connStealNtw_data_qOutTask_valid,
	io_connStealNtw_data_qOutTask_bits
);
	input clock;
	input reset;
	output wire io_in_ready;
	input io_in_valid;
	input [511:0] io_in_bits;
	output wire io_connStealNtw_ctrl_serveStealReq_valid;
	input io_connStealNtw_ctrl_serveStealReq_ready;
	input io_connStealNtw_data_qOutTask_ready;
	output wire io_connStealNtw_data_qOutTask_valid;
	output wire [511:0] io_connStealNtw_data_qOutTask_bits;
	reg [511:0] buffer;
	reg stateReg;
	reg [31:0] tasksGivenAwayCount;
	wire io_connStealNtw_ctrl_serveStealReq_valid_0 = |tasksGivenAwayCount & (stateReg | ~io_in_valid);
	always @(posedge clock)
		if (reset) begin
			buffer <= 512'h0;
			stateReg <= 1'h0;
			tasksGivenAwayCount <= 32'h00000000;
		end
		else begin
			if (~stateReg & io_in_valid)
				buffer <= io_in_bits;
			if (stateReg)
				stateReg <= ~(stateReg & io_connStealNtw_data_qOutTask_ready) & stateReg;
			else
				stateReg <= io_in_valid | stateReg;
			if (io_connStealNtw_ctrl_serveStealReq_valid_0 & io_connStealNtw_ctrl_serveStealReq_ready)
				tasksGivenAwayCount <= tasksGivenAwayCount - 32'h00000001;
			else if ((~stateReg & io_in_valid) & (tasksGivenAwayCount == 32'h00000000))
				tasksGivenAwayCount <= tasksGivenAwayCount + 32'h00000001;
		end
	assign io_in_ready = ~stateReg;
	assign io_connStealNtw_ctrl_serveStealReq_valid = io_connStealNtw_ctrl_serveStealReq_valid_0;
	assign io_connStealNtw_data_qOutTask_valid = stateReg;
	assign io_connStealNtw_data_qOutTask_bits = buffer;
endmodule
module Scheduler (
	clock,
	reset,
	spawnerServerMgmt_0_ar_ready,
	spawnerServerMgmt_0_ar_valid,
	spawnerServerMgmt_0_ar_bits_addr,
	spawnerServerMgmt_0_ar_bits_prot,
	spawnerServerMgmt_0_r_ready,
	spawnerServerMgmt_0_r_valid,
	spawnerServerMgmt_0_r_bits_data,
	spawnerServerMgmt_0_r_bits_resp,
	spawnerServerMgmt_0_aw_ready,
	spawnerServerMgmt_0_aw_valid,
	spawnerServerMgmt_0_aw_bits_addr,
	spawnerServerMgmt_0_aw_bits_prot,
	spawnerServerMgmt_0_w_ready,
	spawnerServerMgmt_0_w_valid,
	spawnerServerMgmt_0_w_bits_data,
	spawnerServerMgmt_0_w_bits_strb,
	spawnerServerMgmt_0_b_ready,
	spawnerServerMgmt_0_b_valid,
	spawnerServerMgmt_0_b_bits_resp,
	spawnerServerAXI_0_ar_ready,
	spawnerServerAXI_0_ar_valid,
	spawnerServerAXI_0_ar_bits_addr,
	spawnerServerAXI_0_ar_bits_len,
	spawnerServerAXI_0_r_ready,
	spawnerServerAXI_0_r_valid,
	spawnerServerAXI_0_r_bits_data,
	spawnerServerAXI_0_r_bits_last,
	spawnerServerAXI_0_aw_ready,
	spawnerServerAXI_0_aw_valid,
	spawnerServerAXI_0_aw_bits_addr,
	spawnerServerAXI_0_aw_bits_len,
	spawnerServerAXI_0_w_ready,
	spawnerServerAXI_0_w_valid,
	spawnerServerAXI_0_w_bits_data,
	spawnerServerAXI_0_w_bits_last,
	spawnerServerAXI_0_b_ready,
	spawnerServerAXI_0_b_valid,
	io_export_taskOut_0_TREADY,
	io_export_taskOut_0_TVALID,
	io_export_taskOut_0_TDATA,
	io_export_taskInGlobal_0_TREADY,
	io_export_taskInGlobal_0_TVALID,
	io_export_taskInGlobal_0_TDATA,
	io_internal_vss_axi_full_0_ar_ready,
	io_internal_vss_axi_full_0_ar_valid,
	io_internal_vss_axi_full_0_ar_bits_addr,
	io_internal_vss_axi_full_0_ar_bits_len,
	io_internal_vss_axi_full_0_ar_bits_size,
	io_internal_vss_axi_full_0_ar_bits_burst,
	io_internal_vss_axi_full_0_ar_bits_lock,
	io_internal_vss_axi_full_0_ar_bits_cache,
	io_internal_vss_axi_full_0_ar_bits_prot,
	io_internal_vss_axi_full_0_ar_bits_qos,
	io_internal_vss_axi_full_0_ar_bits_region,
	io_internal_vss_axi_full_0_r_ready,
	io_internal_vss_axi_full_0_r_valid,
	io_internal_vss_axi_full_0_r_bits_data,
	io_internal_vss_axi_full_0_aw_ready,
	io_internal_vss_axi_full_0_aw_valid,
	io_internal_vss_axi_full_0_aw_bits_addr,
	io_internal_vss_axi_full_0_aw_bits_len,
	io_internal_vss_axi_full_0_aw_bits_size,
	io_internal_vss_axi_full_0_aw_bits_burst,
	io_internal_vss_axi_full_0_aw_bits_lock,
	io_internal_vss_axi_full_0_aw_bits_cache,
	io_internal_vss_axi_full_0_aw_bits_prot,
	io_internal_vss_axi_full_0_aw_bits_qos,
	io_internal_vss_axi_full_0_aw_bits_region,
	io_internal_vss_axi_full_0_w_ready,
	io_internal_vss_axi_full_0_w_valid,
	io_internal_vss_axi_full_0_w_bits_data,
	io_internal_vss_axi_full_0_w_bits_last,
	io_internal_vss_axi_full_0_b_valid,
	io_internal_axi_mgmt_vss_0_ar_ready,
	io_internal_axi_mgmt_vss_0_ar_valid,
	io_internal_axi_mgmt_vss_0_ar_bits_addr,
	io_internal_axi_mgmt_vss_0_ar_bits_prot,
	io_internal_axi_mgmt_vss_0_r_ready,
	io_internal_axi_mgmt_vss_0_r_valid,
	io_internal_axi_mgmt_vss_0_r_bits_data,
	io_internal_axi_mgmt_vss_0_r_bits_resp,
	io_internal_axi_mgmt_vss_0_aw_ready,
	io_internal_axi_mgmt_vss_0_aw_valid,
	io_internal_axi_mgmt_vss_0_aw_bits_addr,
	io_internal_axi_mgmt_vss_0_aw_bits_prot,
	io_internal_axi_mgmt_vss_0_w_ready,
	io_internal_axi_mgmt_vss_0_w_valid,
	io_internal_axi_mgmt_vss_0_w_bits_data,
	io_internal_axi_mgmt_vss_0_w_bits_strb,
	io_internal_axi_mgmt_vss_0_b_ready,
	io_internal_axi_mgmt_vss_0_b_valid,
	io_internal_axi_mgmt_vss_0_b_bits_resp,
	io_paused
);
	input clock;
	input reset;
	output wire spawnerServerMgmt_0_ar_ready;
	input spawnerServerMgmt_0_ar_valid;
	input [5:0] spawnerServerMgmt_0_ar_bits_addr;
	input [2:0] spawnerServerMgmt_0_ar_bits_prot;
	input spawnerServerMgmt_0_r_ready;
	output wire spawnerServerMgmt_0_r_valid;
	output wire [63:0] spawnerServerMgmt_0_r_bits_data;
	output wire [1:0] spawnerServerMgmt_0_r_bits_resp;
	output wire spawnerServerMgmt_0_aw_ready;
	input spawnerServerMgmt_0_aw_valid;
	input [5:0] spawnerServerMgmt_0_aw_bits_addr;
	input [2:0] spawnerServerMgmt_0_aw_bits_prot;
	output wire spawnerServerMgmt_0_w_ready;
	input spawnerServerMgmt_0_w_valid;
	input [63:0] spawnerServerMgmt_0_w_bits_data;
	input [7:0] spawnerServerMgmt_0_w_bits_strb;
	input spawnerServerMgmt_0_b_ready;
	output wire spawnerServerMgmt_0_b_valid;
	output wire [1:0] spawnerServerMgmt_0_b_bits_resp;
	input spawnerServerAXI_0_ar_ready;
	output wire spawnerServerAXI_0_ar_valid;
	output wire [63:0] spawnerServerAXI_0_ar_bits_addr;
	output wire [7:0] spawnerServerAXI_0_ar_bits_len;
	output wire spawnerServerAXI_0_r_ready;
	input spawnerServerAXI_0_r_valid;
	input [511:0] spawnerServerAXI_0_r_bits_data;
	input spawnerServerAXI_0_r_bits_last;
	input spawnerServerAXI_0_aw_ready;
	output wire spawnerServerAXI_0_aw_valid;
	output wire [63:0] spawnerServerAXI_0_aw_bits_addr;
	output wire [7:0] spawnerServerAXI_0_aw_bits_len;
	input spawnerServerAXI_0_w_ready;
	output wire spawnerServerAXI_0_w_valid;
	output wire [511:0] spawnerServerAXI_0_w_bits_data;
	output wire spawnerServerAXI_0_w_bits_last;
	output wire spawnerServerAXI_0_b_ready;
	input spawnerServerAXI_0_b_valid;
	input io_export_taskOut_0_TREADY;
	output wire io_export_taskOut_0_TVALID;
	output wire [511:0] io_export_taskOut_0_TDATA;
	output wire io_export_taskInGlobal_0_TREADY;
	input io_export_taskInGlobal_0_TVALID;
	input [511:0] io_export_taskInGlobal_0_TDATA;
	input io_internal_vss_axi_full_0_ar_ready;
	output wire io_internal_vss_axi_full_0_ar_valid;
	output wire [63:0] io_internal_vss_axi_full_0_ar_bits_addr;
	output wire [7:0] io_internal_vss_axi_full_0_ar_bits_len;
	output wire [2:0] io_internal_vss_axi_full_0_ar_bits_size;
	output wire [1:0] io_internal_vss_axi_full_0_ar_bits_burst;
	output wire io_internal_vss_axi_full_0_ar_bits_lock;
	output wire [3:0] io_internal_vss_axi_full_0_ar_bits_cache;
	output wire [2:0] io_internal_vss_axi_full_0_ar_bits_prot;
	output wire [3:0] io_internal_vss_axi_full_0_ar_bits_qos;
	output wire [3:0] io_internal_vss_axi_full_0_ar_bits_region;
	output wire io_internal_vss_axi_full_0_r_ready;
	input io_internal_vss_axi_full_0_r_valid;
	input [511:0] io_internal_vss_axi_full_0_r_bits_data;
	input io_internal_vss_axi_full_0_aw_ready;
	output wire io_internal_vss_axi_full_0_aw_valid;
	output wire [63:0] io_internal_vss_axi_full_0_aw_bits_addr;
	output wire [7:0] io_internal_vss_axi_full_0_aw_bits_len;
	output wire [2:0] io_internal_vss_axi_full_0_aw_bits_size;
	output wire [1:0] io_internal_vss_axi_full_0_aw_bits_burst;
	output wire io_internal_vss_axi_full_0_aw_bits_lock;
	output wire [3:0] io_internal_vss_axi_full_0_aw_bits_cache;
	output wire [2:0] io_internal_vss_axi_full_0_aw_bits_prot;
	output wire [3:0] io_internal_vss_axi_full_0_aw_bits_qos;
	output wire [3:0] io_internal_vss_axi_full_0_aw_bits_region;
	input io_internal_vss_axi_full_0_w_ready;
	output wire io_internal_vss_axi_full_0_w_valid;
	output wire [511:0] io_internal_vss_axi_full_0_w_bits_data;
	output wire io_internal_vss_axi_full_0_w_bits_last;
	input io_internal_vss_axi_full_0_b_valid;
	output wire io_internal_axi_mgmt_vss_0_ar_ready;
	input io_internal_axi_mgmt_vss_0_ar_valid;
	input [5:0] io_internal_axi_mgmt_vss_0_ar_bits_addr;
	input [2:0] io_internal_axi_mgmt_vss_0_ar_bits_prot;
	input io_internal_axi_mgmt_vss_0_r_ready;
	output wire io_internal_axi_mgmt_vss_0_r_valid;
	output wire [63:0] io_internal_axi_mgmt_vss_0_r_bits_data;
	output wire [1:0] io_internal_axi_mgmt_vss_0_r_bits_resp;
	output wire io_internal_axi_mgmt_vss_0_aw_ready;
	input io_internal_axi_mgmt_vss_0_aw_valid;
	input [5:0] io_internal_axi_mgmt_vss_0_aw_bits_addr;
	input [2:0] io_internal_axi_mgmt_vss_0_aw_bits_prot;
	output wire io_internal_axi_mgmt_vss_0_w_ready;
	input io_internal_axi_mgmt_vss_0_w_valid;
	input [63:0] io_internal_axi_mgmt_vss_0_w_bits_data;
	input [7:0] io_internal_axi_mgmt_vss_0_w_bits_strb;
	input io_internal_axi_mgmt_vss_0_b_ready;
	output wire io_internal_axi_mgmt_vss_0_b_valid;
	output wire [1:0] io_internal_axi_mgmt_vss_0_b_bits_resp;
	output wire io_paused;
	wire _globalsTaskBuffers_0_io_in_ready;
	wire _globalsTaskBuffers_0_io_connStealNtw_ctrl_serveStealReq_valid;
	wire _globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_valid;
	wire [511:0] _globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_bits;
	wire _axis_stream_converters_in_global_0_io_dataOut_TVALID;
	wire [511:0] _axis_stream_converters_in_global_0_io_dataOut_TDATA;
	wire _axis_stream_converters_out_0_io_dataIn_TREADY;
	wire _module_s_axi_ar_ready;
	wire _module_s_axi_r_valid;
	wire [511:0] _module_s_axi_r_bits_data;
	wire _module_s_axi_aw_ready;
	wire _module_s_axi_w_ready;
	wire _module_s_axi_b_valid;
	wire _vssRvm_0_io_read_address_ready;
	wire _vssRvm_0_io_read_data_valid;
	wire [511:0] _vssRvm_0_io_read_data_bits;
	wire _vssRvm_0_io_write_address_ready;
	wire _vssRvm_0_io_write_data_ready;
	wire _vssRvm_0_axi_ar_valid;
	wire [63:0] _vssRvm_0_axi_ar_bits_addr;
	wire [7:0] _vssRvm_0_axi_ar_bits_len;
	wire _vssRvm_0_axi_r_ready;
	wire _vssRvm_0_axi_aw_valid;
	wire [63:0] _vssRvm_0_axi_aw_bits_addr;
	wire [7:0] _vssRvm_0_axi_aw_bits_len;
	wire _vssRvm_0_axi_w_valid;
	wire [511:0] _vssRvm_0_axi_w_bits_data;
	wire _vssRvm_0_axi_w_bits_last;
	wire _schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _schedulerServers_0_io_connNetwork_data_availableTask_ready;
	wire _schedulerServers_0_io_connNetwork_data_qOutTask_valid;
	wire [511:0] _schedulerServers_0_io_connNetwork_data_qOutTask_bits;
	wire _schedulerServers_0_io_read_address_valid;
	wire [63:0] _schedulerServers_0_io_read_address_bits;
	wire _schedulerServers_0_io_read_data_ready;
	wire [3:0] _schedulerServers_0_io_read_burst_len;
	wire _schedulerServers_0_io_write_address_valid;
	wire [63:0] _schedulerServers_0_io_write_address_bits;
	wire _schedulerServers_0_io_write_data_valid;
	wire [511:0] _schedulerServers_0_io_write_data_bits;
	wire [3:0] _schedulerServers_0_io_write_burst_len;
	wire _schedulerServers_0_io_write_last;
	wire _stealNW_TQ_io_connPE_0_pop_valid;
	wire [511:0] _stealNW_TQ_io_connPE_0_pop_bits;
	wire _stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVSS_0_data_availableTask_valid;
	wire [511:0] _stealNW_TQ_io_connVSS_0_data_availableTask_bits;
	wire _stealNW_TQ_io_connVSS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVAS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_ntwDataUnitOccupancyVSS_0;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_0;
	wire _getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid;
	wire [511:0] _getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits;
	wire _getOutsideSpawnNetwork_io_connSS_1_ctrl_serveStealReq_ready;
	wire _getOutsideSpawnNetwork_io_connSS_1_data_qOutTask_ready;
	wire _spawnerServer_0_io_connNetwork_slave_data_availableTask_ready;
	wire _spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid;
	wire _spawnerServer_0_io_connNetwork_master_data_qOutTask_valid;
	wire [511:0] _spawnerServer_0_io_connNetwork_master_data_qOutTask_bits;
	SpawnerServer spawnerServer_0(
		.clock(clock),
		.reset(reset),
		.io_m_axi_ARREADY(spawnerServerAXI_0_ar_ready),
		.io_m_axi_ARVALID(spawnerServerAXI_0_ar_valid),
		.io_m_axi_ARADDR(spawnerServerAXI_0_ar_bits_addr),
		.io_m_axi_ARLEN(spawnerServerAXI_0_ar_bits_len),
		.io_m_axi_RREADY(spawnerServerAXI_0_r_ready),
		.io_m_axi_RVALID(spawnerServerAXI_0_r_valid),
		.io_m_axi_RDATA(spawnerServerAXI_0_r_bits_data),
		.io_m_axi_RLAST(spawnerServerAXI_0_r_bits_last),
		.io_m_axi_AWREADY(spawnerServerAXI_0_aw_ready),
		.io_m_axi_AWVALID(spawnerServerAXI_0_aw_valid),
		.io_m_axi_AWADDR(spawnerServerAXI_0_aw_bits_addr),
		.io_m_axi_AWLEN(spawnerServerAXI_0_aw_bits_len),
		.io_m_axi_WREADY(spawnerServerAXI_0_w_ready),
		.io_m_axi_WVALID(spawnerServerAXI_0_w_valid),
		.io_m_axi_WDATA(spawnerServerAXI_0_w_bits_data),
		.io_m_axi_WLAST(spawnerServerAXI_0_w_bits_last),
		.io_m_axi_BREADY(spawnerServerAXI_0_b_ready),
		.io_m_axi_BVALID(spawnerServerAXI_0_b_valid),
		.io_connNetwork_slave_data_availableTask_ready(_spawnerServer_0_io_connNetwork_slave_data_availableTask_ready),
		.io_connNetwork_slave_data_availableTask_valid(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid),
		.io_connNetwork_slave_data_availableTask_bits(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits),
		.io_connNetwork_master_ctrl_serveStealReq_valid(_spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid),
		.io_connNetwork_master_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready),
		.io_connNetwork_master_data_qOutTask_ready(_stealNW_TQ_io_connVAS_0_data_qOutTask_ready),
		.io_connNetwork_master_data_qOutTask_valid(_spawnerServer_0_io_connNetwork_master_data_qOutTask_valid),
		.io_connNetwork_master_data_qOutTask_bits(_spawnerServer_0_io_connNetwork_master_data_qOutTask_bits),
		.io_axi_mgmt_ar_ready(spawnerServerMgmt_0_ar_ready),
		.io_axi_mgmt_ar_valid(spawnerServerMgmt_0_ar_valid),
		.io_axi_mgmt_ar_bits_addr(spawnerServerMgmt_0_ar_bits_addr),
		.io_axi_mgmt_ar_bits_prot(spawnerServerMgmt_0_ar_bits_prot),
		.io_axi_mgmt_r_ready(spawnerServerMgmt_0_r_ready),
		.io_axi_mgmt_r_valid(spawnerServerMgmt_0_r_valid),
		.io_axi_mgmt_r_bits_data(spawnerServerMgmt_0_r_bits_data),
		.io_axi_mgmt_r_bits_resp(spawnerServerMgmt_0_r_bits_resp),
		.io_axi_mgmt_aw_ready(spawnerServerMgmt_0_aw_ready),
		.io_axi_mgmt_aw_valid(spawnerServerMgmt_0_aw_valid),
		.io_axi_mgmt_aw_bits_addr(spawnerServerMgmt_0_aw_bits_addr),
		.io_axi_mgmt_aw_bits_prot(spawnerServerMgmt_0_aw_bits_prot),
		.io_axi_mgmt_w_ready(spawnerServerMgmt_0_w_ready),
		.io_axi_mgmt_w_valid(spawnerServerMgmt_0_w_valid),
		.io_axi_mgmt_w_bits_data(spawnerServerMgmt_0_w_bits_data),
		.io_axi_mgmt_w_bits_strb(spawnerServerMgmt_0_w_bits_strb),
		.io_axi_mgmt_b_ready(spawnerServerMgmt_0_b_ready),
		.io_axi_mgmt_b_valid(spawnerServerMgmt_0_b_valid),
		.io_axi_mgmt_b_bits_resp(spawnerServerMgmt_0_b_bits_resp)
	);
	SchedulerNetwork getOutsideSpawnNetwork(
		.clock(clock),
		.reset(reset),
		.io_connSS_0_data_availableTask_ready(_spawnerServer_0_io_connNetwork_slave_data_availableTask_ready),
		.io_connSS_0_data_availableTask_valid(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid),
		.io_connSS_0_data_availableTask_bits(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits),
		.io_connSS_1_ctrl_serveStealReq_valid(_globalsTaskBuffers_0_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connSS_1_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_1_ctrl_serveStealReq_ready),
		.io_connSS_1_ctrl_stealReq_valid(1'h0),
		.io_connSS_1_ctrl_stealReq_ready(),
		.io_connSS_1_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_1_data_qOutTask_ready),
		.io_connSS_1_data_qOutTask_valid(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_valid),
		.io_connSS_1_data_qOutTask_bits(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_bits)
	);
	SchedulerLocalNetwork stealNW_TQ(
		.clock(clock),
		.reset(reset),
		.io_connPE_0_pop_ready(_axis_stream_converters_out_0_io_dataIn_TREADY),
		.io_connPE_0_pop_valid(_stealNW_TQ_io_connPE_0_pop_valid),
		.io_connPE_0_pop_bits(_stealNW_TQ_io_connPE_0_pop_bits),
		.io_connVSS_0_ctrl_serveStealReq_valid(_schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connVSS_0_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready),
		.io_connVSS_0_data_availableTask_ready(_schedulerServers_0_io_connNetwork_data_availableTask_ready),
		.io_connVSS_0_data_availableTask_valid(_stealNW_TQ_io_connVSS_0_data_availableTask_valid),
		.io_connVSS_0_data_availableTask_bits(_stealNW_TQ_io_connVSS_0_data_availableTask_bits),
		.io_connVSS_0_data_qOutTask_ready(_stealNW_TQ_io_connVSS_0_data_qOutTask_ready),
		.io_connVSS_0_data_qOutTask_valid(_schedulerServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connVSS_0_data_qOutTask_bits(_schedulerServers_0_io_connNetwork_data_qOutTask_bits),
		.io_connVAS_0_ctrl_serveStealReq_valid(_spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid),
		.io_connVAS_0_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready),
		.io_connVAS_0_data_qOutTask_ready(_stealNW_TQ_io_connVAS_0_data_qOutTask_ready),
		.io_connVAS_0_data_qOutTask_valid(_spawnerServer_0_io_connNetwork_master_data_qOutTask_valid),
		.io_connVAS_0_data_qOutTask_bits(_spawnerServer_0_io_connNetwork_master_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0(_stealNW_TQ_io_ntwDataUnitOccupancyVSS_0),
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0)
	);
	SchedulerServer schedulerServers_0(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready),
		.io_connNetwork_data_availableTask_ready(_schedulerServers_0_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNW_TQ_io_connVSS_0_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNW_TQ_io_connVSS_0_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNW_TQ_io_connVSS_0_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_schedulerServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_schedulerServers_0_io_connNetwork_data_qOutTask_bits),
		.io_axi_mgmt_ar_ready(io_internal_axi_mgmt_vss_0_ar_ready),
		.io_axi_mgmt_ar_valid(io_internal_axi_mgmt_vss_0_ar_valid),
		.io_axi_mgmt_ar_bits_addr(io_internal_axi_mgmt_vss_0_ar_bits_addr),
		.io_axi_mgmt_ar_bits_prot(io_internal_axi_mgmt_vss_0_ar_bits_prot),
		.io_axi_mgmt_r_ready(io_internal_axi_mgmt_vss_0_r_ready),
		.io_axi_mgmt_r_valid(io_internal_axi_mgmt_vss_0_r_valid),
		.io_axi_mgmt_r_bits_data(io_internal_axi_mgmt_vss_0_r_bits_data),
		.io_axi_mgmt_r_bits_resp(io_internal_axi_mgmt_vss_0_r_bits_resp),
		.io_axi_mgmt_aw_ready(io_internal_axi_mgmt_vss_0_aw_ready),
		.io_axi_mgmt_aw_valid(io_internal_axi_mgmt_vss_0_aw_valid),
		.io_axi_mgmt_aw_bits_addr(io_internal_axi_mgmt_vss_0_aw_bits_addr),
		.io_axi_mgmt_aw_bits_prot(io_internal_axi_mgmt_vss_0_aw_bits_prot),
		.io_axi_mgmt_w_ready(io_internal_axi_mgmt_vss_0_w_ready),
		.io_axi_mgmt_w_valid(io_internal_axi_mgmt_vss_0_w_valid),
		.io_axi_mgmt_w_bits_data(io_internal_axi_mgmt_vss_0_w_bits_data),
		.io_axi_mgmt_w_bits_strb(io_internal_axi_mgmt_vss_0_w_bits_strb),
		.io_axi_mgmt_b_ready(io_internal_axi_mgmt_vss_0_b_ready),
		.io_axi_mgmt_b_valid(io_internal_axi_mgmt_vss_0_b_valid),
		.io_axi_mgmt_b_bits_resp(io_internal_axi_mgmt_vss_0_b_bits_resp),
		.io_read_address_ready(_vssRvm_0_io_read_address_ready),
		.io_read_address_valid(_schedulerServers_0_io_read_address_valid),
		.io_read_address_bits(_schedulerServers_0_io_read_address_bits),
		.io_read_data_ready(_schedulerServers_0_io_read_data_ready),
		.io_read_data_valid(_vssRvm_0_io_read_data_valid),
		.io_read_data_bits(_vssRvm_0_io_read_data_bits),
		.io_read_burst_len(_schedulerServers_0_io_read_burst_len),
		.io_write_address_ready(_vssRvm_0_io_write_address_ready),
		.io_write_address_valid(_schedulerServers_0_io_write_address_valid),
		.io_write_address_bits(_schedulerServers_0_io_write_address_bits),
		.io_write_data_ready(_vssRvm_0_io_write_data_ready),
		.io_write_data_valid(_schedulerServers_0_io_write_data_valid),
		.io_write_data_bits(_schedulerServers_0_io_write_data_bits),
		.io_write_burst_len(_schedulerServers_0_io_write_burst_len),
		.io_write_last(_schedulerServers_0_io_write_last),
		.io_ntwDataUnitOccupancy(_stealNW_TQ_io_ntwDataUnitOccupancyVSS_0),
		.io_paused(io_paused),
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0)
	);
	RVtoAXIBridge vssRvm_0(
		.clock(clock),
		.reset(reset),
		.io_read_address_ready(_vssRvm_0_io_read_address_ready),
		.io_read_address_valid(_schedulerServers_0_io_read_address_valid),
		.io_read_address_bits(_schedulerServers_0_io_read_address_bits),
		.io_read_data_ready(_schedulerServers_0_io_read_data_ready),
		.io_read_data_valid(_vssRvm_0_io_read_data_valid),
		.io_read_data_bits(_vssRvm_0_io_read_data_bits),
		.io_write_address_ready(_vssRvm_0_io_write_address_ready),
		.io_write_address_valid(_schedulerServers_0_io_write_address_valid),
		.io_write_address_bits(_schedulerServers_0_io_write_address_bits),
		.io_write_data_ready(_vssRvm_0_io_write_data_ready),
		.io_write_data_valid(_schedulerServers_0_io_write_data_valid),
		.io_write_data_bits(_schedulerServers_0_io_write_data_bits),
		.io_writeBurst_len(_schedulerServers_0_io_write_burst_len),
		.io_writeBurst_last(_schedulerServers_0_io_write_last),
		.io_readBurst_len(_schedulerServers_0_io_read_burst_len),
		.axi_ar_ready(_module_s_axi_ar_ready),
		.axi_ar_valid(_vssRvm_0_axi_ar_valid),
		.axi_ar_bits_addr(_vssRvm_0_axi_ar_bits_addr),
		.axi_ar_bits_len(_vssRvm_0_axi_ar_bits_len),
		.axi_r_ready(_vssRvm_0_axi_r_ready),
		.axi_r_valid(_module_s_axi_r_valid),
		.axi_r_bits_data(_module_s_axi_r_bits_data),
		.axi_aw_ready(_module_s_axi_aw_ready),
		.axi_aw_valid(_vssRvm_0_axi_aw_valid),
		.axi_aw_bits_addr(_vssRvm_0_axi_aw_bits_addr),
		.axi_aw_bits_len(_vssRvm_0_axi_aw_bits_len),
		.axi_w_ready(_module_s_axi_w_ready),
		.axi_w_valid(_vssRvm_0_axi_w_valid),
		.axi_w_bits_data(_vssRvm_0_axi_w_bits_data),
		.axi_w_bits_last(_vssRvm_0_axi_w_bits_last),
		.axi_b_valid(_module_s_axi_b_valid)
	);
	AxiWriteBuffer module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_module_s_axi_ar_ready),
		.s_axi_ar_valid(_vssRvm_0_axi_ar_valid),
		.s_axi_ar_bits_addr(_vssRvm_0_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_vssRvm_0_axi_ar_bits_len),
		.s_axi_r_ready(_vssRvm_0_axi_r_ready),
		.s_axi_r_valid(_module_s_axi_r_valid),
		.s_axi_r_bits_data(_module_s_axi_r_bits_data),
		.s_axi_aw_ready(_module_s_axi_aw_ready),
		.s_axi_aw_valid(_vssRvm_0_axi_aw_valid),
		.s_axi_aw_bits_addr(_vssRvm_0_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_vssRvm_0_axi_aw_bits_len),
		.s_axi_w_ready(_module_s_axi_w_ready),
		.s_axi_w_valid(_vssRvm_0_axi_w_valid),
		.s_axi_w_bits_data(_vssRvm_0_axi_w_bits_data),
		.s_axi_w_bits_last(_vssRvm_0_axi_w_bits_last),
		.s_axi_b_valid(_module_s_axi_b_valid),
		.m_axi_ar_ready(io_internal_vss_axi_full_0_ar_ready),
		.m_axi_ar_valid(io_internal_vss_axi_full_0_ar_valid),
		.m_axi_ar_bits_addr(io_internal_vss_axi_full_0_ar_bits_addr),
		.m_axi_ar_bits_len(io_internal_vss_axi_full_0_ar_bits_len),
		.m_axi_ar_bits_size(io_internal_vss_axi_full_0_ar_bits_size),
		.m_axi_ar_bits_burst(io_internal_vss_axi_full_0_ar_bits_burst),
		.m_axi_ar_bits_lock(io_internal_vss_axi_full_0_ar_bits_lock),
		.m_axi_ar_bits_cache(io_internal_vss_axi_full_0_ar_bits_cache),
		.m_axi_ar_bits_prot(io_internal_vss_axi_full_0_ar_bits_prot),
		.m_axi_ar_bits_qos(io_internal_vss_axi_full_0_ar_bits_qos),
		.m_axi_ar_bits_region(io_internal_vss_axi_full_0_ar_bits_region),
		.m_axi_r_ready(io_internal_vss_axi_full_0_r_ready),
		.m_axi_r_valid(io_internal_vss_axi_full_0_r_valid),
		.m_axi_r_bits_data(io_internal_vss_axi_full_0_r_bits_data),
		.m_axi_aw_ready(io_internal_vss_axi_full_0_aw_ready),
		.m_axi_aw_valid(io_internal_vss_axi_full_0_aw_valid),
		.m_axi_aw_bits_addr(io_internal_vss_axi_full_0_aw_bits_addr),
		.m_axi_aw_bits_len(io_internal_vss_axi_full_0_aw_bits_len),
		.m_axi_aw_bits_size(io_internal_vss_axi_full_0_aw_bits_size),
		.m_axi_aw_bits_burst(io_internal_vss_axi_full_0_aw_bits_burst),
		.m_axi_aw_bits_lock(io_internal_vss_axi_full_0_aw_bits_lock),
		.m_axi_aw_bits_cache(io_internal_vss_axi_full_0_aw_bits_cache),
		.m_axi_aw_bits_prot(io_internal_vss_axi_full_0_aw_bits_prot),
		.m_axi_aw_bits_qos(io_internal_vss_axi_full_0_aw_bits_qos),
		.m_axi_aw_bits_region(io_internal_vss_axi_full_0_aw_bits_region),
		.m_axi_w_ready(io_internal_vss_axi_full_0_w_ready),
		.m_axi_w_valid(io_internal_vss_axi_full_0_w_valid),
		.m_axi_w_bits_data(io_internal_vss_axi_full_0_w_bits_data),
		.m_axi_w_bits_last(io_internal_vss_axi_full_0_w_bits_last),
		.m_axi_b_valid(io_internal_vss_axi_full_0_b_valid)
	);
	AxisDataWidthConverter axis_stream_converters_out_0(
		.io_dataIn_TREADY(_axis_stream_converters_out_0_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_0_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_0_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_0_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_0_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_0_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_global_0(
		.io_dataIn_TREADY(io_export_taskInGlobal_0_TREADY),
		.io_dataIn_TVALID(io_export_taskInGlobal_0_TVALID),
		.io_dataIn_TDATA(io_export_taskInGlobal_0_TDATA),
		.io_dataOut_TREADY(_globalsTaskBuffers_0_io_in_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_global_0_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_global_0_io_dataOut_TDATA)
	);
	GlobalTaskBuffer globalsTaskBuffers_0(
		.clock(clock),
		.reset(reset),
		.io_in_ready(_globalsTaskBuffers_0_io_in_ready),
		.io_in_valid(_axis_stream_converters_in_global_0_io_dataOut_TVALID),
		.io_in_bits(_axis_stream_converters_in_global_0_io_dataOut_TDATA),
		.io_connStealNtw_ctrl_serveStealReq_valid(_globalsTaskBuffers_0_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connStealNtw_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_1_ctrl_serveStealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_1_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_bits)
	);
endmodule
module Scheduler_1 (
	clock,
	reset,
	spawnerServerMgmt_0_ar_ready,
	spawnerServerMgmt_0_ar_valid,
	spawnerServerMgmt_0_ar_bits_addr,
	spawnerServerMgmt_0_ar_bits_prot,
	spawnerServerMgmt_0_r_ready,
	spawnerServerMgmt_0_r_valid,
	spawnerServerMgmt_0_r_bits_data,
	spawnerServerMgmt_0_r_bits_resp,
	spawnerServerMgmt_0_aw_ready,
	spawnerServerMgmt_0_aw_valid,
	spawnerServerMgmt_0_aw_bits_addr,
	spawnerServerMgmt_0_aw_bits_prot,
	spawnerServerMgmt_0_w_ready,
	spawnerServerMgmt_0_w_valid,
	spawnerServerMgmt_0_w_bits_data,
	spawnerServerMgmt_0_w_bits_strb,
	spawnerServerMgmt_0_b_ready,
	spawnerServerMgmt_0_b_valid,
	spawnerServerMgmt_0_b_bits_resp,
	spawnerServerAXI_0_ar_ready,
	spawnerServerAXI_0_ar_valid,
	spawnerServerAXI_0_ar_bits_addr,
	spawnerServerAXI_0_ar_bits_len,
	spawnerServerAXI_0_r_ready,
	spawnerServerAXI_0_r_valid,
	spawnerServerAXI_0_r_bits_data,
	spawnerServerAXI_0_r_bits_last,
	spawnerServerAXI_0_aw_ready,
	spawnerServerAXI_0_aw_valid,
	spawnerServerAXI_0_aw_bits_addr,
	spawnerServerAXI_0_aw_bits_len,
	spawnerServerAXI_0_w_ready,
	spawnerServerAXI_0_w_valid,
	spawnerServerAXI_0_w_bits_data,
	spawnerServerAXI_0_w_bits_last,
	spawnerServerAXI_0_b_ready,
	spawnerServerAXI_0_b_valid,
	io_export_taskOut_0_TREADY,
	io_export_taskOut_0_TVALID,
	io_export_taskOut_0_TDATA,
	io_internal_vss_axi_full_0_ar_ready,
	io_internal_vss_axi_full_0_ar_valid,
	io_internal_vss_axi_full_0_ar_bits_addr,
	io_internal_vss_axi_full_0_ar_bits_len,
	io_internal_vss_axi_full_0_ar_bits_size,
	io_internal_vss_axi_full_0_ar_bits_burst,
	io_internal_vss_axi_full_0_ar_bits_lock,
	io_internal_vss_axi_full_0_ar_bits_cache,
	io_internal_vss_axi_full_0_ar_bits_prot,
	io_internal_vss_axi_full_0_ar_bits_qos,
	io_internal_vss_axi_full_0_ar_bits_region,
	io_internal_vss_axi_full_0_r_ready,
	io_internal_vss_axi_full_0_r_valid,
	io_internal_vss_axi_full_0_r_bits_data,
	io_internal_vss_axi_full_0_aw_ready,
	io_internal_vss_axi_full_0_aw_valid,
	io_internal_vss_axi_full_0_aw_bits_addr,
	io_internal_vss_axi_full_0_aw_bits_len,
	io_internal_vss_axi_full_0_aw_bits_size,
	io_internal_vss_axi_full_0_aw_bits_burst,
	io_internal_vss_axi_full_0_aw_bits_lock,
	io_internal_vss_axi_full_0_aw_bits_cache,
	io_internal_vss_axi_full_0_aw_bits_prot,
	io_internal_vss_axi_full_0_aw_bits_qos,
	io_internal_vss_axi_full_0_aw_bits_region,
	io_internal_vss_axi_full_0_w_ready,
	io_internal_vss_axi_full_0_w_valid,
	io_internal_vss_axi_full_0_w_bits_data,
	io_internal_vss_axi_full_0_w_bits_last,
	io_internal_vss_axi_full_0_b_valid,
	io_internal_axi_mgmt_vss_0_ar_ready,
	io_internal_axi_mgmt_vss_0_ar_valid,
	io_internal_axi_mgmt_vss_0_ar_bits_addr,
	io_internal_axi_mgmt_vss_0_ar_bits_prot,
	io_internal_axi_mgmt_vss_0_r_ready,
	io_internal_axi_mgmt_vss_0_r_valid,
	io_internal_axi_mgmt_vss_0_r_bits_data,
	io_internal_axi_mgmt_vss_0_r_bits_resp,
	io_internal_axi_mgmt_vss_0_aw_ready,
	io_internal_axi_mgmt_vss_0_aw_valid,
	io_internal_axi_mgmt_vss_0_aw_bits_addr,
	io_internal_axi_mgmt_vss_0_aw_bits_prot,
	io_internal_axi_mgmt_vss_0_w_ready,
	io_internal_axi_mgmt_vss_0_w_valid,
	io_internal_axi_mgmt_vss_0_w_bits_data,
	io_internal_axi_mgmt_vss_0_w_bits_strb,
	io_internal_axi_mgmt_vss_0_b_ready,
	io_internal_axi_mgmt_vss_0_b_valid,
	io_internal_axi_mgmt_vss_0_b_bits_resp,
	io_paused,
	connArgumentNotifier_0_ctrl_stealReq_valid,
	connArgumentNotifier_0_ctrl_stealReq_ready,
	connArgumentNotifier_0_data_qOutTask_ready,
	connArgumentNotifier_0_data_qOutTask_valid,
	connArgumentNotifier_0_data_qOutTask_bits
);
	input clock;
	input reset;
	output wire spawnerServerMgmt_0_ar_ready;
	input spawnerServerMgmt_0_ar_valid;
	input [5:0] spawnerServerMgmt_0_ar_bits_addr;
	input [2:0] spawnerServerMgmt_0_ar_bits_prot;
	input spawnerServerMgmt_0_r_ready;
	output wire spawnerServerMgmt_0_r_valid;
	output wire [63:0] spawnerServerMgmt_0_r_bits_data;
	output wire [1:0] spawnerServerMgmt_0_r_bits_resp;
	output wire spawnerServerMgmt_0_aw_ready;
	input spawnerServerMgmt_0_aw_valid;
	input [5:0] spawnerServerMgmt_0_aw_bits_addr;
	input [2:0] spawnerServerMgmt_0_aw_bits_prot;
	output wire spawnerServerMgmt_0_w_ready;
	input spawnerServerMgmt_0_w_valid;
	input [63:0] spawnerServerMgmt_0_w_bits_data;
	input [7:0] spawnerServerMgmt_0_w_bits_strb;
	input spawnerServerMgmt_0_b_ready;
	output wire spawnerServerMgmt_0_b_valid;
	output wire [1:0] spawnerServerMgmt_0_b_bits_resp;
	input spawnerServerAXI_0_ar_ready;
	output wire spawnerServerAXI_0_ar_valid;
	output wire [63:0] spawnerServerAXI_0_ar_bits_addr;
	output wire [7:0] spawnerServerAXI_0_ar_bits_len;
	output wire spawnerServerAXI_0_r_ready;
	input spawnerServerAXI_0_r_valid;
	input [511:0] spawnerServerAXI_0_r_bits_data;
	input spawnerServerAXI_0_r_bits_last;
	input spawnerServerAXI_0_aw_ready;
	output wire spawnerServerAXI_0_aw_valid;
	output wire [63:0] spawnerServerAXI_0_aw_bits_addr;
	output wire [7:0] spawnerServerAXI_0_aw_bits_len;
	input spawnerServerAXI_0_w_ready;
	output wire spawnerServerAXI_0_w_valid;
	output wire [511:0] spawnerServerAXI_0_w_bits_data;
	output wire spawnerServerAXI_0_w_bits_last;
	output wire spawnerServerAXI_0_b_ready;
	input spawnerServerAXI_0_b_valid;
	input io_export_taskOut_0_TREADY;
	output wire io_export_taskOut_0_TVALID;
	output wire [511:0] io_export_taskOut_0_TDATA;
	input io_internal_vss_axi_full_0_ar_ready;
	output wire io_internal_vss_axi_full_0_ar_valid;
	output wire [63:0] io_internal_vss_axi_full_0_ar_bits_addr;
	output wire [7:0] io_internal_vss_axi_full_0_ar_bits_len;
	output wire [2:0] io_internal_vss_axi_full_0_ar_bits_size;
	output wire [1:0] io_internal_vss_axi_full_0_ar_bits_burst;
	output wire io_internal_vss_axi_full_0_ar_bits_lock;
	output wire [3:0] io_internal_vss_axi_full_0_ar_bits_cache;
	output wire [2:0] io_internal_vss_axi_full_0_ar_bits_prot;
	output wire [3:0] io_internal_vss_axi_full_0_ar_bits_qos;
	output wire [3:0] io_internal_vss_axi_full_0_ar_bits_region;
	output wire io_internal_vss_axi_full_0_r_ready;
	input io_internal_vss_axi_full_0_r_valid;
	input [511:0] io_internal_vss_axi_full_0_r_bits_data;
	input io_internal_vss_axi_full_0_aw_ready;
	output wire io_internal_vss_axi_full_0_aw_valid;
	output wire [63:0] io_internal_vss_axi_full_0_aw_bits_addr;
	output wire [7:0] io_internal_vss_axi_full_0_aw_bits_len;
	output wire [2:0] io_internal_vss_axi_full_0_aw_bits_size;
	output wire [1:0] io_internal_vss_axi_full_0_aw_bits_burst;
	output wire io_internal_vss_axi_full_0_aw_bits_lock;
	output wire [3:0] io_internal_vss_axi_full_0_aw_bits_cache;
	output wire [2:0] io_internal_vss_axi_full_0_aw_bits_prot;
	output wire [3:0] io_internal_vss_axi_full_0_aw_bits_qos;
	output wire [3:0] io_internal_vss_axi_full_0_aw_bits_region;
	input io_internal_vss_axi_full_0_w_ready;
	output wire io_internal_vss_axi_full_0_w_valid;
	output wire [511:0] io_internal_vss_axi_full_0_w_bits_data;
	output wire io_internal_vss_axi_full_0_w_bits_last;
	input io_internal_vss_axi_full_0_b_valid;
	output wire io_internal_axi_mgmt_vss_0_ar_ready;
	input io_internal_axi_mgmt_vss_0_ar_valid;
	input [5:0] io_internal_axi_mgmt_vss_0_ar_bits_addr;
	input [2:0] io_internal_axi_mgmt_vss_0_ar_bits_prot;
	input io_internal_axi_mgmt_vss_0_r_ready;
	output wire io_internal_axi_mgmt_vss_0_r_valid;
	output wire [63:0] io_internal_axi_mgmt_vss_0_r_bits_data;
	output wire [1:0] io_internal_axi_mgmt_vss_0_r_bits_resp;
	output wire io_internal_axi_mgmt_vss_0_aw_ready;
	input io_internal_axi_mgmt_vss_0_aw_valid;
	input [5:0] io_internal_axi_mgmt_vss_0_aw_bits_addr;
	input [2:0] io_internal_axi_mgmt_vss_0_aw_bits_prot;
	output wire io_internal_axi_mgmt_vss_0_w_ready;
	input io_internal_axi_mgmt_vss_0_w_valid;
	input [63:0] io_internal_axi_mgmt_vss_0_w_bits_data;
	input [7:0] io_internal_axi_mgmt_vss_0_w_bits_strb;
	input io_internal_axi_mgmt_vss_0_b_ready;
	output wire io_internal_axi_mgmt_vss_0_b_valid;
	output wire [1:0] io_internal_axi_mgmt_vss_0_b_bits_resp;
	output wire io_paused;
	input connArgumentNotifier_0_ctrl_stealReq_valid;
	output wire connArgumentNotifier_0_ctrl_stealReq_ready;
	output wire connArgumentNotifier_0_data_qOutTask_ready;
	input connArgumentNotifier_0_data_qOutTask_valid;
	input [511:0] connArgumentNotifier_0_data_qOutTask_bits;
	wire _axis_stream_converters_out_0_io_dataIn_TREADY;
	wire _module_s_axi_ar_ready;
	wire _module_s_axi_r_valid;
	wire [511:0] _module_s_axi_r_bits_data;
	wire _module_s_axi_aw_ready;
	wire _module_s_axi_w_ready;
	wire _module_s_axi_b_valid;
	wire _vssRvm_0_io_read_address_ready;
	wire _vssRvm_0_io_read_data_valid;
	wire [511:0] _vssRvm_0_io_read_data_bits;
	wire _vssRvm_0_io_write_address_ready;
	wire _vssRvm_0_io_write_data_ready;
	wire _vssRvm_0_axi_ar_valid;
	wire [63:0] _vssRvm_0_axi_ar_bits_addr;
	wire [7:0] _vssRvm_0_axi_ar_bits_len;
	wire _vssRvm_0_axi_r_ready;
	wire _vssRvm_0_axi_aw_valid;
	wire [63:0] _vssRvm_0_axi_aw_bits_addr;
	wire [7:0] _vssRvm_0_axi_aw_bits_len;
	wire _vssRvm_0_axi_w_valid;
	wire [511:0] _vssRvm_0_axi_w_bits_data;
	wire _vssRvm_0_axi_w_bits_last;
	wire _schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _schedulerServers_0_io_connNetwork_data_availableTask_ready;
	wire _schedulerServers_0_io_connNetwork_data_qOutTask_valid;
	wire [511:0] _schedulerServers_0_io_connNetwork_data_qOutTask_bits;
	wire _schedulerServers_0_io_read_address_valid;
	wire [63:0] _schedulerServers_0_io_read_address_bits;
	wire _schedulerServers_0_io_read_data_ready;
	wire [3:0] _schedulerServers_0_io_read_burst_len;
	wire _schedulerServers_0_io_write_address_valid;
	wire [63:0] _schedulerServers_0_io_write_address_bits;
	wire _schedulerServers_0_io_write_data_valid;
	wire [511:0] _schedulerServers_0_io_write_data_bits;
	wire [3:0] _schedulerServers_0_io_write_burst_len;
	wire _schedulerServers_0_io_write_last;
	wire _stealNW_TQ_io_connPE_0_pop_valid;
	wire [511:0] _stealNW_TQ_io_connPE_0_pop_bits;
	wire _stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVSS_0_data_availableTask_valid;
	wire [511:0] _stealNW_TQ_io_connVSS_0_data_availableTask_bits;
	wire _stealNW_TQ_io_connVSS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVAS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_ntwDataUnitOccupancyVSS_0;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_0;
	wire _getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid;
	wire [511:0] _getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits;
	wire _spawnerServer_0_io_connNetwork_slave_data_availableTask_ready;
	wire _spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid;
	wire _spawnerServer_0_io_connNetwork_master_data_qOutTask_valid;
	wire [511:0] _spawnerServer_0_io_connNetwork_master_data_qOutTask_bits;
	SpawnerServer spawnerServer_0(
		.clock(clock),
		.reset(reset),
		.io_m_axi_ARREADY(spawnerServerAXI_0_ar_ready),
		.io_m_axi_ARVALID(spawnerServerAXI_0_ar_valid),
		.io_m_axi_ARADDR(spawnerServerAXI_0_ar_bits_addr),
		.io_m_axi_ARLEN(spawnerServerAXI_0_ar_bits_len),
		.io_m_axi_RREADY(spawnerServerAXI_0_r_ready),
		.io_m_axi_RVALID(spawnerServerAXI_0_r_valid),
		.io_m_axi_RDATA(spawnerServerAXI_0_r_bits_data),
		.io_m_axi_RLAST(spawnerServerAXI_0_r_bits_last),
		.io_m_axi_AWREADY(spawnerServerAXI_0_aw_ready),
		.io_m_axi_AWVALID(spawnerServerAXI_0_aw_valid),
		.io_m_axi_AWADDR(spawnerServerAXI_0_aw_bits_addr),
		.io_m_axi_AWLEN(spawnerServerAXI_0_aw_bits_len),
		.io_m_axi_WREADY(spawnerServerAXI_0_w_ready),
		.io_m_axi_WVALID(spawnerServerAXI_0_w_valid),
		.io_m_axi_WDATA(spawnerServerAXI_0_w_bits_data),
		.io_m_axi_WLAST(spawnerServerAXI_0_w_bits_last),
		.io_m_axi_BREADY(spawnerServerAXI_0_b_ready),
		.io_m_axi_BVALID(spawnerServerAXI_0_b_valid),
		.io_connNetwork_slave_data_availableTask_ready(_spawnerServer_0_io_connNetwork_slave_data_availableTask_ready),
		.io_connNetwork_slave_data_availableTask_valid(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid),
		.io_connNetwork_slave_data_availableTask_bits(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits),
		.io_connNetwork_master_ctrl_serveStealReq_valid(_spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid),
		.io_connNetwork_master_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready),
		.io_connNetwork_master_data_qOutTask_ready(_stealNW_TQ_io_connVAS_0_data_qOutTask_ready),
		.io_connNetwork_master_data_qOutTask_valid(_spawnerServer_0_io_connNetwork_master_data_qOutTask_valid),
		.io_connNetwork_master_data_qOutTask_bits(_spawnerServer_0_io_connNetwork_master_data_qOutTask_bits),
		.io_axi_mgmt_ar_ready(spawnerServerMgmt_0_ar_ready),
		.io_axi_mgmt_ar_valid(spawnerServerMgmt_0_ar_valid),
		.io_axi_mgmt_ar_bits_addr(spawnerServerMgmt_0_ar_bits_addr),
		.io_axi_mgmt_ar_bits_prot(spawnerServerMgmt_0_ar_bits_prot),
		.io_axi_mgmt_r_ready(spawnerServerMgmt_0_r_ready),
		.io_axi_mgmt_r_valid(spawnerServerMgmt_0_r_valid),
		.io_axi_mgmt_r_bits_data(spawnerServerMgmt_0_r_bits_data),
		.io_axi_mgmt_r_bits_resp(spawnerServerMgmt_0_r_bits_resp),
		.io_axi_mgmt_aw_ready(spawnerServerMgmt_0_aw_ready),
		.io_axi_mgmt_aw_valid(spawnerServerMgmt_0_aw_valid),
		.io_axi_mgmt_aw_bits_addr(spawnerServerMgmt_0_aw_bits_addr),
		.io_axi_mgmt_aw_bits_prot(spawnerServerMgmt_0_aw_bits_prot),
		.io_axi_mgmt_w_ready(spawnerServerMgmt_0_w_ready),
		.io_axi_mgmt_w_valid(spawnerServerMgmt_0_w_valid),
		.io_axi_mgmt_w_bits_data(spawnerServerMgmt_0_w_bits_data),
		.io_axi_mgmt_w_bits_strb(spawnerServerMgmt_0_w_bits_strb),
		.io_axi_mgmt_b_ready(spawnerServerMgmt_0_b_ready),
		.io_axi_mgmt_b_valid(spawnerServerMgmt_0_b_valid),
		.io_axi_mgmt_b_bits_resp(spawnerServerMgmt_0_b_bits_resp)
	);
	SchedulerNetwork getOutsideSpawnNetwork(
		.clock(clock),
		.reset(reset),
		.io_connSS_0_data_availableTask_ready(_spawnerServer_0_io_connNetwork_slave_data_availableTask_ready),
		.io_connSS_0_data_availableTask_valid(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid),
		.io_connSS_0_data_availableTask_bits(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits),
		.io_connSS_1_ctrl_serveStealReq_valid(1'h0),
		.io_connSS_1_ctrl_serveStealReq_ready(),
		.io_connSS_1_ctrl_stealReq_valid(connArgumentNotifier_0_ctrl_stealReq_valid),
		.io_connSS_1_ctrl_stealReq_ready(connArgumentNotifier_0_ctrl_stealReq_ready),
		.io_connSS_1_data_qOutTask_ready(connArgumentNotifier_0_data_qOutTask_ready),
		.io_connSS_1_data_qOutTask_valid(connArgumentNotifier_0_data_qOutTask_valid),
		.io_connSS_1_data_qOutTask_bits(connArgumentNotifier_0_data_qOutTask_bits)
	);
	SchedulerLocalNetwork stealNW_TQ(
		.clock(clock),
		.reset(reset),
		.io_connPE_0_pop_ready(_axis_stream_converters_out_0_io_dataIn_TREADY),
		.io_connPE_0_pop_valid(_stealNW_TQ_io_connPE_0_pop_valid),
		.io_connPE_0_pop_bits(_stealNW_TQ_io_connPE_0_pop_bits),
		.io_connVSS_0_ctrl_serveStealReq_valid(_schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connVSS_0_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready),
		.io_connVSS_0_data_availableTask_ready(_schedulerServers_0_io_connNetwork_data_availableTask_ready),
		.io_connVSS_0_data_availableTask_valid(_stealNW_TQ_io_connVSS_0_data_availableTask_valid),
		.io_connVSS_0_data_availableTask_bits(_stealNW_TQ_io_connVSS_0_data_availableTask_bits),
		.io_connVSS_0_data_qOutTask_ready(_stealNW_TQ_io_connVSS_0_data_qOutTask_ready),
		.io_connVSS_0_data_qOutTask_valid(_schedulerServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connVSS_0_data_qOutTask_bits(_schedulerServers_0_io_connNetwork_data_qOutTask_bits),
		.io_connVAS_0_ctrl_serveStealReq_valid(_spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid),
		.io_connVAS_0_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready),
		.io_connVAS_0_data_qOutTask_ready(_stealNW_TQ_io_connVAS_0_data_qOutTask_ready),
		.io_connVAS_0_data_qOutTask_valid(_spawnerServer_0_io_connNetwork_master_data_qOutTask_valid),
		.io_connVAS_0_data_qOutTask_bits(_spawnerServer_0_io_connNetwork_master_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0(_stealNW_TQ_io_ntwDataUnitOccupancyVSS_0),
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0)
	);
	SchedulerServer schedulerServers_0(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready),
		.io_connNetwork_data_availableTask_ready(_schedulerServers_0_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNW_TQ_io_connVSS_0_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNW_TQ_io_connVSS_0_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNW_TQ_io_connVSS_0_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_schedulerServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_schedulerServers_0_io_connNetwork_data_qOutTask_bits),
		.io_axi_mgmt_ar_ready(io_internal_axi_mgmt_vss_0_ar_ready),
		.io_axi_mgmt_ar_valid(io_internal_axi_mgmt_vss_0_ar_valid),
		.io_axi_mgmt_ar_bits_addr(io_internal_axi_mgmt_vss_0_ar_bits_addr),
		.io_axi_mgmt_ar_bits_prot(io_internal_axi_mgmt_vss_0_ar_bits_prot),
		.io_axi_mgmt_r_ready(io_internal_axi_mgmt_vss_0_r_ready),
		.io_axi_mgmt_r_valid(io_internal_axi_mgmt_vss_0_r_valid),
		.io_axi_mgmt_r_bits_data(io_internal_axi_mgmt_vss_0_r_bits_data),
		.io_axi_mgmt_r_bits_resp(io_internal_axi_mgmt_vss_0_r_bits_resp),
		.io_axi_mgmt_aw_ready(io_internal_axi_mgmt_vss_0_aw_ready),
		.io_axi_mgmt_aw_valid(io_internal_axi_mgmt_vss_0_aw_valid),
		.io_axi_mgmt_aw_bits_addr(io_internal_axi_mgmt_vss_0_aw_bits_addr),
		.io_axi_mgmt_aw_bits_prot(io_internal_axi_mgmt_vss_0_aw_bits_prot),
		.io_axi_mgmt_w_ready(io_internal_axi_mgmt_vss_0_w_ready),
		.io_axi_mgmt_w_valid(io_internal_axi_mgmt_vss_0_w_valid),
		.io_axi_mgmt_w_bits_data(io_internal_axi_mgmt_vss_0_w_bits_data),
		.io_axi_mgmt_w_bits_strb(io_internal_axi_mgmt_vss_0_w_bits_strb),
		.io_axi_mgmt_b_ready(io_internal_axi_mgmt_vss_0_b_ready),
		.io_axi_mgmt_b_valid(io_internal_axi_mgmt_vss_0_b_valid),
		.io_axi_mgmt_b_bits_resp(io_internal_axi_mgmt_vss_0_b_bits_resp),
		.io_read_address_ready(_vssRvm_0_io_read_address_ready),
		.io_read_address_valid(_schedulerServers_0_io_read_address_valid),
		.io_read_address_bits(_schedulerServers_0_io_read_address_bits),
		.io_read_data_ready(_schedulerServers_0_io_read_data_ready),
		.io_read_data_valid(_vssRvm_0_io_read_data_valid),
		.io_read_data_bits(_vssRvm_0_io_read_data_bits),
		.io_read_burst_len(_schedulerServers_0_io_read_burst_len),
		.io_write_address_ready(_vssRvm_0_io_write_address_ready),
		.io_write_address_valid(_schedulerServers_0_io_write_address_valid),
		.io_write_address_bits(_schedulerServers_0_io_write_address_bits),
		.io_write_data_ready(_vssRvm_0_io_write_data_ready),
		.io_write_data_valid(_schedulerServers_0_io_write_data_valid),
		.io_write_data_bits(_schedulerServers_0_io_write_data_bits),
		.io_write_burst_len(_schedulerServers_0_io_write_burst_len),
		.io_write_last(_schedulerServers_0_io_write_last),
		.io_ntwDataUnitOccupancy(_stealNW_TQ_io_ntwDataUnitOccupancyVSS_0),
		.io_paused(io_paused),
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0)
	);
	RVtoAXIBridge vssRvm_0(
		.clock(clock),
		.reset(reset),
		.io_read_address_ready(_vssRvm_0_io_read_address_ready),
		.io_read_address_valid(_schedulerServers_0_io_read_address_valid),
		.io_read_address_bits(_schedulerServers_0_io_read_address_bits),
		.io_read_data_ready(_schedulerServers_0_io_read_data_ready),
		.io_read_data_valid(_vssRvm_0_io_read_data_valid),
		.io_read_data_bits(_vssRvm_0_io_read_data_bits),
		.io_write_address_ready(_vssRvm_0_io_write_address_ready),
		.io_write_address_valid(_schedulerServers_0_io_write_address_valid),
		.io_write_address_bits(_schedulerServers_0_io_write_address_bits),
		.io_write_data_ready(_vssRvm_0_io_write_data_ready),
		.io_write_data_valid(_schedulerServers_0_io_write_data_valid),
		.io_write_data_bits(_schedulerServers_0_io_write_data_bits),
		.io_writeBurst_len(_schedulerServers_0_io_write_burst_len),
		.io_writeBurst_last(_schedulerServers_0_io_write_last),
		.io_readBurst_len(_schedulerServers_0_io_read_burst_len),
		.axi_ar_ready(_module_s_axi_ar_ready),
		.axi_ar_valid(_vssRvm_0_axi_ar_valid),
		.axi_ar_bits_addr(_vssRvm_0_axi_ar_bits_addr),
		.axi_ar_bits_len(_vssRvm_0_axi_ar_bits_len),
		.axi_r_ready(_vssRvm_0_axi_r_ready),
		.axi_r_valid(_module_s_axi_r_valid),
		.axi_r_bits_data(_module_s_axi_r_bits_data),
		.axi_aw_ready(_module_s_axi_aw_ready),
		.axi_aw_valid(_vssRvm_0_axi_aw_valid),
		.axi_aw_bits_addr(_vssRvm_0_axi_aw_bits_addr),
		.axi_aw_bits_len(_vssRvm_0_axi_aw_bits_len),
		.axi_w_ready(_module_s_axi_w_ready),
		.axi_w_valid(_vssRvm_0_axi_w_valid),
		.axi_w_bits_data(_vssRvm_0_axi_w_bits_data),
		.axi_w_bits_last(_vssRvm_0_axi_w_bits_last),
		.axi_b_valid(_module_s_axi_b_valid)
	);
	AxiWriteBuffer module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_module_s_axi_ar_ready),
		.s_axi_ar_valid(_vssRvm_0_axi_ar_valid),
		.s_axi_ar_bits_addr(_vssRvm_0_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_vssRvm_0_axi_ar_bits_len),
		.s_axi_r_ready(_vssRvm_0_axi_r_ready),
		.s_axi_r_valid(_module_s_axi_r_valid),
		.s_axi_r_bits_data(_module_s_axi_r_bits_data),
		.s_axi_aw_ready(_module_s_axi_aw_ready),
		.s_axi_aw_valid(_vssRvm_0_axi_aw_valid),
		.s_axi_aw_bits_addr(_vssRvm_0_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_vssRvm_0_axi_aw_bits_len),
		.s_axi_w_ready(_module_s_axi_w_ready),
		.s_axi_w_valid(_vssRvm_0_axi_w_valid),
		.s_axi_w_bits_data(_vssRvm_0_axi_w_bits_data),
		.s_axi_w_bits_last(_vssRvm_0_axi_w_bits_last),
		.s_axi_b_valid(_module_s_axi_b_valid),
		.m_axi_ar_ready(io_internal_vss_axi_full_0_ar_ready),
		.m_axi_ar_valid(io_internal_vss_axi_full_0_ar_valid),
		.m_axi_ar_bits_addr(io_internal_vss_axi_full_0_ar_bits_addr),
		.m_axi_ar_bits_len(io_internal_vss_axi_full_0_ar_bits_len),
		.m_axi_ar_bits_size(io_internal_vss_axi_full_0_ar_bits_size),
		.m_axi_ar_bits_burst(io_internal_vss_axi_full_0_ar_bits_burst),
		.m_axi_ar_bits_lock(io_internal_vss_axi_full_0_ar_bits_lock),
		.m_axi_ar_bits_cache(io_internal_vss_axi_full_0_ar_bits_cache),
		.m_axi_ar_bits_prot(io_internal_vss_axi_full_0_ar_bits_prot),
		.m_axi_ar_bits_qos(io_internal_vss_axi_full_0_ar_bits_qos),
		.m_axi_ar_bits_region(io_internal_vss_axi_full_0_ar_bits_region),
		.m_axi_r_ready(io_internal_vss_axi_full_0_r_ready),
		.m_axi_r_valid(io_internal_vss_axi_full_0_r_valid),
		.m_axi_r_bits_data(io_internal_vss_axi_full_0_r_bits_data),
		.m_axi_aw_ready(io_internal_vss_axi_full_0_aw_ready),
		.m_axi_aw_valid(io_internal_vss_axi_full_0_aw_valid),
		.m_axi_aw_bits_addr(io_internal_vss_axi_full_0_aw_bits_addr),
		.m_axi_aw_bits_len(io_internal_vss_axi_full_0_aw_bits_len),
		.m_axi_aw_bits_size(io_internal_vss_axi_full_0_aw_bits_size),
		.m_axi_aw_bits_burst(io_internal_vss_axi_full_0_aw_bits_burst),
		.m_axi_aw_bits_lock(io_internal_vss_axi_full_0_aw_bits_lock),
		.m_axi_aw_bits_cache(io_internal_vss_axi_full_0_aw_bits_cache),
		.m_axi_aw_bits_prot(io_internal_vss_axi_full_0_aw_bits_prot),
		.m_axi_aw_bits_qos(io_internal_vss_axi_full_0_aw_bits_qos),
		.m_axi_aw_bits_region(io_internal_vss_axi_full_0_aw_bits_region),
		.m_axi_w_ready(io_internal_vss_axi_full_0_w_ready),
		.m_axi_w_valid(io_internal_vss_axi_full_0_w_valid),
		.m_axi_w_bits_data(io_internal_vss_axi_full_0_w_bits_data),
		.m_axi_w_bits_last(io_internal_vss_axi_full_0_w_bits_last),
		.m_axi_b_valid(io_internal_vss_axi_full_0_b_valid)
	);
	AxisDataWidthConverter axis_stream_converters_out_0(
		.io_dataIn_TREADY(_axis_stream_converters_out_0_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_0_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_0_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_0_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_0_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_0_TDATA)
	);
endmodule
module ArgumentNotifierNetworkUnit (
	clock,
	reset,
	io_addressIn_ready,
	io_addressIn_valid,
	io_addressIn_bits,
	io_peAddress_ready,
	io_peAddress_valid,
	io_peAddress_bits,
	io_addressOut_ready,
	io_addressOut_valid,
	io_addressOut_bits
);
	input clock;
	input reset;
	output wire io_addressIn_ready;
	input io_addressIn_valid;
	input [63:0] io_addressIn_bits;
	output wire io_peAddress_ready;
	input io_peAddress_valid;
	input [63:0] io_peAddress_bits;
	input io_addressOut_ready;
	output wire io_addressOut_valid;
	output wire [63:0] io_addressOut_bits;
	reg stateReg;
	reg [63:0] addressReg;
	reg priorityReg;
	wire _GEN = io_addressIn_valid & io_peAddress_valid;
	always @(posedge clock)
		if (reset) begin
			stateReg <= 1'h0;
			addressReg <= 64'h0000000000000000;
			priorityReg <= 1'h1;
		end
		else if (stateReg)
			stateReg <= stateReg & ~io_addressOut_ready;
		else begin
			stateReg <= (io_addressIn_valid | io_peAddress_valid) | stateReg;
			if (_GEN) begin
				addressReg <= (priorityReg ? io_addressIn_bits : io_peAddress_bits);
				priorityReg <= priorityReg - 1'h1;
			end
			else begin
				if (io_peAddress_valid)
					addressReg <= io_peAddress_bits;
				else if (io_addressIn_valid)
					addressReg <= io_addressIn_bits;
				if (io_peAddress_valid | ~(io_addressIn_valid & priorityReg))
					;
				else
					priorityReg <= priorityReg - 1'h1;
			end
		end
	assign io_addressIn_ready = ~stateReg & (_GEN ? priorityReg : ~io_peAddress_valid & io_addressIn_valid);
	assign io_peAddress_ready = ~stateReg & (_GEN ? ~priorityReg : io_peAddress_valid);
	assign io_addressOut_valid = stateReg;
	assign io_addressOut_bits = addressReg;
endmodule
module ArgumentNotifierNetworkUnit_1 (
	clock,
	reset,
	io_peAddress_ready,
	io_peAddress_valid,
	io_peAddress_bits,
	io_addressOut_ready,
	io_addressOut_valid,
	io_addressOut_bits
);
	input clock;
	input reset;
	output wire io_peAddress_ready;
	input io_peAddress_valid;
	input [63:0] io_peAddress_bits;
	input io_addressOut_ready;
	output wire io_addressOut_valid;
	output wire [63:0] io_addressOut_bits;
	reg stateReg;
	reg [63:0] addressReg;
	always @(posedge clock)
		if (reset) begin
			stateReg <= 1'h0;
			addressReg <= 64'h0000000000000000;
		end
		else begin
			if (stateReg)
				stateReg <= stateReg & ~io_addressOut_ready;
			else
				stateReg <= io_peAddress_valid | stateReg;
			if (~stateReg & io_peAddress_valid)
				addressReg <= io_peAddress_bits;
		end
	assign io_peAddress_ready = ~stateReg & io_peAddress_valid;
	assign io_addressOut_valid = stateReg;
	assign io_addressOut_bits = addressReg;
endmodule
module ram_32x64 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [4:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [63:0] R0_data;
	input [4:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [63:0] W0_data;
	reg [63:0] Memory [0:31];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue32_UInt (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits;
	reg [4:0] enq_ptr_value;
	reg [4:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 5'h00;
			deq_ptr_value <= 5'h00;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 5'h01;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 5'h01;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_32x64 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module AllocatorBuffer (
	clock,
	reset,
	io_addressIn_ready,
	io_addressIn_valid,
	io_addressIn_bits,
	io_addressOut_ready,
	io_addressOut_valid,
	io_addressOut_bits
);
	input clock;
	input reset;
	output wire io_addressIn_ready;
	input io_addressIn_valid;
	input [63:0] io_addressIn_bits;
	input io_addressOut_ready;
	output wire io_addressOut_valid;
	output wire [63:0] io_addressOut_bits;
	Queue32_UInt q(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(io_addressIn_ready),
		.io_enq_valid(io_addressIn_valid),
		.io_enq_bits(io_addressIn_bits),
		.io_deq_ready(io_addressOut_ready),
		.io_deq_valid(io_addressOut_valid),
		.io_deq_bits(io_addressOut_bits)
	);
endmodule
module ram_2x64 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [63:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [63:0] W0_data;
	reg [63:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_UInt64 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x64 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module ram_2x1 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input W0_data;
	reg Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 1'bx);
endmodule
module Queue2_UInt1 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x1 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module elasticBasicArbiter (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [63:0] io_sink_bits;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	wire fire = (io_sources_0_valid & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	Queue2_UInt64 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(io_sources_0_bits),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits(io_sink_bits)
	);
	Queue2_UInt1 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(1'h0),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire;
endmodule
module elasticDemux_2 (
	io_source_ready,
	io_source_valid,
	io_source_bits,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [63:0] io_source_bits;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [63:0] io_sinks_0_bits;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & io_sinks_0_ready;
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits = io_source_bits;
	assign io_select_ready = fire;
endmodule
module ArgumentNotifierNetwork (
	clock,
	reset,
	io_connVAS_0_ready,
	io_connVAS_0_valid,
	io_connVAS_0_bits,
	io_connPE_0_ready,
	io_connPE_0_valid,
	io_connPE_0_bits,
	io_connPE_1_ready,
	io_connPE_1_valid,
	io_connPE_1_bits
);
	input clock;
	input reset;
	input io_connVAS_0_ready;
	output wire io_connVAS_0_valid;
	output wire [63:0] io_connVAS_0_bits;
	output wire io_connPE_0_ready;
	input io_connPE_0_valid;
	input [63:0] io_connPE_0_bits;
	output wire io_connPE_1_ready;
	input io_connPE_1_valid;
	input [63:0] io_connPE_1_bits;
	wire _demux_io_source_ready;
	wire _demux_io_sinks_0_valid;
	wire [63:0] _demux_io_sinks_0_bits;
	wire _demux_io_select_ready;
	wire _arbs_0_io_sources_0_ready;
	wire _queues_1_io_addressOut_valid;
	wire [63:0] _queues_1_io_addressOut_bits;
	wire _queues_0_io_addressOut_valid;
	wire [63:0] _queues_0_io_addressOut_bits;
	wire _networkUnits_1_io_peAddress_ready;
	wire _networkUnits_1_io_addressOut_valid;
	wire [63:0] _networkUnits_1_io_addressOut_bits;
	wire _networkUnits_0_io_addressIn_ready;
	wire _networkUnits_0_io_peAddress_ready;
	wire _networkUnits_0_io_addressOut_valid;
	wire [63:0] _networkUnits_0_io_addressOut_bits;
	reg eagerFork_regs_0;
	reg eagerFork_regs_1;
	wire eagerFork_networkUnits_0_io_addressOut_ready_qual1_0 = _demux_io_source_ready | eagerFork_regs_0;
	wire eagerFork_networkUnits_0_io_addressOut_ready_qual1_1 = _demux_io_select_ready | eagerFork_regs_1;
	wire _eagerFork_networkUnits_0_io_addressOut_ready_T = eagerFork_networkUnits_0_io_addressOut_ready_qual1_0 & eagerFork_networkUnits_0_io_addressOut_ready_qual1_1;
	always @(posedge clock)
		if (reset) begin
			eagerFork_regs_0 <= 1'h0;
			eagerFork_regs_1 <= 1'h0;
		end
		else begin
			eagerFork_regs_0 <= (eagerFork_networkUnits_0_io_addressOut_ready_qual1_0 & _networkUnits_0_io_addressOut_valid) & ~_eagerFork_networkUnits_0_io_addressOut_ready_T;
			eagerFork_regs_1 <= (eagerFork_networkUnits_0_io_addressOut_ready_qual1_1 & _networkUnits_0_io_addressOut_valid) & ~_eagerFork_networkUnits_0_io_addressOut_ready_T;
		end
	ArgumentNotifierNetworkUnit networkUnits_0(
		.clock(clock),
		.reset(reset),
		.io_addressIn_ready(_networkUnits_0_io_addressIn_ready),
		.io_addressIn_valid(_networkUnits_1_io_addressOut_valid),
		.io_addressIn_bits(_networkUnits_1_io_addressOut_bits),
		.io_peAddress_ready(_networkUnits_0_io_peAddress_ready),
		.io_peAddress_valid(_queues_0_io_addressOut_valid),
		.io_peAddress_bits(_queues_0_io_addressOut_bits),
		.io_addressOut_ready(_eagerFork_networkUnits_0_io_addressOut_ready_T),
		.io_addressOut_valid(_networkUnits_0_io_addressOut_valid),
		.io_addressOut_bits(_networkUnits_0_io_addressOut_bits)
	);
	ArgumentNotifierNetworkUnit_1 networkUnits_1(
		.clock(clock),
		.reset(reset),
		.io_peAddress_ready(_networkUnits_1_io_peAddress_ready),
		.io_peAddress_valid(_queues_1_io_addressOut_valid),
		.io_peAddress_bits(_queues_1_io_addressOut_bits),
		.io_addressOut_ready(_networkUnits_0_io_addressIn_ready),
		.io_addressOut_valid(_networkUnits_1_io_addressOut_valid),
		.io_addressOut_bits(_networkUnits_1_io_addressOut_bits)
	);
	AllocatorBuffer queues_0(
		.clock(clock),
		.reset(reset),
		.io_addressIn_ready(io_connPE_0_ready),
		.io_addressIn_valid(io_connPE_0_valid),
		.io_addressIn_bits(io_connPE_0_bits),
		.io_addressOut_ready(_networkUnits_0_io_peAddress_ready),
		.io_addressOut_valid(_queues_0_io_addressOut_valid),
		.io_addressOut_bits(_queues_0_io_addressOut_bits)
	);
	AllocatorBuffer queues_1(
		.clock(clock),
		.reset(reset),
		.io_addressIn_ready(io_connPE_1_ready),
		.io_addressIn_valid(io_connPE_1_valid),
		.io_addressIn_bits(io_connPE_1_bits),
		.io_addressOut_ready(_networkUnits_1_io_peAddress_ready),
		.io_addressOut_valid(_queues_1_io_addressOut_valid),
		.io_addressOut_bits(_queues_1_io_addressOut_bits)
	);
	elasticBasicArbiter arbs_0(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(_arbs_0_io_sources_0_ready),
		.io_sources_0_valid(_demux_io_sinks_0_valid),
		.io_sources_0_bits(_demux_io_sinks_0_bits),
		.io_sink_ready(io_connVAS_0_ready),
		.io_sink_valid(io_connVAS_0_valid),
		.io_sink_bits(io_connVAS_0_bits)
	);
	elasticDemux_2 demux(
		.io_source_ready(_demux_io_source_ready),
		.io_source_valid(_networkUnits_0_io_addressOut_valid & ~eagerFork_regs_0),
		.io_source_bits(_networkUnits_0_io_addressOut_bits),
		.io_sinks_0_ready(_arbs_0_io_sources_0_ready),
		.io_sinks_0_valid(_demux_io_sinks_0_valid),
		.io_sinks_0_bits(_demux_io_sinks_0_bits),
		.io_select_ready(_demux_io_select_ready),
		.io_select_valid(_networkUnits_0_io_addressOut_valid & ~eagerFork_regs_1),
		.io_select_bits(1'h0)
	);
endmodule
module elasticBasicArbiter_1 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits,
	io_select_ready,
	io_select_valid
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [63:0] io_sources_1_bits;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [63:0] io_sink_bits;
	input io_select_ready;
	output wire io_select_valid;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg chooser_lastChoice;
	wire _GEN = (chooser_lastChoice ? io_sources_0_valid : io_sources_1_valid);
	wire choice = (_GEN ? ~chooser_lastChoice : ~io_sources_0_valid);
	wire fire = ((choice ? io_sources_1_valid : io_sources_0_valid) & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 1'h0;
		else if (fire) begin
			if (_GEN)
				chooser_lastChoice <= ~chooser_lastChoice;
			else
				chooser_lastChoice <= ~io_sources_0_valid;
		end
	Queue2_UInt64 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits((choice ? io_sources_1_bits : io_sources_0_bits)),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits(io_sink_bits)
	);
	Queue2_UInt1 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(io_select_ready),
		.io_deq_valid(io_select_valid),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & ~choice;
	assign io_sources_1_ready = fire & choice;
endmodule
module elasticDemux_3 (
	io_source_ready,
	io_source_valid,
	io_source_bits_addr,
	io_source_bits_id,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_addr,
	io_sinks_0_bits_id,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_addr,
	io_sinks_1_bits_id,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [63:0] io_source_bits_addr;
	input [1:0] io_source_bits_id;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [63:0] io_sinks_0_bits_addr;
	output wire [1:0] io_sinks_0_bits_id;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [63:0] io_sinks_1_bits_addr;
	output wire [1:0] io_sinks_1_bits_id;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_addr = io_source_bits_addr;
	assign io_sinks_0_bits_id = io_source_bits_id;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_addr = io_source_bits_addr;
	assign io_sinks_1_bits_id = io_source_bits_id;
	assign io_select_ready = fire;
endmodule
module ram_8x66 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [2:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [65:0] R0_data;
	input [2:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [65:0] W0_data;
	reg [65:0] Memory [0:7];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 66'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue8_ArgumentServer_Anon (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_id,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_id,
	io_count
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [1:0] io_enq_bits_id;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	output wire [1:0] io_deq_bits_id;
	output wire [3:0] io_count;
	wire [65:0] _ram_ext_R0_data;
	reg [2:0] enq_ptr_value;
	reg [2:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 3'h0;
			deq_ptr_value <= 3'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 3'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 3'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_8x66 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_id, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[63:0];
	assign io_deq_bits_id = _ram_ext_R0_data[65:64];
	assign io_count = {maybe_full & ptr_match, enq_ptr_value - deq_ptr_value};
endmodule
module Queue2_ArgumentServer_Anon (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_id,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [1:0] io_enq_bits_id;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x64 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits_addr),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits_addr)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module ram_8x64 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [2:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [63:0] R0_data;
	input [2:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [63:0] W0_data;
	reg [63:0] Memory [0:7];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue8_UInt64 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits;
	reg [2:0] enq_ptr_value;
	reg [2:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 3'h0;
			deq_ptr_value <= 3'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 3'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 3'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_8x64 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module ram_2x67 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [66:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [66:0] W0_data;
	reg [66:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 67'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ArgumentServer_Anon_1 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_id,
	io_enq_bits_sel,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_id,
	io_deq_bits_sel
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [1:0] io_enq_bits_id;
	input io_enq_bits_sel;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	output wire [1:0] io_deq_bits_id;
	output wire io_deq_bits_sel;
	wire [66:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x67 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_sel, io_enq_bits_id, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[63:0];
	assign io_deq_bits_id = _ram_ext_R0_data[65:64];
	assign io_deq_bits_sel = _ram_ext_R0_data[66];
endmodule
module elasticDemux_4 (
	io_source_ready,
	io_source_valid,
	io_source_bits_id,
	io_source_bits_addr,
	io_source_bits_data,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_id,
	io_sinks_0_bits_addr,
	io_sinks_0_bits_data,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_id,
	io_sinks_1_bits_addr,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [1:0] io_source_bits_id;
	input [63:0] io_source_bits_addr;
	input [511:0] io_source_bits_data;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [1:0] io_sinks_0_bits_id;
	output wire [63:0] io_sinks_0_bits_addr;
	output wire [511:0] io_sinks_0_bits_data;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [1:0] io_sinks_1_bits_id;
	output wire [63:0] io_sinks_1_bits_addr;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_id = io_source_bits_id;
	assign io_sinks_0_bits_addr = io_source_bits_addr;
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_id = io_source_bits_id;
	assign io_sinks_1_bits_addr = io_source_bits_addr;
	assign io_select_ready = fire;
endmodule
module ram_2x517 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [516:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [516:0] W0_data;
	reg [516:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 517'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_4 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_data,
	io_enq_bits_resp,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_data,
	io_deq_bits_resp,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_id;
	input [511:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [511:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [516:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x517 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_resp, io_enq_bits_data, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[1:0];
	assign io_deq_bits_data = _ram_ext_R0_data[513:2];
	assign io_deq_bits_resp = _ram_ext_R0_data[515:514];
	assign io_deq_bits_last = _ram_ext_R0_data[516];
endmodule
module ram_2x579 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [578:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [578:0] W0_data;
	reg [578:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 579'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ArgumentServer_Anon_3 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_data,
	io_enq_bits_sel,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_data,
	io_deq_bits_sel
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [511:0] io_enq_bits_data;
	input io_enq_bits_sel;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [511:0] io_deq_bits_data;
	output wire io_deq_bits_sel;
	wire [578:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x579 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_sel, io_enq_bits_data, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[1:0];
	assign io_deq_bits_addr = _ram_ext_R0_data[65:2];
	assign io_deq_bits_data = _ram_ext_R0_data[577:66];
	assign io_deq_bits_sel = _ram_ext_R0_data[578];
endmodule
module ram_2x95 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [94:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [94:0] W0_data;
	reg [94:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 95'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadAddressChannel_2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [94:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x95 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[1:0];
	assign io_deq_bits_addr = _ram_ext_R0_data[65:2];
	assign io_deq_bits_len = _ram_ext_R0_data[73:66];
	assign io_deq_bits_size = _ram_ext_R0_data[76:74];
	assign io_deq_bits_burst = _ram_ext_R0_data[78:77];
	assign io_deq_bits_lock = _ram_ext_R0_data[79];
	assign io_deq_bits_cache = _ram_ext_R0_data[83:80];
	assign io_deq_bits_prot = _ram_ext_R0_data[86:84];
	assign io_deq_bits_qos = _ram_ext_R0_data[90:87];
	assign io_deq_bits_region = _ram_ext_R0_data[94:91];
endmodule
module Counter_2 (
	clock,
	reset,
	io_incEn,
	io_decEn,
	io_empty,
	io_full
);
	input clock;
	input reset;
	input io_incEn;
	input io_decEn;
	output wire io_empty;
	output wire io_full;
	reg [15:0] rCounter;
	always @(posedge clock)
		if (reset)
			rCounter <= 16'h0000;
		else if (~(io_incEn & io_decEn)) begin
			if (io_incEn)
				rCounter <= rCounter + 16'h0001;
			else if (io_decEn)
				rCounter <= rCounter - 16'h0001;
		end
	assign io_empty = rCounter == 16'h0000;
	assign io_full = &rCounter;
endmodule
module ArgumentServer (
	clock,
	reset,
	io_connNetwork_ready,
	io_connNetwork_valid,
	io_connNetwork_bits,
	io_connStealNtw_ctrl_stealReq_valid,
	io_connStealNtw_ctrl_stealReq_ready,
	io_connStealNtw_data_qOutTask_ready,
	io_connStealNtw_data_qOutTask_valid,
	io_connStealNtw_data_qOutTask_bits,
	io_m_axi_counter_ar_ready,
	io_m_axi_counter_ar_valid,
	io_m_axi_counter_ar_bits_id,
	io_m_axi_counter_ar_bits_addr,
	io_m_axi_counter_r_ready,
	io_m_axi_counter_r_valid,
	io_m_axi_counter_r_bits_id,
	io_m_axi_counter_r_bits_data,
	io_m_axi_counter_r_bits_resp,
	io_m_axi_counter_r_bits_last,
	io_m_axi_counter_aw_ready,
	io_m_axi_counter_aw_valid,
	io_m_axi_counter_aw_bits_id,
	io_m_axi_counter_aw_bits_addr,
	io_m_axi_counter_w_ready,
	io_m_axi_counter_w_valid,
	io_m_axi_counter_w_bits_data,
	io_m_axi_counter_b_ready,
	io_m_axi_counter_b_valid,
	io_m_axi_counter_b_bits_id,
	io_m_axi_task_ar_ready,
	io_m_axi_task_ar_valid,
	io_m_axi_task_ar_bits_id,
	io_m_axi_task_ar_bits_addr,
	io_m_axi_task_ar_bits_len,
	io_m_axi_task_ar_bits_size,
	io_m_axi_task_ar_bits_burst,
	io_m_axi_task_ar_bits_lock,
	io_m_axi_task_ar_bits_cache,
	io_m_axi_task_ar_bits_prot,
	io_m_axi_task_ar_bits_qos,
	io_m_axi_task_ar_bits_region,
	io_m_axi_task_r_ready,
	io_m_axi_task_r_valid,
	io_m_axi_task_r_bits_data,
	io_done
);
	input clock;
	input reset;
	output wire io_connNetwork_ready;
	input io_connNetwork_valid;
	input [63:0] io_connNetwork_bits;
	output wire io_connStealNtw_ctrl_stealReq_valid;
	input io_connStealNtw_ctrl_stealReq_ready;
	input io_connStealNtw_data_qOutTask_ready;
	output wire io_connStealNtw_data_qOutTask_valid;
	output wire [511:0] io_connStealNtw_data_qOutTask_bits;
	input io_m_axi_counter_ar_ready;
	output wire io_m_axi_counter_ar_valid;
	output wire [1:0] io_m_axi_counter_ar_bits_id;
	output wire [63:0] io_m_axi_counter_ar_bits_addr;
	output wire io_m_axi_counter_r_ready;
	input io_m_axi_counter_r_valid;
	input [1:0] io_m_axi_counter_r_bits_id;
	input [511:0] io_m_axi_counter_r_bits_data;
	input [1:0] io_m_axi_counter_r_bits_resp;
	input io_m_axi_counter_r_bits_last;
	input io_m_axi_counter_aw_ready;
	output wire io_m_axi_counter_aw_valid;
	output wire [1:0] io_m_axi_counter_aw_bits_id;
	output wire [63:0] io_m_axi_counter_aw_bits_addr;
	input io_m_axi_counter_w_ready;
	output wire io_m_axi_counter_w_valid;
	output wire [511:0] io_m_axi_counter_w_bits_data;
	output wire io_m_axi_counter_b_ready;
	input io_m_axi_counter_b_valid;
	input [1:0] io_m_axi_counter_b_bits_id;
	input io_m_axi_task_ar_ready;
	output wire io_m_axi_task_ar_valid;
	output wire [1:0] io_m_axi_task_ar_bits_id;
	output wire [63:0] io_m_axi_task_ar_bits_addr;
	output wire [7:0] io_m_axi_task_ar_bits_len;
	output wire [2:0] io_m_axi_task_ar_bits_size;
	output wire [1:0] io_m_axi_task_ar_bits_burst;
	output wire io_m_axi_task_ar_bits_lock;
	output wire [3:0] io_m_axi_task_ar_bits_cache;
	output wire [2:0] io_m_axi_task_ar_bits_prot;
	output wire [3:0] io_m_axi_task_ar_bits_qos;
	output wire [3:0] io_m_axi_task_ar_bits_region;
	output wire io_m_axi_task_r_ready;
	input io_m_axi_task_r_valid;
	input [511:0] io_m_axi_task_r_bits_data;
	output wire io_done;
	wire _spawn_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _spawn_rTaskCount_io_empty;
	wire _spawn_rTaskCount_io_full;
	wire _update_sinkBuffered__sinkBuffer_2_io_enq_ready;
	wire _update_sinkBuffered__sinkBuffer_1_io_enq_ready;
	wire _update_sinkBuffered__sinkBuffer_1_io_deq_valid;
	wire [1:0] _update_sinkBuffered__sinkBuffer_1_io_deq_bits_id;
	wire [63:0] _update_sinkBuffered__sinkBuffer_1_io_deq_bits_addr;
	wire [511:0] _update_sinkBuffered__sinkBuffer_1_io_deq_bits_data;
	wire _update_sinkBuffered__sinkBuffer_1_io_deq_bits_sel;
	wire _update_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _update_sinkBuffered__sinkBuffer_io_deq_valid;
	wire [1:0] _update_sinkBuffered__sinkBuffer_io_deq_bits_id;
	wire [511:0] _update_sinkBuffered__sinkBuffer_io_deq_bits_data;
	wire [1:0] _update_sinkBuffered__sinkBuffer_io_deq_bits_resp;
	wire _update_sinkBuffered__sinkBuffer_io_deq_bits_last;
	wire _update_sinkBuffer_io_enq_ready;
	wire _update_sinkBuffer_io_deq_valid;
	wire [1:0] _update_sinkBuffer_io_deq_bits_id;
	wire [511:0] _update_sinkBuffer_io_deq_bits_data;
	wire _update_dmux_io_source_ready;
	wire _update_dmux_io_sinks_0_valid;
	wire _update_dmux_io_sinks_1_valid;
	wire [1:0] _update_dmux_io_sinks_1_bits_id;
	wire [63:0] _update_dmux_io_sinks_1_bits_addr;
	wire _update_dmux_io_select_ready;
	wire _input_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _input_sinkBuffered__sinkBuffer_io_deq_valid;
	wire [63:0] _input_sinkBuffered__sinkBuffer_io_deq_bits_addr;
	wire [1:0] _input_sinkBuffered__sinkBuffer_io_deq_bits_id;
	wire _input_sinkBuffered__sinkBuffer_io_deq_bits_sel;
	wire _input_sinkBuffer_io_enq_ready;
	wire _input_sinkBuffer_io_deq_valid;
	wire [63:0] _input_sinkBuffer_io_deq_bits_addr;
	wire [1:0] _input_sinkBuffer_io_deq_bits_id;
	wire _input_sinkBuffer_io_deq_bits_sel;
	wire _input_sourceBuffer_1_io_enq_ready;
	wire _input_sourceBuffer_1_io_deq_valid;
	wire [63:0] _input_sourceBuffer_1_io_deq_bits;
	wire _input_sourceBuffer_io_enq_ready;
	wire _input_sourceBuffer_io_deq_valid;
	wire [63:0] _input_sourceBuffer_io_deq_bits_addr;
	wire _input_qFeedback_io_enq_ready;
	wire _input_qFeedback_io_deq_valid;
	wire [63:0] _input_qFeedback_io_deq_bits_addr;
	wire [1:0] _input_qFeedback_io_deq_bits_id;
	wire [3:0] _input_qFeedback_io_count;
	wire _input_dmuxInput_io_source_ready;
	wire _input_dmuxInput_io_sinks_1_valid;
	wire [63:0] _input_dmuxInput_io_sinks_1_bits_addr;
	wire [1:0] _input_dmuxInput_io_sinks_1_bits_id;
	wire _input_dmuxInput_io_select_ready;
	wire _input_arbInput_io_sources_1_ready;
	wire _input_arbInput_io_sink_valid;
	wire [63:0] _input_arbInput_io_sink_bits;
	wire _input_arbInput_io_select_valid;
	reg regDone;
	reg memInflightValid_0;
	reg memInflightValid_1;
	reg memInflightValid_2;
	reg memInflightValid_3;
	reg [63:0] memInflight_0_addr;
	reg memInflight_0_stage;
	reg [31:0] memInflight_0_decrement;
	reg [63:0] memInflight_1_addr;
	reg memInflight_1_stage;
	reg [31:0] memInflight_1_decrement;
	reg [63:0] memInflight_2_addr;
	reg memInflight_2_stage;
	reg [31:0] memInflight_2_decrement;
	reg [63:0] memInflight_3_addr;
	reg memInflight_3_stage;
	reg [31:0] memInflight_3_decrement;
	wire _input_T = _input_sinkBuffered__sinkBuffer_io_enq_ready & _input_sourceBuffer_1_io_deq_valid;
	wire input_matchList_0 = memInflightValid_0 & (memInflight_0_addr == _input_sourceBuffer_1_io_deq_bits);
	wire input_matchList_1 = memInflightValid_1 & (memInflight_1_addr == _input_sourceBuffer_1_io_deq_bits);
	wire input_matchList_2 = memInflightValid_2 & (memInflight_2_addr == _input_sourceBuffer_1_io_deq_bits);
	wire [1:0] input_matchAddr = (input_matchList_0 ? 2'h0 : (input_matchList_1 ? 2'h1 : {1'h1, ~input_matchList_2}));
	wire input_matchValid = ((input_matchList_0 | input_matchList_1) | input_matchList_2) | (memInflightValid_3 & (memInflight_3_addr == _input_sourceBuffer_1_io_deq_bits));
	wire [2:0] _input_firstEmpty_T_1 = ~{memInflightValid_2, memInflightValid_1, memInflightValid_0};
	wire [1:0] input_firstEmpty = (_input_firstEmpty_T_1[0] ? 2'h0 : (_input_firstEmpty_T_1[1] ? 2'h1 : {1'h1, ~_input_firstEmpty_T_1[2]}));
	wire [3:0] _input_isFull_T = {memInflightValid_3, memInflightValid_2, memInflightValid_1, memInflightValid_0};
	wire [3:0] _GEN = {memInflight_3_stage, memInflight_2_stage, memInflight_1_stage, memInflight_0_stage};
	wire [127:0] _GEN_0 = {memInflight_3_decrement, memInflight_2_decrement, memInflight_1_decrement, memInflight_0_decrement};
	wire _input_T_2 = _input_qFeedback_io_count > 4'h2;
	wire _GEN_1 = ~(&_input_isFull_T) | (_input_qFeedback_io_count > 4'h2);
	reg input_eagerFork_regs_0;
	reg input_eagerFork_regs_1;
	wire input_eagerFork_dmuxInputDataSel_ready_qual1_0 = _input_dmuxInput_io_source_ready | input_eagerFork_regs_0;
	wire input_eagerFork_dmuxInputDataSel_ready_qual1_1 = _input_dmuxInput_io_select_ready | input_eagerFork_regs_1;
	wire input_dmuxInputDataSel_ready = input_eagerFork_dmuxInputDataSel_ready_qual1_0 & input_eagerFork_dmuxInputDataSel_ready_qual1_1;
	wire io_m_axi_counter_r_ready_0 = _update_sinkBuffered__sinkBuffer_io_enq_ready & io_m_axi_counter_r_valid;
	wire update_readData_ready = _update_sinkBuffered__sinkBuffer_1_io_enq_ready & _update_sinkBuffer_io_deq_valid;
	wire [255:0] _GEN_2 = {memInflight_3_addr, memInflight_2_addr, memInflight_1_addr, memInflight_0_addr};
	wire [31:0] update_decrement = _GEN_0[_update_sinkBuffer_io_deq_bits_id * 32+:32];
	wire _update_regDone_T = _update_sinkBuffer_io_deq_bits_data[31:0] == 32'h00000000;
	reg update_eagerFork_regs_0;
	reg update_eagerFork_regs_1;
	wire update_eagerFork_dmuxDataSel_ready_qual1_0 = _update_dmux_io_source_ready | update_eagerFork_regs_0;
	wire update_eagerFork_dmuxDataSel_ready_qual1_1 = _update_dmux_io_select_ready | update_eagerFork_regs_1;
	wire update_dmuxDataSel_ready = update_eagerFork_dmuxDataSel_ready_qual1_0 & update_eagerFork_dmuxDataSel_ready_qual1_1;
	reg update_eagerFork_regs_1_0;
	reg update_eagerFork_regs_1_1;
	wire update_eagerFork_dmux_io_sinks_0_ready_qual1_0 = io_m_axi_counter_aw_ready | update_eagerFork_regs_1_0;
	wire update_eagerFork_dmux_io_sinks_0_ready_qual1_1 = io_m_axi_counter_w_ready | update_eagerFork_regs_1_1;
	wire _update_eagerFork_dmux_io_sinks_0_ready_T = update_eagerFork_dmux_io_sinks_0_ready_qual1_0 & update_eagerFork_dmux_io_sinks_0_ready_qual1_1;
	wire _update_T_2 = _update_sinkBuffered__sinkBuffer_2_io_enq_ready & _update_dmux_io_sinks_1_valid;
	wire io_m_axi_task_r_ready_0 = (_spawn_sinkBuffered__sinkBuffer_io_enq_ready & io_m_axi_task_r_valid) & ~_spawn_rTaskCount_io_full;
	always @(posedge clock) begin : sv2v_autoblock_1
		reg _GEN_3;
		reg _GEN_4;
		reg _GEN_5;
		reg _GEN_6;
		reg _GEN_7;
		reg _GEN_8;
		reg _GEN_9;
		reg _GEN_10;
		reg _GEN_11;
		reg _GEN_12;
		reg _GEN_13;
		reg _GEN_14;
		reg _GEN_15;
		reg _GEN_16;
		reg _GEN_17;
		reg _GEN_18;
		_GEN_3 = ~(&_input_isFull_T) & (input_firstEmpty == 2'h0);
		_GEN_4 = ~(&_input_isFull_T) & (input_firstEmpty == 2'h1);
		_GEN_5 = ~(&_input_isFull_T) & (input_firstEmpty == 2'h2);
		_GEN_6 = ~(&_input_isFull_T) & (&input_firstEmpty);
		_GEN_7 = (~_input_T | input_matchValid) | ~_GEN_3;
		_GEN_8 = _GEN_7 & memInflight_0_stage;
		_GEN_9 = (~_input_T | input_matchValid) | ~_GEN_4;
		_GEN_10 = _GEN_9 & memInflight_1_stage;
		_GEN_11 = (~_input_T | input_matchValid) | ~_GEN_5;
		_GEN_12 = _GEN_11 & memInflight_2_stage;
		_GEN_13 = (~_input_T | input_matchValid) | ~_GEN_6;
		_GEN_14 = _GEN_13 & memInflight_3_stage;
		_GEN_15 = io_m_axi_counter_r_ready_0 & (io_m_axi_counter_r_bits_id == 2'h0);
		_GEN_16 = io_m_axi_counter_r_ready_0 & (io_m_axi_counter_r_bits_id == 2'h1);
		_GEN_17 = io_m_axi_counter_r_ready_0 & (io_m_axi_counter_r_bits_id == 2'h2);
		_GEN_18 = io_m_axi_counter_r_ready_0 & (&io_m_axi_counter_r_bits_id);
		if (reset) begin
			regDone <= 1'h0;
			memInflightValid_0 <= 1'h0;
			memInflightValid_1 <= 1'h0;
			memInflightValid_2 <= 1'h0;
			memInflightValid_3 <= 1'h0;
			input_eagerFork_regs_0 <= 1'h0;
			input_eagerFork_regs_1 <= 1'h0;
			update_eagerFork_regs_0 <= 1'h0;
			update_eagerFork_regs_1 <= 1'h0;
			update_eagerFork_regs_1_0 <= 1'h0;
			update_eagerFork_regs_1_1 <= 1'h0;
		end
		else begin : sv2v_autoblock_2
			reg _GEN_19;
			reg _GEN_20;
			reg _GEN_21;
			reg _GEN_22;
			reg _GEN_23;
			reg _GEN_24;
			reg _GEN_25;
			reg _GEN_26;
			_GEN_19 = ((_input_T & ~input_matchValid) & _GEN_3) | memInflightValid_0;
			_GEN_20 = ((_input_T & ~input_matchValid) & _GEN_4) | memInflightValid_1;
			_GEN_21 = ((_input_T & ~input_matchValid) & _GEN_5) | memInflightValid_2;
			_GEN_22 = ((_input_T & ~input_matchValid) & _GEN_6) | memInflightValid_3;
			_GEN_23 = _update_T_2 & (_update_dmux_io_sinks_1_bits_id == 2'h0);
			_GEN_24 = _update_T_2 & (_update_dmux_io_sinks_1_bits_id == 2'h1);
			_GEN_25 = _update_T_2 & (_update_dmux_io_sinks_1_bits_id == 2'h2);
			_GEN_26 = _update_T_2 & (&_update_dmux_io_sinks_1_bits_id);
			if (update_readData_ready)
				regDone <= _update_regDone_T;
			if (io_m_axi_counter_b_valid) begin
				memInflightValid_0 <= ~((io_m_axi_counter_b_bits_id == 2'h0) | _GEN_23) & _GEN_19;
				memInflightValid_1 <= ~((io_m_axi_counter_b_bits_id == 2'h1) | _GEN_24) & _GEN_20;
				memInflightValid_2 <= ~((io_m_axi_counter_b_bits_id == 2'h2) | _GEN_25) & _GEN_21;
				memInflightValid_3 <= ~(&io_m_axi_counter_b_bits_id | _GEN_26) & _GEN_22;
			end
			else begin
				memInflightValid_0 <= ~_GEN_23 & _GEN_19;
				memInflightValid_1 <= ~_GEN_24 & _GEN_20;
				memInflightValid_2 <= ~_GEN_25 & _GEN_21;
				memInflightValid_3 <= ~_GEN_26 & _GEN_22;
			end
			input_eagerFork_regs_0 <= (input_eagerFork_dmuxInputDataSel_ready_qual1_0 & _input_sinkBuffer_io_deq_valid) & ~input_dmuxInputDataSel_ready;
			input_eagerFork_regs_1 <= (input_eagerFork_dmuxInputDataSel_ready_qual1_1 & _input_sinkBuffer_io_deq_valid) & ~input_dmuxInputDataSel_ready;
			update_eagerFork_regs_0 <= (update_eagerFork_dmuxDataSel_ready_qual1_0 & _update_sinkBuffered__sinkBuffer_1_io_deq_valid) & ~update_dmuxDataSel_ready;
			update_eagerFork_regs_1 <= (update_eagerFork_dmuxDataSel_ready_qual1_1 & _update_sinkBuffered__sinkBuffer_1_io_deq_valid) & ~update_dmuxDataSel_ready;
			update_eagerFork_regs_1_0 <= (update_eagerFork_dmux_io_sinks_0_ready_qual1_0 & _update_dmux_io_sinks_0_valid) & ~_update_eagerFork_dmux_io_sinks_0_ready_T;
			update_eagerFork_regs_1_1 <= (update_eagerFork_dmux_io_sinks_0_ready_qual1_1 & _update_dmux_io_sinks_0_valid) & ~_update_eagerFork_dmux_io_sinks_0_ready_T;
		end
		if (_GEN_7)
			;
		else
			memInflight_0_addr <= _input_sourceBuffer_1_io_deq_bits;
		if (update_readData_ready) begin
			memInflight_0_stage <= ((_update_sinkBuffer_io_deq_bits_id == 2'h0) | _GEN_15) | _GEN_8;
			memInflight_1_stage <= ((_update_sinkBuffer_io_deq_bits_id == 2'h1) | _GEN_16) | _GEN_10;
			memInflight_2_stage <= ((_update_sinkBuffer_io_deq_bits_id == 2'h2) | _GEN_17) | _GEN_12;
			memInflight_3_stage <= (&_update_sinkBuffer_io_deq_bits_id | _GEN_18) | _GEN_14;
		end
		else begin
			memInflight_0_stage <= _GEN_15 | _GEN_8;
			memInflight_1_stage <= _GEN_16 | _GEN_10;
			memInflight_2_stage <= _GEN_17 | _GEN_12;
			memInflight_3_stage <= _GEN_18 | _GEN_14;
		end
		if (_input_T) begin
			if (input_matchValid) begin : sv2v_autoblock_3
				reg [31:0] _input_memInflight_decrement_T;
				_input_memInflight_decrement_T = _GEN_0[input_matchAddr * 32+:32] + 32'h00000001;
				if (~_GEN[input_matchAddr] & (input_matchAddr == 2'h0))
					memInflight_0_decrement <= _input_memInflight_decrement_T;
				if (~_GEN[input_matchAddr] & (input_matchAddr == 2'h1))
					memInflight_1_decrement <= _input_memInflight_decrement_T;
				if (~_GEN[input_matchAddr] & (input_matchAddr == 2'h2))
					memInflight_2_decrement <= _input_memInflight_decrement_T;
				if (~_GEN[input_matchAddr] & (&input_matchAddr))
					memInflight_3_decrement <= _input_memInflight_decrement_T;
			end
			else begin
				if (_GEN_3)
					memInflight_0_decrement <= 32'h00000001;
				if (_GEN_4)
					memInflight_1_decrement <= 32'h00000001;
				if (_GEN_5)
					memInflight_2_decrement <= 32'h00000001;
				if (_GEN_6)
					memInflight_3_decrement <= 32'h00000001;
			end
		end
		if (_GEN_9)
			;
		else
			memInflight_1_addr <= _input_sourceBuffer_1_io_deq_bits;
		if (_GEN_11)
			;
		else
			memInflight_2_addr <= _input_sourceBuffer_1_io_deq_bits;
		if (_GEN_13)
			;
		else
			memInflight_3_addr <= _input_sourceBuffer_1_io_deq_bits;
	end
	elasticBasicArbiter_1 input_arbInput(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(io_connNetwork_ready),
		.io_sources_0_valid(io_connNetwork_valid),
		.io_sources_0_bits({io_connNetwork_bits[63:6], 6'h00}),
		.io_sources_1_ready(_input_arbInput_io_sources_1_ready),
		.io_sources_1_valid(_input_sourceBuffer_io_deq_valid),
		.io_sources_1_bits(_input_sourceBuffer_io_deq_bits_addr),
		.io_sink_ready(_input_sourceBuffer_1_io_enq_ready),
		.io_sink_valid(_input_arbInput_io_sink_valid),
		.io_sink_bits(_input_arbInput_io_sink_bits),
		.io_select_ready(_input_arbInput_io_select_valid),
		.io_select_valid(_input_arbInput_io_select_valid)
	);
	elasticDemux_3 input_dmuxInput(
		.io_source_ready(_input_dmuxInput_io_source_ready),
		.io_source_valid(_input_sinkBuffer_io_deq_valid & ~input_eagerFork_regs_0),
		.io_source_bits_addr(_input_sinkBuffer_io_deq_bits_addr),
		.io_source_bits_id(_input_sinkBuffer_io_deq_bits_id),
		.io_sinks_0_ready(io_m_axi_counter_ar_ready),
		.io_sinks_0_valid(io_m_axi_counter_ar_valid),
		.io_sinks_0_bits_addr(io_m_axi_counter_ar_bits_addr),
		.io_sinks_0_bits_id(io_m_axi_counter_ar_bits_id),
		.io_sinks_1_ready(_input_qFeedback_io_enq_ready),
		.io_sinks_1_valid(_input_dmuxInput_io_sinks_1_valid),
		.io_sinks_1_bits_addr(_input_dmuxInput_io_sinks_1_bits_addr),
		.io_sinks_1_bits_id(_input_dmuxInput_io_sinks_1_bits_id),
		.io_select_ready(_input_dmuxInput_io_select_ready),
		.io_select_valid(_input_sinkBuffer_io_deq_valid & ~input_eagerFork_regs_1),
		.io_select_bits(_input_sinkBuffer_io_deq_bits_sel)
	);
	Queue8_ArgumentServer_Anon input_qFeedback(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_input_qFeedback_io_enq_ready),
		.io_enq_valid(_input_dmuxInput_io_sinks_1_valid),
		.io_enq_bits_addr(_input_dmuxInput_io_sinks_1_bits_addr),
		.io_enq_bits_id(_input_dmuxInput_io_sinks_1_bits_id),
		.io_deq_ready(_input_sourceBuffer_io_enq_ready),
		.io_deq_valid(_input_qFeedback_io_deq_valid),
		.io_deq_bits_addr(_input_qFeedback_io_deq_bits_addr),
		.io_deq_bits_id(_input_qFeedback_io_deq_bits_id),
		.io_count(_input_qFeedback_io_count)
	);
	Queue2_ArgumentServer_Anon input_sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_input_sourceBuffer_io_enq_ready),
		.io_enq_valid(_input_qFeedback_io_deq_valid),
		.io_enq_bits_addr(_input_qFeedback_io_deq_bits_addr),
		.io_enq_bits_id(_input_qFeedback_io_deq_bits_id),
		.io_deq_ready(_input_arbInput_io_sources_1_ready),
		.io_deq_valid(_input_sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_input_sourceBuffer_io_deq_bits_addr)
	);
	Queue8_UInt64 input_sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_input_sourceBuffer_1_io_enq_ready),
		.io_enq_valid(_input_arbInput_io_sink_valid),
		.io_enq_bits(_input_arbInput_io_sink_bits),
		.io_deq_ready(_input_T & (input_matchValid ? ~_GEN[input_matchAddr] | _input_T_2 : _GEN_1)),
		.io_deq_valid(_input_sourceBuffer_1_io_deq_valid),
		.io_deq_bits(_input_sourceBuffer_1_io_deq_bits)
	);
	Queue2_ArgumentServer_Anon_1 input_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_input_sinkBuffer_io_enq_ready),
		.io_enq_valid(_input_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_enq_bits_addr(_input_sinkBuffered__sinkBuffer_io_deq_bits_addr),
		.io_enq_bits_id(_input_sinkBuffered__sinkBuffer_io_deq_bits_id),
		.io_enq_bits_sel(_input_sinkBuffered__sinkBuffer_io_deq_bits_sel),
		.io_deq_ready(input_dmuxInputDataSel_ready),
		.io_deq_valid(_input_sinkBuffer_io_deq_valid),
		.io_deq_bits_addr(_input_sinkBuffer_io_deq_bits_addr),
		.io_deq_bits_id(_input_sinkBuffer_io_deq_bits_id),
		.io_deq_bits_sel(_input_sinkBuffer_io_deq_bits_sel)
	);
	Queue2_ArgumentServer_Anon_1 input_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_input_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(_input_T & (input_matchValid ? _GEN[input_matchAddr] & _input_T_2 : _GEN_1)),
		.io_enq_bits_addr(_input_sourceBuffer_1_io_deq_bits),
		.io_enq_bits_id(input_firstEmpty),
		.io_enq_bits_sel(input_matchValid | &_input_isFull_T),
		.io_deq_ready(_input_sinkBuffer_io_enq_ready),
		.io_deq_valid(_input_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_deq_bits_addr(_input_sinkBuffered__sinkBuffer_io_deq_bits_addr),
		.io_deq_bits_id(_input_sinkBuffered__sinkBuffer_io_deq_bits_id),
		.io_deq_bits_sel(_input_sinkBuffered__sinkBuffer_io_deq_bits_sel)
	);
	elasticDemux_4 update_dmux(
		.io_source_ready(_update_dmux_io_source_ready),
		.io_source_valid(_update_sinkBuffered__sinkBuffer_1_io_deq_valid & ~update_eagerFork_regs_0),
		.io_source_bits_id(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_id),
		.io_source_bits_addr(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_addr),
		.io_source_bits_data(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_data),
		.io_sinks_0_ready(_update_eagerFork_dmux_io_sinks_0_ready_T),
		.io_sinks_0_valid(_update_dmux_io_sinks_0_valid),
		.io_sinks_0_bits_id(io_m_axi_counter_aw_bits_id),
		.io_sinks_0_bits_addr(io_m_axi_counter_aw_bits_addr),
		.io_sinks_0_bits_data(io_m_axi_counter_w_bits_data),
		.io_sinks_1_ready(_update_T_2),
		.io_sinks_1_valid(_update_dmux_io_sinks_1_valid),
		.io_sinks_1_bits_id(_update_dmux_io_sinks_1_bits_id),
		.io_sinks_1_bits_addr(_update_dmux_io_sinks_1_bits_addr),
		.io_select_ready(_update_dmux_io_select_ready),
		.io_select_valid(_update_sinkBuffered__sinkBuffer_1_io_deq_valid & ~update_eagerFork_regs_1),
		.io_select_bits(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_sel)
	);
	Queue2_ReadDataChannel_4 update_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_update_sinkBuffer_io_enq_ready),
		.io_enq_valid(_update_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_enq_bits_id(_update_sinkBuffered__sinkBuffer_io_deq_bits_id),
		.io_enq_bits_data(_update_sinkBuffered__sinkBuffer_io_deq_bits_data),
		.io_enq_bits_resp(_update_sinkBuffered__sinkBuffer_io_deq_bits_resp),
		.io_enq_bits_last(_update_sinkBuffered__sinkBuffer_io_deq_bits_last),
		.io_deq_ready(update_readData_ready),
		.io_deq_valid(_update_sinkBuffer_io_deq_valid),
		.io_deq_bits_id(_update_sinkBuffer_io_deq_bits_id),
		.io_deq_bits_data(_update_sinkBuffer_io_deq_bits_data),
		.io_deq_bits_resp(),
		.io_deq_bits_last()
	);
	Queue2_ReadDataChannel_4 update_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_update_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(io_m_axi_counter_r_ready_0),
		.io_enq_bits_id(io_m_axi_counter_r_bits_id),
		.io_enq_bits_data(io_m_axi_counter_r_bits_data),
		.io_enq_bits_resp(io_m_axi_counter_r_bits_resp),
		.io_enq_bits_last(io_m_axi_counter_r_bits_last),
		.io_deq_ready(_update_sinkBuffer_io_enq_ready),
		.io_deq_valid(_update_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_deq_bits_id(_update_sinkBuffered__sinkBuffer_io_deq_bits_id),
		.io_deq_bits_data(_update_sinkBuffered__sinkBuffer_io_deq_bits_data),
		.io_deq_bits_resp(_update_sinkBuffered__sinkBuffer_io_deq_bits_resp),
		.io_deq_bits_last(_update_sinkBuffered__sinkBuffer_io_deq_bits_last)
	);
	Queue2_ArgumentServer_Anon_3 update_sinkBuffered__sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_update_sinkBuffered__sinkBuffer_1_io_enq_ready),
		.io_enq_valid(update_readData_ready),
		.io_enq_bits_id(_update_sinkBuffer_io_deq_bits_id),
		.io_enq_bits_addr(_GEN_2[_update_sinkBuffer_io_deq_bits_id * 64+:64]),
		.io_enq_bits_data({480'h0, _update_sinkBuffer_io_deq_bits_data[31:0] - update_decrement}),
		.io_enq_bits_sel(~((_update_sinkBuffer_io_deq_bits_data[31:0] > update_decrement) | _update_regDone_T)),
		.io_deq_ready(update_dmuxDataSel_ready),
		.io_deq_valid(_update_sinkBuffered__sinkBuffer_1_io_deq_valid),
		.io_deq_bits_id(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_id),
		.io_deq_bits_addr(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_addr),
		.io_deq_bits_data(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_data),
		.io_deq_bits_sel(_update_sinkBuffered__sinkBuffer_1_io_deq_bits_sel)
	);
	Queue2_ReadAddressChannel_2 update_sinkBuffered__sinkBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_update_sinkBuffered__sinkBuffer_2_io_enq_ready),
		.io_enq_valid(_update_T_2),
		.io_enq_bits_id(_update_dmux_io_sinks_1_bits_id),
		.io_enq_bits_addr(_update_dmux_io_sinks_1_bits_addr),
		.io_enq_bits_len(8'h00),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(io_m_axi_task_ar_ready),
		.io_deq_valid(io_m_axi_task_ar_valid),
		.io_deq_bits_id(io_m_axi_task_ar_bits_id),
		.io_deq_bits_addr(io_m_axi_task_ar_bits_addr),
		.io_deq_bits_len(io_m_axi_task_ar_bits_len),
		.io_deq_bits_size(io_m_axi_task_ar_bits_size),
		.io_deq_bits_burst(io_m_axi_task_ar_bits_burst),
		.io_deq_bits_lock(io_m_axi_task_ar_bits_lock),
		.io_deq_bits_cache(io_m_axi_task_ar_bits_cache),
		.io_deq_bits_prot(io_m_axi_task_ar_bits_prot),
		.io_deq_bits_qos(io_m_axi_task_ar_bits_qos),
		.io_deq_bits_region(io_m_axi_task_ar_bits_region)
	);
	Counter_2 spawn_rTaskCount(
		.clock(clock),
		.reset(reset),
		.io_incEn(io_m_axi_task_r_ready_0),
		.io_decEn(~_spawn_rTaskCount_io_empty & io_connStealNtw_ctrl_stealReq_ready),
		.io_empty(_spawn_rTaskCount_io_empty),
		.io_full(_spawn_rTaskCount_io_full)
	);
	Queue2_UInt512 spawn_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_spawn_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(io_m_axi_task_r_ready_0),
		.io_enq_bits(io_m_axi_task_r_bits_data),
		.io_deq_ready(io_connStealNtw_data_qOutTask_ready),
		.io_deq_valid(io_connStealNtw_data_qOutTask_valid),
		.io_deq_bits(io_connStealNtw_data_qOutTask_bits)
	);
	assign io_connStealNtw_ctrl_stealReq_valid = ~_spawn_rTaskCount_io_empty;
	assign io_m_axi_counter_r_ready = io_m_axi_counter_r_ready_0;
	assign io_m_axi_counter_aw_valid = _update_dmux_io_sinks_0_valid & ~update_eagerFork_regs_1_0;
	assign io_m_axi_counter_w_valid = _update_dmux_io_sinks_0_valid & ~update_eagerFork_regs_1_1;
	assign io_m_axi_counter_b_ready = io_m_axi_counter_b_valid;
	assign io_m_axi_task_r_ready = io_m_axi_task_r_ready_0;
	assign io_done = regDone;
endmodule
module ArgumentServerMfpgaWrapper (
	clock,
	reset,
	io_connNetwork_ready,
	io_connNetwork_valid,
	io_connNetwork_bits,
	io_connStealNtw_ctrl_stealReq_valid,
	io_connStealNtw_ctrl_stealReq_ready,
	io_connStealNtw_data_qOutTask_ready,
	io_connStealNtw_data_qOutTask_valid,
	io_connStealNtw_data_qOutTask_bits,
	io_m_axi_counter_ar_ready,
	io_m_axi_counter_ar_valid,
	io_m_axi_counter_ar_bits_id,
	io_m_axi_counter_ar_bits_addr,
	io_m_axi_counter_r_ready,
	io_m_axi_counter_r_valid,
	io_m_axi_counter_r_bits_id,
	io_m_axi_counter_r_bits_data,
	io_m_axi_counter_r_bits_resp,
	io_m_axi_counter_r_bits_last,
	io_m_axi_counter_aw_ready,
	io_m_axi_counter_aw_valid,
	io_m_axi_counter_aw_bits_id,
	io_m_axi_counter_aw_bits_addr,
	io_m_axi_counter_w_ready,
	io_m_axi_counter_w_valid,
	io_m_axi_counter_w_bits_data,
	io_m_axi_counter_b_ready,
	io_m_axi_counter_b_valid,
	io_m_axi_counter_b_bits_id,
	io_m_axi_task_ar_ready,
	io_m_axi_task_ar_valid,
	io_m_axi_task_ar_bits_id,
	io_m_axi_task_ar_bits_addr,
	io_m_axi_task_ar_bits_len,
	io_m_axi_task_ar_bits_size,
	io_m_axi_task_ar_bits_burst,
	io_m_axi_task_ar_bits_lock,
	io_m_axi_task_ar_bits_cache,
	io_m_axi_task_ar_bits_prot,
	io_m_axi_task_ar_bits_qos,
	io_m_axi_task_ar_bits_region,
	io_m_axi_task_r_ready,
	io_m_axi_task_r_valid,
	io_m_axi_task_r_bits_data,
	io_done
);
	input clock;
	input reset;
	output wire io_connNetwork_ready;
	input io_connNetwork_valid;
	input [63:0] io_connNetwork_bits;
	output wire io_connStealNtw_ctrl_stealReq_valid;
	input io_connStealNtw_ctrl_stealReq_ready;
	input io_connStealNtw_data_qOutTask_ready;
	output wire io_connStealNtw_data_qOutTask_valid;
	output wire [511:0] io_connStealNtw_data_qOutTask_bits;
	input io_m_axi_counter_ar_ready;
	output wire io_m_axi_counter_ar_valid;
	output wire [1:0] io_m_axi_counter_ar_bits_id;
	output wire [63:0] io_m_axi_counter_ar_bits_addr;
	output wire io_m_axi_counter_r_ready;
	input io_m_axi_counter_r_valid;
	input [1:0] io_m_axi_counter_r_bits_id;
	input [511:0] io_m_axi_counter_r_bits_data;
	input [1:0] io_m_axi_counter_r_bits_resp;
	input io_m_axi_counter_r_bits_last;
	input io_m_axi_counter_aw_ready;
	output wire io_m_axi_counter_aw_valid;
	output wire [1:0] io_m_axi_counter_aw_bits_id;
	output wire [63:0] io_m_axi_counter_aw_bits_addr;
	input io_m_axi_counter_w_ready;
	output wire io_m_axi_counter_w_valid;
	output wire [511:0] io_m_axi_counter_w_bits_data;
	output wire io_m_axi_counter_b_ready;
	input io_m_axi_counter_b_valid;
	input [1:0] io_m_axi_counter_b_bits_id;
	input io_m_axi_task_ar_ready;
	output wire io_m_axi_task_ar_valid;
	output wire [1:0] io_m_axi_task_ar_bits_id;
	output wire [63:0] io_m_axi_task_ar_bits_addr;
	output wire [7:0] io_m_axi_task_ar_bits_len;
	output wire [2:0] io_m_axi_task_ar_bits_size;
	output wire [1:0] io_m_axi_task_ar_bits_burst;
	output wire io_m_axi_task_ar_bits_lock;
	output wire [3:0] io_m_axi_task_ar_bits_cache;
	output wire [2:0] io_m_axi_task_ar_bits_prot;
	output wire [3:0] io_m_axi_task_ar_bits_qos;
	output wire [3:0] io_m_axi_task_ar_bits_region;
	output wire io_m_axi_task_r_ready;
	input io_m_axi_task_r_valid;
	input [511:0] io_m_axi_task_r_bits_data;
	output wire io_done;
	ArgumentServer argServer(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ready(io_connNetwork_ready),
		.io_connNetwork_valid(io_connNetwork_valid),
		.io_connNetwork_bits(io_connNetwork_bits),
		.io_connStealNtw_ctrl_stealReq_valid(io_connStealNtw_ctrl_stealReq_valid),
		.io_connStealNtw_ctrl_stealReq_ready(io_connStealNtw_ctrl_stealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(io_connStealNtw_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(io_connStealNtw_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(io_connStealNtw_data_qOutTask_bits),
		.io_m_axi_counter_ar_ready(io_m_axi_counter_ar_ready),
		.io_m_axi_counter_ar_valid(io_m_axi_counter_ar_valid),
		.io_m_axi_counter_ar_bits_id(io_m_axi_counter_ar_bits_id),
		.io_m_axi_counter_ar_bits_addr(io_m_axi_counter_ar_bits_addr),
		.io_m_axi_counter_r_ready(io_m_axi_counter_r_ready),
		.io_m_axi_counter_r_valid(io_m_axi_counter_r_valid),
		.io_m_axi_counter_r_bits_id(io_m_axi_counter_r_bits_id),
		.io_m_axi_counter_r_bits_data(io_m_axi_counter_r_bits_data),
		.io_m_axi_counter_r_bits_resp(io_m_axi_counter_r_bits_resp),
		.io_m_axi_counter_r_bits_last(io_m_axi_counter_r_bits_last),
		.io_m_axi_counter_aw_ready(io_m_axi_counter_aw_ready),
		.io_m_axi_counter_aw_valid(io_m_axi_counter_aw_valid),
		.io_m_axi_counter_aw_bits_id(io_m_axi_counter_aw_bits_id),
		.io_m_axi_counter_aw_bits_addr(io_m_axi_counter_aw_bits_addr),
		.io_m_axi_counter_w_ready(io_m_axi_counter_w_ready),
		.io_m_axi_counter_w_valid(io_m_axi_counter_w_valid),
		.io_m_axi_counter_w_bits_data(io_m_axi_counter_w_bits_data),
		.io_m_axi_counter_b_ready(io_m_axi_counter_b_ready),
		.io_m_axi_counter_b_valid(io_m_axi_counter_b_valid),
		.io_m_axi_counter_b_bits_id(io_m_axi_counter_b_bits_id),
		.io_m_axi_task_ar_ready(io_m_axi_task_ar_ready),
		.io_m_axi_task_ar_valid(io_m_axi_task_ar_valid),
		.io_m_axi_task_ar_bits_id(io_m_axi_task_ar_bits_id),
		.io_m_axi_task_ar_bits_addr(io_m_axi_task_ar_bits_addr),
		.io_m_axi_task_ar_bits_len(io_m_axi_task_ar_bits_len),
		.io_m_axi_task_ar_bits_size(io_m_axi_task_ar_bits_size),
		.io_m_axi_task_ar_bits_burst(io_m_axi_task_ar_bits_burst),
		.io_m_axi_task_ar_bits_lock(io_m_axi_task_ar_bits_lock),
		.io_m_axi_task_ar_bits_cache(io_m_axi_task_ar_bits_cache),
		.io_m_axi_task_ar_bits_prot(io_m_axi_task_ar_bits_prot),
		.io_m_axi_task_ar_bits_qos(io_m_axi_task_ar_bits_qos),
		.io_m_axi_task_ar_bits_region(io_m_axi_task_ar_bits_region),
		.io_m_axi_task_r_ready(io_m_axi_task_r_ready),
		.io_m_axi_task_r_valid(io_m_axi_task_r_valid),
		.io_m_axi_task_r_bits_data(io_m_axi_task_r_bits_data),
		.io_done(io_done)
	);
endmodule
module AxisDataWidthConverter_3 (
	io_dataIn_TREADY,
	io_dataIn_TVALID,
	io_dataIn_TDATA,
	io_dataOut_TREADY,
	io_dataOut_TVALID,
	io_dataOut_TDATA
);
	output wire io_dataIn_TREADY;
	input io_dataIn_TVALID;
	input [63:0] io_dataIn_TDATA;
	input io_dataOut_TREADY;
	output wire io_dataOut_TVALID;
	output wire [63:0] io_dataOut_TDATA;
	assign io_dataIn_TREADY = io_dataOut_TREADY;
	assign io_dataOut_TVALID = io_dataIn_TVALID;
	assign io_dataOut_TDATA = io_dataIn_TDATA;
endmodule
module ArgumentNotifier (
	clock,
	reset,
	io_export_argIn_0_TREADY,
	io_export_argIn_0_TVALID,
	io_export_argIn_0_TDATA,
	io_export_argIn_1_TREADY,
	io_export_argIn_1_TVALID,
	io_export_argIn_1_TDATA,
	io_export_done,
	connStealNtw_0_ctrl_stealReq_valid,
	connStealNtw_0_ctrl_stealReq_ready,
	connStealNtw_0_data_qOutTask_ready,
	connStealNtw_0_data_qOutTask_valid,
	connStealNtw_0_data_qOutTask_bits,
	axi_full_argRoute_0_ar_ready,
	axi_full_argRoute_0_ar_valid,
	axi_full_argRoute_0_ar_bits_id,
	axi_full_argRoute_0_ar_bits_addr,
	axi_full_argRoute_0_r_ready,
	axi_full_argRoute_0_r_valid,
	axi_full_argRoute_0_r_bits_id,
	axi_full_argRoute_0_r_bits_data,
	axi_full_argRoute_0_r_bits_resp,
	axi_full_argRoute_0_r_bits_last,
	axi_full_argRoute_0_aw_ready,
	axi_full_argRoute_0_aw_valid,
	axi_full_argRoute_0_aw_bits_id,
	axi_full_argRoute_0_aw_bits_addr,
	axi_full_argRoute_0_w_ready,
	axi_full_argRoute_0_w_valid,
	axi_full_argRoute_0_w_bits_data,
	axi_full_argRoute_0_b_ready,
	axi_full_argRoute_0_b_valid,
	axi_full_argRoute_0_b_bits_id,
	axi_full_argRoute_1_ar_ready,
	axi_full_argRoute_1_ar_valid,
	axi_full_argRoute_1_ar_bits_id,
	axi_full_argRoute_1_ar_bits_addr,
	axi_full_argRoute_1_ar_bits_len,
	axi_full_argRoute_1_ar_bits_size,
	axi_full_argRoute_1_ar_bits_burst,
	axi_full_argRoute_1_ar_bits_lock,
	axi_full_argRoute_1_ar_bits_cache,
	axi_full_argRoute_1_ar_bits_prot,
	axi_full_argRoute_1_ar_bits_qos,
	axi_full_argRoute_1_ar_bits_region,
	axi_full_argRoute_1_r_ready,
	axi_full_argRoute_1_r_valid,
	axi_full_argRoute_1_r_bits_data
);
	input clock;
	input reset;
	output wire io_export_argIn_0_TREADY;
	input io_export_argIn_0_TVALID;
	input [63:0] io_export_argIn_0_TDATA;
	output wire io_export_argIn_1_TREADY;
	input io_export_argIn_1_TVALID;
	input [63:0] io_export_argIn_1_TDATA;
	output wire io_export_done;
	output wire connStealNtw_0_ctrl_stealReq_valid;
	input connStealNtw_0_ctrl_stealReq_ready;
	input connStealNtw_0_data_qOutTask_ready;
	output wire connStealNtw_0_data_qOutTask_valid;
	output wire [511:0] connStealNtw_0_data_qOutTask_bits;
	input axi_full_argRoute_0_ar_ready;
	output wire axi_full_argRoute_0_ar_valid;
	output wire [1:0] axi_full_argRoute_0_ar_bits_id;
	output wire [63:0] axi_full_argRoute_0_ar_bits_addr;
	output wire axi_full_argRoute_0_r_ready;
	input axi_full_argRoute_0_r_valid;
	input [1:0] axi_full_argRoute_0_r_bits_id;
	input [511:0] axi_full_argRoute_0_r_bits_data;
	input [1:0] axi_full_argRoute_0_r_bits_resp;
	input axi_full_argRoute_0_r_bits_last;
	input axi_full_argRoute_0_aw_ready;
	output wire axi_full_argRoute_0_aw_valid;
	output wire [1:0] axi_full_argRoute_0_aw_bits_id;
	output wire [63:0] axi_full_argRoute_0_aw_bits_addr;
	input axi_full_argRoute_0_w_ready;
	output wire axi_full_argRoute_0_w_valid;
	output wire [511:0] axi_full_argRoute_0_w_bits_data;
	output wire axi_full_argRoute_0_b_ready;
	input axi_full_argRoute_0_b_valid;
	input [1:0] axi_full_argRoute_0_b_bits_id;
	input axi_full_argRoute_1_ar_ready;
	output wire axi_full_argRoute_1_ar_valid;
	output wire [1:0] axi_full_argRoute_1_ar_bits_id;
	output wire [63:0] axi_full_argRoute_1_ar_bits_addr;
	output wire [7:0] axi_full_argRoute_1_ar_bits_len;
	output wire [2:0] axi_full_argRoute_1_ar_bits_size;
	output wire [1:0] axi_full_argRoute_1_ar_bits_burst;
	output wire axi_full_argRoute_1_ar_bits_lock;
	output wire [3:0] axi_full_argRoute_1_ar_bits_cache;
	output wire [2:0] axi_full_argRoute_1_ar_bits_prot;
	output wire [3:0] axi_full_argRoute_1_ar_bits_qos;
	output wire [3:0] axi_full_argRoute_1_ar_bits_region;
	output wire axi_full_argRoute_1_r_ready;
	input axi_full_argRoute_1_r_valid;
	input [511:0] axi_full_argRoute_1_r_bits_data;
	wire _axis_stream_converters_in_1_io_dataOut_TVALID;
	wire [63:0] _axis_stream_converters_in_1_io_dataOut_TDATA;
	wire _axis_stream_converters_in_0_io_dataOut_TVALID;
	wire [63:0] _axis_stream_converters_in_0_io_dataOut_TDATA;
	wire _argRouteServers_0_io_connNetwork_ready;
	wire _argSide_io_connVAS_0_valid;
	wire [63:0] _argSide_io_connVAS_0_bits;
	wire _argSide_io_connPE_0_ready;
	wire _argSide_io_connPE_1_ready;
	ArgumentNotifierNetwork argSide(
		.clock(clock),
		.reset(reset),
		.io_connVAS_0_ready(_argRouteServers_0_io_connNetwork_ready),
		.io_connVAS_0_valid(_argSide_io_connVAS_0_valid),
		.io_connVAS_0_bits(_argSide_io_connVAS_0_bits),
		.io_connPE_0_ready(_argSide_io_connPE_0_ready),
		.io_connPE_0_valid(_axis_stream_converters_in_0_io_dataOut_TVALID),
		.io_connPE_0_bits(_axis_stream_converters_in_0_io_dataOut_TDATA),
		.io_connPE_1_ready(_argSide_io_connPE_1_ready),
		.io_connPE_1_valid(_axis_stream_converters_in_1_io_dataOut_TVALID),
		.io_connPE_1_bits(_axis_stream_converters_in_1_io_dataOut_TDATA)
	);
	ArgumentServerMfpgaWrapper argRouteServers_0(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ready(_argRouteServers_0_io_connNetwork_ready),
		.io_connNetwork_valid(_argSide_io_connVAS_0_valid),
		.io_connNetwork_bits(_argSide_io_connVAS_0_bits),
		.io_connStealNtw_ctrl_stealReq_valid(connStealNtw_0_ctrl_stealReq_valid),
		.io_connStealNtw_ctrl_stealReq_ready(connStealNtw_0_ctrl_stealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(connStealNtw_0_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(connStealNtw_0_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(connStealNtw_0_data_qOutTask_bits),
		.io_m_axi_counter_ar_ready(axi_full_argRoute_0_ar_ready),
		.io_m_axi_counter_ar_valid(axi_full_argRoute_0_ar_valid),
		.io_m_axi_counter_ar_bits_id(axi_full_argRoute_0_ar_bits_id),
		.io_m_axi_counter_ar_bits_addr(axi_full_argRoute_0_ar_bits_addr),
		.io_m_axi_counter_r_ready(axi_full_argRoute_0_r_ready),
		.io_m_axi_counter_r_valid(axi_full_argRoute_0_r_valid),
		.io_m_axi_counter_r_bits_id(axi_full_argRoute_0_r_bits_id),
		.io_m_axi_counter_r_bits_data(axi_full_argRoute_0_r_bits_data),
		.io_m_axi_counter_r_bits_resp(axi_full_argRoute_0_r_bits_resp),
		.io_m_axi_counter_r_bits_last(axi_full_argRoute_0_r_bits_last),
		.io_m_axi_counter_aw_ready(axi_full_argRoute_0_aw_ready),
		.io_m_axi_counter_aw_valid(axi_full_argRoute_0_aw_valid),
		.io_m_axi_counter_aw_bits_id(axi_full_argRoute_0_aw_bits_id),
		.io_m_axi_counter_aw_bits_addr(axi_full_argRoute_0_aw_bits_addr),
		.io_m_axi_counter_w_ready(axi_full_argRoute_0_w_ready),
		.io_m_axi_counter_w_valid(axi_full_argRoute_0_w_valid),
		.io_m_axi_counter_w_bits_data(axi_full_argRoute_0_w_bits_data),
		.io_m_axi_counter_b_ready(axi_full_argRoute_0_b_ready),
		.io_m_axi_counter_b_valid(axi_full_argRoute_0_b_valid),
		.io_m_axi_counter_b_bits_id(axi_full_argRoute_0_b_bits_id),
		.io_m_axi_task_ar_ready(axi_full_argRoute_1_ar_ready),
		.io_m_axi_task_ar_valid(axi_full_argRoute_1_ar_valid),
		.io_m_axi_task_ar_bits_id(axi_full_argRoute_1_ar_bits_id),
		.io_m_axi_task_ar_bits_addr(axi_full_argRoute_1_ar_bits_addr),
		.io_m_axi_task_ar_bits_len(axi_full_argRoute_1_ar_bits_len),
		.io_m_axi_task_ar_bits_size(axi_full_argRoute_1_ar_bits_size),
		.io_m_axi_task_ar_bits_burst(axi_full_argRoute_1_ar_bits_burst),
		.io_m_axi_task_ar_bits_lock(axi_full_argRoute_1_ar_bits_lock),
		.io_m_axi_task_ar_bits_cache(axi_full_argRoute_1_ar_bits_cache),
		.io_m_axi_task_ar_bits_prot(axi_full_argRoute_1_ar_bits_prot),
		.io_m_axi_task_ar_bits_qos(axi_full_argRoute_1_ar_bits_qos),
		.io_m_axi_task_ar_bits_region(axi_full_argRoute_1_ar_bits_region),
		.io_m_axi_task_r_ready(axi_full_argRoute_1_r_ready),
		.io_m_axi_task_r_valid(axi_full_argRoute_1_r_valid),
		.io_m_axi_task_r_bits_data(axi_full_argRoute_1_r_bits_data),
		.io_done(io_export_done)
	);
	AxisDataWidthConverter_3 axis_stream_converters_in_0(
		.io_dataIn_TREADY(io_export_argIn_0_TREADY),
		.io_dataIn_TVALID(io_export_argIn_0_TVALID),
		.io_dataIn_TDATA(io_export_argIn_0_TDATA),
		.io_dataOut_TREADY(_argSide_io_connPE_0_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_0_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_0_io_dataOut_TDATA)
	);
	AxisDataWidthConverter_3 axis_stream_converters_in_1(
		.io_dataIn_TREADY(io_export_argIn_1_TREADY),
		.io_dataIn_TVALID(io_export_argIn_1_TVALID),
		.io_dataIn_TDATA(io_export_argIn_1_TDATA),
		.io_dataOut_TREADY(_argSide_io_connPE_1_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_1_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_1_io_dataOut_TDATA)
	);
endmodule
module ram_2x13 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [12:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [12:0] W0_data;
	reg [12:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 13'bxxxxxxxxxxxxx);
endmodule
module Queue2_AddressChannel_8 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_prot,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_prot
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [9:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_prot;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [9:0] io_deq_bits_addr;
	output wire [2:0] io_deq_bits_prot;
	wire [12:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x13 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_prot, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[9:0];
	assign io_deq_bits_prot = _ram_ext_R0_data[12:10];
endmodule
module ram_8x2 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [2:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [1:0] R0_data;
	input [2:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [1:0] W0_data;
	reg [1:0] Memory [0:7];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 2'bxx);
endmodule
module Queue8_UInt2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits;
	wire io_enq_ready_0;
	wire [1:0] _ram_ext_R0_data;
	reg [2:0] enq_ptr_value;
	reg [2:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire io_deq_valid_0 = io_enq_valid | ~empty;
	wire do_deq = (~empty & io_deq_ready) & io_deq_valid_0;
	wire do_enq = (~(empty & io_deq_ready) & io_enq_ready_0) & io_enq_valid;
	assign io_enq_ready_0 = io_deq_ready | ~(ptr_match & maybe_full);
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 3'h0;
			deq_ptr_value <= 3'h0;
			maybe_full <= 1'h0;
		end
		else begin
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 3'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 3'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_8x2 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = io_enq_ready_0;
	assign io_deq_valid = io_deq_valid_0;
	assign io_deq_bits = (empty ? io_enq_bits : _ram_ext_R0_data);
endmodule
module elasticDemux_5 (
	io_source_ready,
	io_source_valid,
	io_source_bits_addr,
	io_source_bits_prot,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_addr,
	io_sinks_0_bits_prot,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_addr,
	io_sinks_1_bits_prot,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_addr,
	io_sinks_2_bits_prot,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_addr,
	io_sinks_3_bits_prot,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [9:0] io_source_bits_addr;
	input [2:0] io_source_bits_prot;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [9:0] io_sinks_0_bits_addr;
	output wire [2:0] io_sinks_0_bits_prot;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [9:0] io_sinks_1_bits_addr;
	output wire [2:0] io_sinks_1_bits_prot;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [9:0] io_sinks_2_bits_addr;
	output wire [2:0] io_sinks_2_bits_prot;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [9:0] io_sinks_3_bits_addr;
	output wire [2:0] io_sinks_3_bits_prot;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_addr = io_source_bits_addr;
	assign io_sinks_0_bits_prot = io_source_bits_prot;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_addr = io_source_bits_addr;
	assign io_sinks_1_bits_prot = io_source_bits_prot;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_addr = io_source_bits_addr;
	assign io_sinks_2_bits_prot = io_source_bits_prot;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_addr = io_source_bits_addr;
	assign io_sinks_3_bits_prot = io_source_bits_prot;
	assign io_select_ready = fire;
endmodule
module elasticMux (
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_data,
	io_sources_0_bits_resp,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_data,
	io_sources_1_bits_resp,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_data,
	io_sources_2_bits_resp,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_data,
	io_sources_3_bits_resp,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_data,
	io_sink_bits_resp,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [63:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [63:0] io_sources_2_bits_data;
	input [1:0] io_sources_2_bits_resp;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [63:0] io_sources_3_bits_data;
	input [1:0] io_sources_3_bits_resp;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [63:0] io_sink_bits_data;
	output wire [1:0] io_sink_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire [3:0] _GEN = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [255:0] _GEN_0 = {io_sources_3_bits_data, io_sources_2_bits_data, io_sources_1_bits_data, io_sources_0_bits_data};
	wire [7:0] _GEN_1 = {io_sources_3_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire valid = io_select_valid & _GEN[io_select_bits];
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & (io_select_bits == 2'h0);
	assign io_sources_1_ready = fire & (io_select_bits == 2'h1);
	assign io_sources_2_ready = fire & (io_select_bits == 2'h2);
	assign io_sources_3_ready = fire & (&io_select_bits);
	assign io_sink_valid = valid;
	assign io_sink_bits_data = _GEN_0[io_select_bits * 64+:64];
	assign io_sink_bits_resp = _GEN_1[io_select_bits * 2+:2];
	assign io_select_ready = fire;
endmodule
module elasticDemux_7 (
	io_source_ready,
	io_source_valid,
	io_source_bits_data,
	io_source_bits_strb,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_data,
	io_sinks_0_bits_strb,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_data,
	io_sinks_1_bits_strb,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_data,
	io_sinks_2_bits_strb,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_data,
	io_sinks_3_bits_strb,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [63:0] io_source_bits_data;
	input [7:0] io_source_bits_strb;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [63:0] io_sinks_0_bits_data;
	output wire [7:0] io_sinks_0_bits_strb;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [63:0] io_sinks_1_bits_data;
	output wire [7:0] io_sinks_1_bits_strb;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [63:0] io_sinks_2_bits_data;
	output wire [7:0] io_sinks_2_bits_strb;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [63:0] io_sinks_3_bits_data;
	output wire [7:0] io_sinks_3_bits_strb;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_strb = io_source_bits_strb;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_data = io_source_bits_data;
	assign io_sinks_1_bits_strb = io_source_bits_strb;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_data = io_source_bits_data;
	assign io_sinks_2_bits_strb = io_source_bits_strb;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_data = io_source_bits_data;
	assign io_sinks_3_bits_strb = io_source_bits_strb;
	assign io_select_ready = fire;
endmodule
module elasticMux_1 (
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_resp,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_resp,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_resp,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_resp,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_resp,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [1:0] io_sources_0_bits_resp;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [1:0] io_sources_1_bits_resp;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [1:0] io_sources_2_bits_resp;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [1:0] io_sources_3_bits_resp;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire [3:0] _GEN = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [7:0] _GEN_0 = {io_sources_3_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire valid = io_select_valid & _GEN[io_select_bits];
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & (io_select_bits == 2'h0);
	assign io_sources_1_ready = fire & (io_select_bits == 2'h1);
	assign io_sources_2_ready = fire & (io_select_bits == 2'h2);
	assign io_sources_3_ready = fire & (&io_select_bits);
	assign io_sink_valid = valid;
	assign io_sink_bits_resp = _GEN_0[io_select_bits * 2+:2];
	assign io_select_ready = fire;
endmodule
module axi4LiteDemux (
	clock,
	reset,
	s_axil_ar_ready,
	s_axil_ar_valid,
	s_axil_ar_bits_addr,
	s_axil_ar_bits_prot,
	s_axil_r_ready,
	s_axil_r_valid,
	s_axil_r_bits_data,
	s_axil_r_bits_resp,
	s_axil_aw_ready,
	s_axil_aw_valid,
	s_axil_aw_bits_addr,
	s_axil_aw_bits_prot,
	s_axil_w_ready,
	s_axil_w_valid,
	s_axil_w_bits_data,
	s_axil_w_bits_strb,
	s_axil_b_ready,
	s_axil_b_valid,
	s_axil_b_bits_resp,
	m_axil_0_ar_ready,
	m_axil_0_ar_valid,
	m_axil_0_ar_bits_addr,
	m_axil_0_ar_bits_prot,
	m_axil_0_r_ready,
	m_axil_0_r_valid,
	m_axil_0_r_bits_data,
	m_axil_0_r_bits_resp,
	m_axil_0_aw_ready,
	m_axil_0_aw_valid,
	m_axil_0_aw_bits_addr,
	m_axil_0_aw_bits_prot,
	m_axil_0_w_ready,
	m_axil_0_w_valid,
	m_axil_0_w_bits_data,
	m_axil_0_w_bits_strb,
	m_axil_0_b_ready,
	m_axil_0_b_valid,
	m_axil_0_b_bits_resp,
	m_axil_1_ar_ready,
	m_axil_1_ar_valid,
	m_axil_1_ar_bits_addr,
	m_axil_1_ar_bits_prot,
	m_axil_1_r_ready,
	m_axil_1_r_valid,
	m_axil_1_r_bits_data,
	m_axil_1_r_bits_resp,
	m_axil_1_aw_ready,
	m_axil_1_aw_valid,
	m_axil_1_aw_bits_addr,
	m_axil_1_aw_bits_prot,
	m_axil_1_w_ready,
	m_axil_1_w_valid,
	m_axil_1_w_bits_data,
	m_axil_1_w_bits_strb,
	m_axil_1_b_ready,
	m_axil_1_b_valid,
	m_axil_1_b_bits_resp,
	m_axil_2_ar_ready,
	m_axil_2_ar_valid,
	m_axil_2_ar_bits_addr,
	m_axil_2_ar_bits_prot,
	m_axil_2_r_ready,
	m_axil_2_r_valid,
	m_axil_2_r_bits_data,
	m_axil_2_r_bits_resp,
	m_axil_2_aw_ready,
	m_axil_2_aw_valid,
	m_axil_2_aw_bits_addr,
	m_axil_2_aw_bits_prot,
	m_axil_2_w_ready,
	m_axil_2_w_valid,
	m_axil_2_w_bits_data,
	m_axil_2_w_bits_strb,
	m_axil_2_b_ready,
	m_axil_2_b_valid,
	m_axil_2_b_bits_resp,
	m_axil_3_ar_ready,
	m_axil_3_ar_valid,
	m_axil_3_ar_bits_addr,
	m_axil_3_ar_bits_prot,
	m_axil_3_r_ready,
	m_axil_3_r_valid,
	m_axil_3_r_bits_data,
	m_axil_3_r_bits_resp,
	m_axil_3_aw_ready,
	m_axil_3_aw_valid,
	m_axil_3_aw_bits_addr,
	m_axil_3_aw_bits_prot,
	m_axil_3_w_ready,
	m_axil_3_w_valid,
	m_axil_3_w_bits_data,
	m_axil_3_w_bits_strb,
	m_axil_3_b_ready,
	m_axil_3_b_valid,
	m_axil_3_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axil_ar_ready;
	input s_axil_ar_valid;
	input [9:0] s_axil_ar_bits_addr;
	input [2:0] s_axil_ar_bits_prot;
	input s_axil_r_ready;
	output wire s_axil_r_valid;
	output wire [63:0] s_axil_r_bits_data;
	output wire [1:0] s_axil_r_bits_resp;
	output wire s_axil_aw_ready;
	input s_axil_aw_valid;
	input [9:0] s_axil_aw_bits_addr;
	input [2:0] s_axil_aw_bits_prot;
	output wire s_axil_w_ready;
	input s_axil_w_valid;
	input [63:0] s_axil_w_bits_data;
	input [7:0] s_axil_w_bits_strb;
	input s_axil_b_ready;
	output wire s_axil_b_valid;
	output wire [1:0] s_axil_b_bits_resp;
	input m_axil_0_ar_ready;
	output wire m_axil_0_ar_valid;
	output wire [9:0] m_axil_0_ar_bits_addr;
	output wire [2:0] m_axil_0_ar_bits_prot;
	output wire m_axil_0_r_ready;
	input m_axil_0_r_valid;
	input [63:0] m_axil_0_r_bits_data;
	input [1:0] m_axil_0_r_bits_resp;
	input m_axil_0_aw_ready;
	output wire m_axil_0_aw_valid;
	output wire [9:0] m_axil_0_aw_bits_addr;
	output wire [2:0] m_axil_0_aw_bits_prot;
	input m_axil_0_w_ready;
	output wire m_axil_0_w_valid;
	output wire [63:0] m_axil_0_w_bits_data;
	output wire [7:0] m_axil_0_w_bits_strb;
	output wire m_axil_0_b_ready;
	input m_axil_0_b_valid;
	input [1:0] m_axil_0_b_bits_resp;
	input m_axil_1_ar_ready;
	output wire m_axil_1_ar_valid;
	output wire [9:0] m_axil_1_ar_bits_addr;
	output wire [2:0] m_axil_1_ar_bits_prot;
	output wire m_axil_1_r_ready;
	input m_axil_1_r_valid;
	input [63:0] m_axil_1_r_bits_data;
	input [1:0] m_axil_1_r_bits_resp;
	input m_axil_1_aw_ready;
	output wire m_axil_1_aw_valid;
	output wire [9:0] m_axil_1_aw_bits_addr;
	output wire [2:0] m_axil_1_aw_bits_prot;
	input m_axil_1_w_ready;
	output wire m_axil_1_w_valid;
	output wire [63:0] m_axil_1_w_bits_data;
	output wire [7:0] m_axil_1_w_bits_strb;
	output wire m_axil_1_b_ready;
	input m_axil_1_b_valid;
	input [1:0] m_axil_1_b_bits_resp;
	input m_axil_2_ar_ready;
	output wire m_axil_2_ar_valid;
	output wire [9:0] m_axil_2_ar_bits_addr;
	output wire [2:0] m_axil_2_ar_bits_prot;
	output wire m_axil_2_r_ready;
	input m_axil_2_r_valid;
	input [63:0] m_axil_2_r_bits_data;
	input [1:0] m_axil_2_r_bits_resp;
	input m_axil_2_aw_ready;
	output wire m_axil_2_aw_valid;
	output wire [9:0] m_axil_2_aw_bits_addr;
	output wire [2:0] m_axil_2_aw_bits_prot;
	input m_axil_2_w_ready;
	output wire m_axil_2_w_valid;
	output wire [63:0] m_axil_2_w_bits_data;
	output wire [7:0] m_axil_2_w_bits_strb;
	output wire m_axil_2_b_ready;
	input m_axil_2_b_valid;
	input [1:0] m_axil_2_b_bits_resp;
	input m_axil_3_ar_ready;
	output wire m_axil_3_ar_valid;
	output wire [9:0] m_axil_3_ar_bits_addr;
	output wire [2:0] m_axil_3_ar_bits_prot;
	output wire m_axil_3_r_ready;
	input m_axil_3_r_valid;
	input [63:0] m_axil_3_r_bits_data;
	input [1:0] m_axil_3_r_bits_resp;
	input m_axil_3_aw_ready;
	output wire m_axil_3_aw_valid;
	output wire [9:0] m_axil_3_aw_bits_addr;
	output wire [2:0] m_axil_3_aw_bits_prot;
	input m_axil_3_w_ready;
	output wire m_axil_3_w_valid;
	output wire [63:0] m_axil_3_w_bits_data;
	output wire [7:0] m_axil_3_w_bits_strb;
	output wire m_axil_3_b_ready;
	input m_axil_3_b_valid;
	input [1:0] m_axil_3_b_bits_resp;
	wire _write_mux_io_sink_valid;
	wire [1:0] _write_mux_io_sink_bits_resp;
	wire _write_mux_io_select_ready;
	wire _write_demux_1_io_source_ready;
	wire _write_demux_1_io_select_ready;
	wire _write_demux_io_source_ready;
	wire _write_demux_io_select_ready;
	wire _write_portQueueB_io_enq_ready;
	wire _write_portQueueB_io_deq_valid;
	wire [1:0] _write_portQueueB_io_deq_bits;
	wire _write_portQueueW_io_enq_ready;
	wire _write_portQueueW_io_deq_valid;
	wire [1:0] _write_portQueueW_io_deq_bits;
	wire _read_mux_io_sink_valid;
	wire [63:0] _read_mux_io_sink_bits_data;
	wire [1:0] _read_mux_io_sink_bits_resp;
	wire _read_mux_io_select_ready;
	wire _read_demux_io_source_ready;
	wire _read_demux_io_select_ready;
	wire _read_portQueue_io_enq_ready;
	wire _read_portQueue_io_deq_valid;
	wire [1:0] _read_portQueue_io_deq_bits;
	wire _s_axil__sinkBuffer_1_io_enq_ready;
	wire _s_axil__sourceBuffer_2_io_deq_valid;
	wire [63:0] _s_axil__sourceBuffer_2_io_deq_bits_data;
	wire [7:0] _s_axil__sourceBuffer_2_io_deq_bits_strb;
	wire _s_axil__sourceBuffer_1_io_deq_valid;
	wire [9:0] _s_axil__sourceBuffer_1_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_1_io_deq_bits_prot;
	wire _s_axil__sinkBuffer_io_enq_ready;
	wire _s_axil__sourceBuffer_io_deq_valid;
	wire [9:0] _s_axil__sourceBuffer_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_io_deq_bits_prot;
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	reg read_eagerFork_regs_2;
	wire read_eagerFork_arPort_ready_qual1_0 = _read_demux_io_source_ready | read_eagerFork_regs_0;
	wire read_eagerFork_arPort_ready_qual1_1 = _read_demux_io_select_ready | read_eagerFork_regs_1;
	wire read_eagerFork_arPort_ready_qual1_2 = _read_portQueue_io_enq_ready | read_eagerFork_regs_2;
	wire read_result_ready = (read_eagerFork_arPort_ready_qual1_0 & read_eagerFork_arPort_ready_qual1_1) & read_eagerFork_arPort_ready_qual1_2;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	reg write_eagerFork_regs_2;
	reg write_eagerFork_regs_3;
	wire write_eagerFork_awPort_ready_qual1_0 = _write_demux_io_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_awPort_ready_qual1_1 = _write_demux_io_select_ready | write_eagerFork_regs_1;
	wire write_eagerFork_awPort_ready_qual1_2 = _write_portQueueW_io_enq_ready | write_eagerFork_regs_2;
	wire write_eagerFork_awPort_ready_qual1_3 = _write_portQueueB_io_enq_ready | write_eagerFork_regs_3;
	wire write_result_ready = ((write_eagerFork_awPort_ready_qual1_0 & write_eagerFork_awPort_ready_qual1_1) & write_eagerFork_awPort_ready_qual1_2) & write_eagerFork_awPort_ready_qual1_3;
	always @(posedge clock)
		if (reset) begin
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			read_eagerFork_regs_2 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_2 <= 1'h0;
			write_eagerFork_regs_3 <= 1'h0;
		end
		else begin
			read_eagerFork_regs_0 <= (read_eagerFork_arPort_ready_qual1_0 & _s_axil__sourceBuffer_io_deq_valid) & ~read_result_ready;
			read_eagerFork_regs_1 <= (read_eagerFork_arPort_ready_qual1_1 & _s_axil__sourceBuffer_io_deq_valid) & ~read_result_ready;
			read_eagerFork_regs_2 <= (read_eagerFork_arPort_ready_qual1_2 & _s_axil__sourceBuffer_io_deq_valid) & ~read_result_ready;
			write_eagerFork_regs_0 <= (write_eagerFork_awPort_ready_qual1_0 & _s_axil__sourceBuffer_1_io_deq_valid) & ~write_result_ready;
			write_eagerFork_regs_1 <= (write_eagerFork_awPort_ready_qual1_1 & _s_axil__sourceBuffer_1_io_deq_valid) & ~write_result_ready;
			write_eagerFork_regs_2 <= (write_eagerFork_awPort_ready_qual1_2 & _s_axil__sourceBuffer_1_io_deq_valid) & ~write_result_ready;
			write_eagerFork_regs_3 <= (write_eagerFork_awPort_ready_qual1_3 & _s_axil__sourceBuffer_1_io_deq_valid) & ~write_result_ready;
		end
	Queue2_AddressChannel_8 s_axil__sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(s_axil_ar_ready),
		.io_enq_valid(s_axil_ar_valid),
		.io_enq_bits_addr(s_axil_ar_bits_addr),
		.io_enq_bits_prot(s_axil_ar_bits_prot),
		.io_deq_ready(read_result_ready),
		.io_deq_valid(_s_axil__sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_s_axil__sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_prot(_s_axil__sourceBuffer_io_deq_bits_prot)
	);
	Queue2_ReadDataChannel s_axil__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_s_axil__sinkBuffer_io_enq_ready),
		.io_enq_valid(_read_mux_io_sink_valid),
		.io_enq_bits_data(_read_mux_io_sink_bits_data),
		.io_enq_bits_resp(_read_mux_io_sink_bits_resp),
		.io_deq_ready(s_axil_r_ready),
		.io_deq_valid(s_axil_r_valid),
		.io_deq_bits_data(s_axil_r_bits_data),
		.io_deq_bits_resp(s_axil_r_bits_resp)
	);
	Queue2_AddressChannel_8 s_axil__sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(s_axil_aw_ready),
		.io_enq_valid(s_axil_aw_valid),
		.io_enq_bits_addr(s_axil_aw_bits_addr),
		.io_enq_bits_prot(s_axil_aw_bits_prot),
		.io_deq_ready(write_result_ready),
		.io_deq_valid(_s_axil__sourceBuffer_1_io_deq_valid),
		.io_deq_bits_addr(_s_axil__sourceBuffer_1_io_deq_bits_addr),
		.io_deq_bits_prot(_s_axil__sourceBuffer_1_io_deq_bits_prot)
	);
	Queue2_WriteDataChannel s_axil__sourceBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(s_axil_w_ready),
		.io_enq_valid(s_axil_w_valid),
		.io_enq_bits_data(s_axil_w_bits_data),
		.io_enq_bits_strb(s_axil_w_bits_strb),
		.io_deq_ready(_write_demux_1_io_source_ready),
		.io_deq_valid(_s_axil__sourceBuffer_2_io_deq_valid),
		.io_deq_bits_data(_s_axil__sourceBuffer_2_io_deq_bits_data),
		.io_deq_bits_strb(_s_axil__sourceBuffer_2_io_deq_bits_strb)
	);
	Queue2_WriteResponseChannel s_axil__sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_s_axil__sinkBuffer_1_io_enq_ready),
		.io_enq_valid(_write_mux_io_sink_valid),
		.io_enq_bits_resp(_write_mux_io_sink_bits_resp),
		.io_deq_ready(s_axil_b_ready),
		.io_deq_valid(s_axil_b_valid),
		.io_deq_bits_resp(s_axil_b_bits_resp)
	);
	Queue8_UInt2 read_portQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_portQueue_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_io_deq_valid & ~read_eagerFork_regs_2),
		.io_enq_bits(_s_axil__sourceBuffer_io_deq_bits_addr[7:6]),
		.io_deq_ready(_read_mux_io_select_ready),
		.io_deq_valid(_read_portQueue_io_deq_valid),
		.io_deq_bits(_read_portQueue_io_deq_bits)
	);
	elasticDemux_5 read_demux(
		.io_source_ready(_read_demux_io_source_ready),
		.io_source_valid(_s_axil__sourceBuffer_io_deq_valid & ~read_eagerFork_regs_0),
		.io_source_bits_addr(_s_axil__sourceBuffer_io_deq_bits_addr),
		.io_source_bits_prot(_s_axil__sourceBuffer_io_deq_bits_prot),
		.io_sinks_0_ready(m_axil_0_ar_ready),
		.io_sinks_0_valid(m_axil_0_ar_valid),
		.io_sinks_0_bits_addr(m_axil_0_ar_bits_addr),
		.io_sinks_0_bits_prot(m_axil_0_ar_bits_prot),
		.io_sinks_1_ready(m_axil_1_ar_ready),
		.io_sinks_1_valid(m_axil_1_ar_valid),
		.io_sinks_1_bits_addr(m_axil_1_ar_bits_addr),
		.io_sinks_1_bits_prot(m_axil_1_ar_bits_prot),
		.io_sinks_2_ready(m_axil_2_ar_ready),
		.io_sinks_2_valid(m_axil_2_ar_valid),
		.io_sinks_2_bits_addr(m_axil_2_ar_bits_addr),
		.io_sinks_2_bits_prot(m_axil_2_ar_bits_prot),
		.io_sinks_3_ready(m_axil_3_ar_ready),
		.io_sinks_3_valid(m_axil_3_ar_valid),
		.io_sinks_3_bits_addr(m_axil_3_ar_bits_addr),
		.io_sinks_3_bits_prot(m_axil_3_ar_bits_prot),
		.io_select_ready(_read_demux_io_select_ready),
		.io_select_valid(_s_axil__sourceBuffer_io_deq_valid & ~read_eagerFork_regs_1),
		.io_select_bits(_s_axil__sourceBuffer_io_deq_bits_addr[7:6])
	);
	elasticMux read_mux(
		.io_sources_0_ready(m_axil_0_r_ready),
		.io_sources_0_valid(m_axil_0_r_valid),
		.io_sources_0_bits_data(m_axil_0_r_bits_data),
		.io_sources_0_bits_resp(m_axil_0_r_bits_resp),
		.io_sources_1_ready(m_axil_1_r_ready),
		.io_sources_1_valid(m_axil_1_r_valid),
		.io_sources_1_bits_data(m_axil_1_r_bits_data),
		.io_sources_1_bits_resp(m_axil_1_r_bits_resp),
		.io_sources_2_ready(m_axil_2_r_ready),
		.io_sources_2_valid(m_axil_2_r_valid),
		.io_sources_2_bits_data(m_axil_2_r_bits_data),
		.io_sources_2_bits_resp(m_axil_2_r_bits_resp),
		.io_sources_3_ready(m_axil_3_r_ready),
		.io_sources_3_valid(m_axil_3_r_valid),
		.io_sources_3_bits_data(m_axil_3_r_bits_data),
		.io_sources_3_bits_resp(m_axil_3_r_bits_resp),
		.io_sink_ready(_s_axil__sinkBuffer_io_enq_ready),
		.io_sink_valid(_read_mux_io_sink_valid),
		.io_sink_bits_data(_read_mux_io_sink_bits_data),
		.io_sink_bits_resp(_read_mux_io_sink_bits_resp),
		.io_select_ready(_read_mux_io_select_ready),
		.io_select_valid(_read_portQueue_io_deq_valid),
		.io_select_bits(_read_portQueue_io_deq_bits)
	);
	Queue8_UInt2 write_portQueueW(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueueW_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_1_io_deq_valid & ~write_eagerFork_regs_2),
		.io_enq_bits(_s_axil__sourceBuffer_1_io_deq_bits_addr[7:6]),
		.io_deq_ready(_write_demux_1_io_select_ready),
		.io_deq_valid(_write_portQueueW_io_deq_valid),
		.io_deq_bits(_write_portQueueW_io_deq_bits)
	);
	Queue8_UInt2 write_portQueueB(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueueB_io_enq_ready),
		.io_enq_valid(_s_axil__sourceBuffer_1_io_deq_valid & ~write_eagerFork_regs_3),
		.io_enq_bits(_s_axil__sourceBuffer_1_io_deq_bits_addr[7:6]),
		.io_deq_ready(_write_mux_io_select_ready),
		.io_deq_valid(_write_portQueueB_io_deq_valid),
		.io_deq_bits(_write_portQueueB_io_deq_bits)
	);
	elasticDemux_5 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(_s_axil__sourceBuffer_1_io_deq_valid & ~write_eagerFork_regs_0),
		.io_source_bits_addr(_s_axil__sourceBuffer_1_io_deq_bits_addr),
		.io_source_bits_prot(_s_axil__sourceBuffer_1_io_deq_bits_prot),
		.io_sinks_0_ready(m_axil_0_aw_ready),
		.io_sinks_0_valid(m_axil_0_aw_valid),
		.io_sinks_0_bits_addr(m_axil_0_aw_bits_addr),
		.io_sinks_0_bits_prot(m_axil_0_aw_bits_prot),
		.io_sinks_1_ready(m_axil_1_aw_ready),
		.io_sinks_1_valid(m_axil_1_aw_valid),
		.io_sinks_1_bits_addr(m_axil_1_aw_bits_addr),
		.io_sinks_1_bits_prot(m_axil_1_aw_bits_prot),
		.io_sinks_2_ready(m_axil_2_aw_ready),
		.io_sinks_2_valid(m_axil_2_aw_valid),
		.io_sinks_2_bits_addr(m_axil_2_aw_bits_addr),
		.io_sinks_2_bits_prot(m_axil_2_aw_bits_prot),
		.io_sinks_3_ready(m_axil_3_aw_ready),
		.io_sinks_3_valid(m_axil_3_aw_valid),
		.io_sinks_3_bits_addr(m_axil_3_aw_bits_addr),
		.io_sinks_3_bits_prot(m_axil_3_aw_bits_prot),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(_s_axil__sourceBuffer_1_io_deq_valid & ~write_eagerFork_regs_1),
		.io_select_bits(_s_axil__sourceBuffer_1_io_deq_bits_addr[7:6])
	);
	elasticDemux_7 write_demux_1(
		.io_source_ready(_write_demux_1_io_source_ready),
		.io_source_valid(_s_axil__sourceBuffer_2_io_deq_valid),
		.io_source_bits_data(_s_axil__sourceBuffer_2_io_deq_bits_data),
		.io_source_bits_strb(_s_axil__sourceBuffer_2_io_deq_bits_strb),
		.io_sinks_0_ready(m_axil_0_w_ready),
		.io_sinks_0_valid(m_axil_0_w_valid),
		.io_sinks_0_bits_data(m_axil_0_w_bits_data),
		.io_sinks_0_bits_strb(m_axil_0_w_bits_strb),
		.io_sinks_1_ready(m_axil_1_w_ready),
		.io_sinks_1_valid(m_axil_1_w_valid),
		.io_sinks_1_bits_data(m_axil_1_w_bits_data),
		.io_sinks_1_bits_strb(m_axil_1_w_bits_strb),
		.io_sinks_2_ready(m_axil_2_w_ready),
		.io_sinks_2_valid(m_axil_2_w_valid),
		.io_sinks_2_bits_data(m_axil_2_w_bits_data),
		.io_sinks_2_bits_strb(m_axil_2_w_bits_strb),
		.io_sinks_3_ready(m_axil_3_w_ready),
		.io_sinks_3_valid(m_axil_3_w_valid),
		.io_sinks_3_bits_data(m_axil_3_w_bits_data),
		.io_sinks_3_bits_strb(m_axil_3_w_bits_strb),
		.io_select_ready(_write_demux_1_io_select_ready),
		.io_select_valid(_write_portQueueW_io_deq_valid),
		.io_select_bits(_write_portQueueW_io_deq_bits)
	);
	elasticMux_1 write_mux(
		.io_sources_0_ready(m_axil_0_b_ready),
		.io_sources_0_valid(m_axil_0_b_valid),
		.io_sources_0_bits_resp(m_axil_0_b_bits_resp),
		.io_sources_1_ready(m_axil_1_b_ready),
		.io_sources_1_valid(m_axil_1_b_valid),
		.io_sources_1_bits_resp(m_axil_1_b_bits_resp),
		.io_sources_2_ready(m_axil_2_b_ready),
		.io_sources_2_valid(m_axil_2_b_valid),
		.io_sources_2_bits_resp(m_axil_2_b_bits_resp),
		.io_sources_3_ready(m_axil_3_b_ready),
		.io_sources_3_valid(m_axil_3_b_valid),
		.io_sources_3_bits_resp(m_axil_3_b_bits_resp),
		.io_sink_ready(_s_axil__sinkBuffer_1_io_enq_ready),
		.io_sink_valid(_write_mux_io_sink_valid),
		.io_sink_bits_resp(_write_mux_io_sink_bits_resp),
		.io_select_ready(_write_mux_io_select_ready),
		.io_select_valid(_write_portQueueB_io_deq_valid),
		.io_select_bits(_write_portQueueB_io_deq_bits)
	);
endmodule
module ram_2x16 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [15:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [15:0] W0_data;
	reg [15:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 16'bxxxxxxxxxxxxxxxx);
endmodule
module Queue2_AddrLenSizeBurstBundle (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [2:0] io_enq_bits_addr;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [2:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	wire [15:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x16 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({13'h0a00, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[2:0];
	assign io_deq_bits_len = _ram_ext_R0_data[10:3];
	assign io_deq_bits_size = _ram_ext_R0_data[13:11];
	assign io_deq_bits_burst = _ram_ext_R0_data[15:14];
endmodule
module ram_2x3 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [2:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [2:0] W0_data;
	reg [2:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 3'bxxx);
endmodule
module Queue2_AddrSizeLastBundle (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_size,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [2:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_size;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [2:0] io_deq_bits_addr;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x3 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits_addr),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits_addr)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module AddressGenerator (
	clock,
	reset,
	source_ready,
	source_valid,
	source_bits_addr,
	sink_ready,
	sink_valid,
	sink_bits_addr
);
	input clock;
	input reset;
	output wire source_ready;
	input source_valid;
	input [2:0] source_bits_addr;
	input sink_ready;
	output wire sink_valid;
	output wire [2:0] sink_bits_addr;
	wire _sink__sinkBuffer_io_enq_ready;
	wire _source__sourceBuffer_io_deq_valid;
	wire [2:0] _source__sourceBuffer_io_deq_bits_addr;
	wire [7:0] _source__sourceBuffer_io_deq_bits_len;
	wire [2:0] _source__sourceBuffer_io_deq_bits_size;
	wire [1:0] _source__sourceBuffer_io_deq_bits_burst;
	reg [2:0] addr;
	reg [7:0] ctr;
	reg generating;
	wire sink__valid = _source__sourceBuffer_io_deq_valid & _sink__sinkBuffer_io_enq_ready;
	wire last = ctr == 8'h00;
	wire [9:0] _result_addr_T = {7'h00, addr} << _source__sourceBuffer_io_deq_bits_size;
	wire last_1 = _source__sourceBuffer_io_deq_bits_len == 8'h00;
	always @(posedge clock) begin
		if (sink__valid) begin
			if (generating) begin
				if (~last) begin
					if (_source__sourceBuffer_io_deq_bits_burst == 2'h1)
						addr <= addr + 3'h1;
					else if (_source__sourceBuffer_io_deq_bits_burst == 2'h2)
						addr <= (~_source__sourceBuffer_io_deq_bits_len[2:0] & addr) | (_source__sourceBuffer_io_deq_bits_len[2:0] & (addr + 3'h1));
					ctr <= ctr - 8'h01;
				end
			end
			else if (~last_1) begin
				addr <= (_source__sourceBuffer_io_deq_bits_addr >> _source__sourceBuffer_io_deq_bits_size) + 3'h1;
				ctr <= _source__sourceBuffer_io_deq_bits_len - 8'h01;
			end
		end
		if (reset)
			generating <= 1'h0;
		else if (sink__valid) begin
			if (generating)
				generating <= ~last & generating;
			else
				generating <= ~last_1 | generating;
		end
	end
	Queue2_AddrLenSizeBurstBundle source__sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(source_ready),
		.io_enq_valid(source_valid),
		.io_enq_bits_addr(source_bits_addr),
		.io_deq_ready(sink__valid & (generating ? last : last_1)),
		.io_deq_valid(_source__sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_source__sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_len(_source__sourceBuffer_io_deq_bits_len),
		.io_deq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_deq_bits_burst(_source__sourceBuffer_io_deq_bits_burst)
	);
	Queue2_AddrSizeLastBundle sink__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink__sinkBuffer_io_enq_ready),
		.io_enq_valid(sink__valid),
		.io_enq_bits_addr((~generating | (_source__sourceBuffer_io_deq_bits_burst == 2'h0) ? _source__sourceBuffer_io_deq_bits_addr : _result_addr_T[2:0])),
		.io_enq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_enq_bits_last((generating ? last : last_1)),
		.io_deq_ready(sink_ready),
		.io_deq_valid(sink_valid),
		.io_deq_bits_addr(sink_bits_addr)
	);
endmodule
module ram_16x1 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [3:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire R0_data;
	input [3:0] W0_addr;
	input W0_en;
	input W0_clk;
	input W0_data;
	reg Memory [0:15];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 1'bx);
endmodule
module Queue16_UInt1 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits;
	reg [3:0] enq_ptr_value;
	reg [3:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 4'h0;
			deq_ptr_value <= 4'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 4'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 4'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_16x1 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module SteerRight (
	dataIn,
	offsetIn,
	dataOut
);
	input [63:0] dataIn;
	input offsetIn;
	output wire [31:0] dataOut;
	assign dataOut = (offsetIn ? dataIn[63:32] : dataIn[31:0]);
endmodule
module SteerLeft (
	dataIn,
	offsetIn,
	dataOut
);
	input [31:0] dataIn;
	input offsetIn;
	output wire [63:0] dataOut;
	assign dataOut = (offsetIn ? {dataIn, 32'h00000000} : {32'h00000000, dataIn});
endmodule
module SteerLeft_1 (
	dataIn,
	offsetIn,
	dataOut
);
	input [3:0] dataIn;
	input offsetIn;
	output wire [7:0] dataOut;
	assign dataOut = (offsetIn ? {dataIn, 4'h0} : {4'h0, dataIn});
endmodule
module Upscale (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_prot,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_prot,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_prot,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_prot,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [9:0] s_axi_ar_bits_addr;
	input [2:0] s_axi_ar_bits_prot;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [31:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [9:0] s_axi_aw_bits_addr;
	input [2:0] s_axi_aw_bits_prot;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [31:0] s_axi_w_bits_data;
	input [3:0] s_axi_w_bits_strb;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [9:0] m_axi_ar_bits_addr;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [63:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [9:0] m_axi_aw_bits_addr;
	output wire [2:0] m_axi_aw_bits_prot;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [63:0] m_axi_w_bits_data;
	output wire [7:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_resp;
	wire _write_offsetQueue_io_enq_ready;
	wire _write_offsetQueue_io_deq_valid;
	wire _write_offsetQueue_io_deq_bits;
	wire _write_addressGenerator_source_ready;
	wire _write_addressGenerator_sink_valid;
	wire [2:0] _write_addressGenerator_sink_bits_addr;
	wire _read_offsetQueue_io_enq_ready;
	wire _read_offsetQueue_io_deq_valid;
	wire _read_offsetQueue_io_deq_bits;
	wire _read_addressGenerator_source_ready;
	wire _read_addressGenerator_sink_valid;
	wire [2:0] _read_addressGenerator_sink_bits_addr;
	reg read_ar_eagerFork_regs_0;
	reg read_ar_eagerFork_regs_1;
	wire read_ar_eagerFork_s_axi_ar_ready_qual1_0 = _read_addressGenerator_source_ready | read_ar_eagerFork_regs_0;
	wire read_ar_eagerFork_s_axi_ar_ready_qual1_1 = m_axi_ar_ready | read_ar_eagerFork_regs_1;
	wire s_axi_ar_ready_0 = read_ar_eagerFork_s_axi_ar_ready_qual1_0 & read_ar_eagerFork_s_axi_ar_ready_qual1_1;
	wire s_axi_r_valid_0 = m_axi_r_valid & _read_offsetQueue_io_deq_valid;
	wire m_axi_r_ready_0 = s_axi_r_ready & s_axi_r_valid_0;
	reg write_aw_eagerFork_regs_0;
	reg write_aw_eagerFork_regs_1;
	wire write_aw_eagerFork_s_axi_aw_ready_qual1_0 = _write_addressGenerator_source_ready | write_aw_eagerFork_regs_0;
	wire write_aw_eagerFork_s_axi_aw_ready_qual1_1 = m_axi_aw_ready | write_aw_eagerFork_regs_1;
	wire s_axi_aw_ready_0 = write_aw_eagerFork_s_axi_aw_ready_qual1_0 & write_aw_eagerFork_s_axi_aw_ready_qual1_1;
	wire m_axi_w_valid_0 = s_axi_w_valid & _write_offsetQueue_io_deq_valid;
	wire s_axi_w_ready_0 = m_axi_w_ready & m_axi_w_valid_0;
	always @(posedge clock)
		if (reset) begin
			read_ar_eagerFork_regs_0 <= 1'h0;
			read_ar_eagerFork_regs_1 <= 1'h0;
			write_aw_eagerFork_regs_0 <= 1'h0;
			write_aw_eagerFork_regs_1 <= 1'h0;
		end
		else begin
			read_ar_eagerFork_regs_0 <= (read_ar_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_ar_eagerFork_regs_1 <= (read_ar_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			write_aw_eagerFork_regs_0 <= (write_aw_eagerFork_s_axi_aw_ready_qual1_0 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_aw_eagerFork_regs_1 <= (write_aw_eagerFork_s_axi_aw_ready_qual1_1 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
		end
	AddressGenerator read_addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_read_addressGenerator_source_ready),
		.source_valid(s_axi_ar_valid & ~read_ar_eagerFork_regs_0),
		.source_bits_addr(s_axi_ar_bits_addr[2:0]),
		.sink_ready(_read_offsetQueue_io_enq_ready),
		.sink_valid(_read_addressGenerator_sink_valid),
		.sink_bits_addr(_read_addressGenerator_sink_bits_addr)
	);
	Queue16_UInt1 read_offsetQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_offsetQueue_io_enq_ready),
		.io_enq_valid(_read_addressGenerator_sink_valid),
		.io_enq_bits(_read_addressGenerator_sink_bits_addr[2]),
		.io_deq_ready(m_axi_r_ready_0),
		.io_deq_valid(_read_offsetQueue_io_deq_valid),
		.io_deq_bits(_read_offsetQueue_io_deq_bits)
	);
	SteerRight read_r_steerRight(
		.dataIn(m_axi_r_bits_data),
		.offsetIn(_read_offsetQueue_io_deq_bits),
		.dataOut(s_axi_r_bits_data)
	);
	AddressGenerator write_addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_write_addressGenerator_source_ready),
		.source_valid(s_axi_aw_valid & ~write_aw_eagerFork_regs_0),
		.source_bits_addr(s_axi_aw_bits_addr[2:0]),
		.sink_ready(_write_offsetQueue_io_enq_ready),
		.sink_valid(_write_addressGenerator_sink_valid),
		.sink_bits_addr(_write_addressGenerator_sink_bits_addr)
	);
	Queue16_UInt1 write_offsetQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_offsetQueue_io_enq_ready),
		.io_enq_valid(_write_addressGenerator_sink_valid),
		.io_enq_bits(_write_addressGenerator_sink_bits_addr[2]),
		.io_deq_ready(s_axi_w_ready_0),
		.io_deq_valid(_write_offsetQueue_io_deq_valid),
		.io_deq_bits(_write_offsetQueue_io_deq_bits)
	);
	SteerLeft write_w_steerLeft(
		.dataIn(s_axi_w_bits_data),
		.offsetIn(_write_offsetQueue_io_deq_bits),
		.dataOut(m_axi_w_bits_data)
	);
	SteerLeft_1 write_w_steerLeftStrobe(
		.dataIn(s_axi_w_bits_strb),
		.offsetIn(_write_offsetQueue_io_deq_bits),
		.dataOut(m_axi_w_bits_strb)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_r_valid = s_axi_r_valid_0;
	assign s_axi_r_bits_resp = m_axi_r_bits_resp;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
	assign s_axi_w_ready = s_axi_w_ready_0;
	assign s_axi_b_valid = m_axi_b_valid;
	assign s_axi_b_bits_resp = m_axi_b_bits_resp;
	assign m_axi_ar_valid = s_axi_ar_valid & ~read_ar_eagerFork_regs_1;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_aw_valid = s_axi_aw_valid & ~write_aw_eagerFork_regs_1;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_prot = s_axi_aw_bits_prot;
	assign m_axi_w_valid = m_axi_w_valid_0;
	assign m_axi_b_ready = s_axi_b_ready;
endmodule
module elasticDemux_8 (
	io_source_ready,
	io_source_valid,
	io_source_bits_id,
	io_source_bits_addr,
	io_source_bits_len,
	io_source_bits_size,
	io_source_bits_burst,
	io_source_bits_lock,
	io_source_bits_cache,
	io_source_bits_prot,
	io_source_bits_qos,
	io_source_bits_region,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_id,
	io_sinks_0_bits_addr,
	io_sinks_0_bits_len,
	io_sinks_0_bits_size,
	io_sinks_0_bits_burst,
	io_sinks_0_bits_lock,
	io_sinks_0_bits_cache,
	io_sinks_0_bits_prot,
	io_sinks_0_bits_qos,
	io_sinks_0_bits_region,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_id,
	io_sinks_1_bits_addr,
	io_sinks_1_bits_len,
	io_sinks_1_bits_size,
	io_sinks_1_bits_burst,
	io_sinks_1_bits_lock,
	io_sinks_1_bits_cache,
	io_sinks_1_bits_prot,
	io_sinks_1_bits_qos,
	io_sinks_1_bits_region,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_id,
	io_sinks_2_bits_addr,
	io_sinks_2_bits_len,
	io_sinks_2_bits_size,
	io_sinks_2_bits_burst,
	io_sinks_2_bits_lock,
	io_sinks_2_bits_cache,
	io_sinks_2_bits_prot,
	io_sinks_2_bits_qos,
	io_sinks_2_bits_region,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_id,
	io_sinks_3_bits_addr,
	io_sinks_3_bits_len,
	io_sinks_3_bits_size,
	io_sinks_3_bits_burst,
	io_sinks_3_bits_lock,
	io_sinks_3_bits_cache,
	io_sinks_3_bits_prot,
	io_sinks_3_bits_qos,
	io_sinks_3_bits_region,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input io_source_bits_id;
	input [63:0] io_source_bits_addr;
	input [7:0] io_source_bits_len;
	input [2:0] io_source_bits_size;
	input [1:0] io_source_bits_burst;
	input io_source_bits_lock;
	input [3:0] io_source_bits_cache;
	input [2:0] io_source_bits_prot;
	input [3:0] io_source_bits_qos;
	input [3:0] io_source_bits_region;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire io_sinks_0_bits_id;
	output wire [63:0] io_sinks_0_bits_addr;
	output wire [7:0] io_sinks_0_bits_len;
	output wire [2:0] io_sinks_0_bits_size;
	output wire [1:0] io_sinks_0_bits_burst;
	output wire io_sinks_0_bits_lock;
	output wire [3:0] io_sinks_0_bits_cache;
	output wire [2:0] io_sinks_0_bits_prot;
	output wire [3:0] io_sinks_0_bits_qos;
	output wire [3:0] io_sinks_0_bits_region;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire io_sinks_1_bits_id;
	output wire [63:0] io_sinks_1_bits_addr;
	output wire [7:0] io_sinks_1_bits_len;
	output wire [2:0] io_sinks_1_bits_size;
	output wire [1:0] io_sinks_1_bits_burst;
	output wire io_sinks_1_bits_lock;
	output wire [3:0] io_sinks_1_bits_cache;
	output wire [2:0] io_sinks_1_bits_prot;
	output wire [3:0] io_sinks_1_bits_qos;
	output wire [3:0] io_sinks_1_bits_region;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire io_sinks_2_bits_id;
	output wire [63:0] io_sinks_2_bits_addr;
	output wire [7:0] io_sinks_2_bits_len;
	output wire [2:0] io_sinks_2_bits_size;
	output wire [1:0] io_sinks_2_bits_burst;
	output wire io_sinks_2_bits_lock;
	output wire [3:0] io_sinks_2_bits_cache;
	output wire [2:0] io_sinks_2_bits_prot;
	output wire [3:0] io_sinks_2_bits_qos;
	output wire [3:0] io_sinks_2_bits_region;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire io_sinks_3_bits_id;
	output wire [63:0] io_sinks_3_bits_addr;
	output wire [7:0] io_sinks_3_bits_len;
	output wire [2:0] io_sinks_3_bits_size;
	output wire [1:0] io_sinks_3_bits_burst;
	output wire io_sinks_3_bits_lock;
	output wire [3:0] io_sinks_3_bits_cache;
	output wire [2:0] io_sinks_3_bits_prot;
	output wire [3:0] io_sinks_3_bits_qos;
	output wire [3:0] io_sinks_3_bits_region;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_id = io_source_bits_id;
	assign io_sinks_0_bits_addr = io_source_bits_addr;
	assign io_sinks_0_bits_len = io_source_bits_len;
	assign io_sinks_0_bits_size = io_source_bits_size;
	assign io_sinks_0_bits_burst = io_source_bits_burst;
	assign io_sinks_0_bits_lock = io_source_bits_lock;
	assign io_sinks_0_bits_cache = io_source_bits_cache;
	assign io_sinks_0_bits_prot = io_source_bits_prot;
	assign io_sinks_0_bits_qos = io_source_bits_qos;
	assign io_sinks_0_bits_region = io_source_bits_region;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_id = io_source_bits_id;
	assign io_sinks_1_bits_addr = io_source_bits_addr;
	assign io_sinks_1_bits_len = io_source_bits_len;
	assign io_sinks_1_bits_size = io_source_bits_size;
	assign io_sinks_1_bits_burst = io_source_bits_burst;
	assign io_sinks_1_bits_lock = io_source_bits_lock;
	assign io_sinks_1_bits_cache = io_source_bits_cache;
	assign io_sinks_1_bits_prot = io_source_bits_prot;
	assign io_sinks_1_bits_qos = io_source_bits_qos;
	assign io_sinks_1_bits_region = io_source_bits_region;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_id = io_source_bits_id;
	assign io_sinks_2_bits_addr = io_source_bits_addr;
	assign io_sinks_2_bits_len = io_source_bits_len;
	assign io_sinks_2_bits_size = io_source_bits_size;
	assign io_sinks_2_bits_burst = io_source_bits_burst;
	assign io_sinks_2_bits_lock = io_source_bits_lock;
	assign io_sinks_2_bits_cache = io_source_bits_cache;
	assign io_sinks_2_bits_prot = io_source_bits_prot;
	assign io_sinks_2_bits_qos = io_source_bits_qos;
	assign io_sinks_2_bits_region = io_source_bits_region;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_id = io_source_bits_id;
	assign io_sinks_3_bits_addr = io_source_bits_addr;
	assign io_sinks_3_bits_len = io_source_bits_len;
	assign io_sinks_3_bits_size = io_source_bits_size;
	assign io_sinks_3_bits_burst = io_source_bits_burst;
	assign io_sinks_3_bits_lock = io_source_bits_lock;
	assign io_sinks_3_bits_cache = io_source_bits_cache;
	assign io_sinks_3_bits_prot = io_source_bits_prot;
	assign io_sinks_3_bits_qos = io_source_bits_qos;
	assign io_sinks_3_bits_region = io_source_bits_region;
	assign io_select_ready = fire;
endmodule
module ram_2x262 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [261:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [261:0] W0_data;
	reg [261:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 262'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_7 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_data,
	io_enq_bits_resp,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_data,
	io_deq_bits_resp,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [2:0] io_enq_bits_id;
	input [255:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [2:0] io_deq_bits_id;
	output wire [255:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [261:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x262 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_resp, io_enq_bits_data, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[2:0];
	assign io_deq_bits_data = _ram_ext_R0_data[258:3];
	assign io_deq_bits_resp = _ram_ext_R0_data[260:259];
	assign io_deq_bits_last = _ram_ext_R0_data[261];
endmodule
module Queue2_UInt2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x2 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module elasticBasicArbiter_2 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_id,
	io_sources_0_bits_data,
	io_sources_0_bits_resp,
	io_sources_0_bits_last,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_id,
	io_sources_1_bits_data,
	io_sources_1_bits_resp,
	io_sources_1_bits_last,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_id,
	io_sources_2_bits_data,
	io_sources_2_bits_resp,
	io_sources_2_bits_last,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_id,
	io_sources_3_bits_data,
	io_sources_3_bits_resp,
	io_sources_3_bits_last,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_data,
	io_sink_bits_resp,
	io_sink_bits_last
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [2:0] io_sources_0_bits_id;
	input [255:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [2:0] io_sources_1_bits_id;
	input [255:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	input io_sources_1_bits_last;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [2:0] io_sources_2_bits_id;
	input [255:0] io_sources_2_bits_data;
	input [1:0] io_sources_2_bits_resp;
	input io_sources_2_bits_last;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [2:0] io_sources_3_bits_id;
	input [255:0] io_sources_3_bits_data;
	input [1:0] io_sources_3_bits_resp;
	input io_sources_3_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [2:0] io_sink_bits_id;
	output wire [255:0] io_sink_bits_data;
	output wire [1:0] io_sink_bits_resp;
	output wire io_sink_bits_last;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg [1:0] chooser_lastChoice;
	wire _chooser_rrChoice_T_4 = (chooser_lastChoice == 2'h0) & io_sources_1_valid;
	wire [1:0] _chooser_rrChoice_T_9 = {1'h1, ~(~chooser_lastChoice[1] & io_sources_2_valid)};
	wire [1:0] chooser_rrChoice = (&chooser_lastChoice ? 2'h0 : (_chooser_rrChoice_T_4 ? 2'h1 : _chooser_rrChoice_T_9));
	wire [1:0] chooser_priorityChoice = (io_sources_0_valid ? 2'h0 : (io_sources_1_valid ? 2'h1 : {1'h1, ~io_sources_2_valid}));
	wire [3:0] _GEN = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1:0] choice = (_GEN[chooser_rrChoice] ? chooser_rrChoice : chooser_priorityChoice);
	wire [11:0] _GEN_0 = {io_sources_3_bits_id, io_sources_2_bits_id, io_sources_1_bits_id, io_sources_0_bits_id};
	wire [1023:0] _GEN_1 = {io_sources_3_bits_data, io_sources_2_bits_data, io_sources_1_bits_data, io_sources_0_bits_data};
	wire [7:0] _GEN_2 = {io_sources_3_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire [3:0] _GEN_3 = {io_sources_3_bits_last, io_sources_2_bits_last, io_sources_1_bits_last, io_sources_0_bits_last};
	wire fire = (_GEN[choice] & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 2'h0;
		else if (fire) begin
			if (_GEN[chooser_rrChoice]) begin
				if (&chooser_lastChoice)
					chooser_lastChoice <= 2'h0;
				else if (_chooser_rrChoice_T_4)
					chooser_lastChoice <= 2'h1;
				else
					chooser_lastChoice <= _chooser_rrChoice_T_9;
			end
			else
				chooser_lastChoice <= chooser_priorityChoice;
		end
	Queue2_ReadDataChannel_7 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN_0[choice * 3+:3]),
		.io_enq_bits_data(_GEN_1[choice * 256+:256]),
		.io_enq_bits_resp(_GEN_2[choice * 2+:2]),
		.io_enq_bits_last(_GEN_3[choice]),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_data(io_sink_bits_data),
		.io_deq_bits_resp(io_sink_bits_resp),
		.io_deq_bits_last(io_sink_bits_last)
	);
	Queue2_UInt2 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & (choice == 2'h0);
	assign io_sources_1_ready = fire & (choice == 2'h1);
	assign io_sources_2_ready = fire & (choice == 2'h2);
	assign io_sources_3_ready = fire & (&choice);
endmodule
module elasticDemux_10 (
	io_source_ready,
	io_source_valid,
	io_source_bits_data,
	io_source_bits_strb,
	io_source_bits_last,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_data,
	io_sinks_0_bits_strb,
	io_sinks_0_bits_last,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_data,
	io_sinks_1_bits_strb,
	io_sinks_1_bits_last,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_data,
	io_sinks_2_bits_strb,
	io_sinks_2_bits_last,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_data,
	io_sinks_3_bits_strb,
	io_sinks_3_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [255:0] io_source_bits_data;
	input [31:0] io_source_bits_strb;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [255:0] io_sinks_0_bits_data;
	output wire [31:0] io_sinks_0_bits_strb;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [255:0] io_sinks_1_bits_data;
	output wire [31:0] io_sinks_1_bits_strb;
	output wire io_sinks_1_bits_last;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [255:0] io_sinks_2_bits_data;
	output wire [31:0] io_sinks_2_bits_strb;
	output wire io_sinks_2_bits_last;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [255:0] io_sinks_3_bits_data;
	output wire [31:0] io_sinks_3_bits_strb;
	output wire io_sinks_3_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_strb = io_source_bits_strb;
	assign io_sinks_0_bits_last = io_source_bits_last;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_data = io_source_bits_data;
	assign io_sinks_1_bits_strb = io_source_bits_strb;
	assign io_sinks_1_bits_last = io_source_bits_last;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_data = io_source_bits_data;
	assign io_sinks_2_bits_strb = io_source_bits_strb;
	assign io_sinks_2_bits_last = io_source_bits_last;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_data = io_source_bits_data;
	assign io_sinks_3_bits_strb = io_source_bits_strb;
	assign io_sinks_3_bits_last = io_source_bits_last;
	assign io_select_ready = fire & io_source_bits_last;
endmodule
module ram_2x5 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [4:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [4:0] W0_data;
	reg [4:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 5'bxxxxx);
endmodule
module Queue2_WriteResponseChannel_5 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_resp,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_resp
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [2:0] io_enq_bits_id;
	input [1:0] io_enq_bits_resp;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [2:0] io_deq_bits_id;
	output wire [1:0] io_deq_bits_resp;
	wire [4:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x5 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_resp, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[2:0];
	assign io_deq_bits_resp = _ram_ext_R0_data[4:3];
endmodule
module elasticBasicArbiter_3 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_id,
	io_sources_0_bits_resp,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_id,
	io_sources_1_bits_resp,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_id,
	io_sources_2_bits_resp,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_id,
	io_sources_3_bits_resp,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_resp
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [2:0] io_sources_0_bits_id;
	input [1:0] io_sources_0_bits_resp;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [2:0] io_sources_1_bits_id;
	input [1:0] io_sources_1_bits_resp;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [2:0] io_sources_2_bits_id;
	input [1:0] io_sources_2_bits_resp;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [2:0] io_sources_3_bits_id;
	input [1:0] io_sources_3_bits_resp;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [2:0] io_sink_bits_id;
	output wire [1:0] io_sink_bits_resp;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg [1:0] chooser_lastChoice;
	wire _chooser_rrChoice_T_4 = (chooser_lastChoice == 2'h0) & io_sources_1_valid;
	wire [1:0] _chooser_rrChoice_T_9 = {1'h1, ~(~chooser_lastChoice[1] & io_sources_2_valid)};
	wire [1:0] chooser_rrChoice = (&chooser_lastChoice ? 2'h0 : (_chooser_rrChoice_T_4 ? 2'h1 : _chooser_rrChoice_T_9));
	wire [1:0] chooser_priorityChoice = (io_sources_0_valid ? 2'h0 : (io_sources_1_valid ? 2'h1 : {1'h1, ~io_sources_2_valid}));
	wire [3:0] _GEN = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1:0] choice = (_GEN[chooser_rrChoice] ? chooser_rrChoice : chooser_priorityChoice);
	wire [11:0] _GEN_0 = {io_sources_3_bits_id, io_sources_2_bits_id, io_sources_1_bits_id, io_sources_0_bits_id};
	wire [7:0] _GEN_1 = {io_sources_3_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire fire = (_GEN[choice] & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 2'h0;
		else if (fire) begin
			if (_GEN[chooser_rrChoice]) begin
				if (&chooser_lastChoice)
					chooser_lastChoice <= 2'h0;
				else if (_chooser_rrChoice_T_4)
					chooser_lastChoice <= 2'h1;
				else
					chooser_lastChoice <= _chooser_rrChoice_T_9;
			end
			else
				chooser_lastChoice <= chooser_priorityChoice;
		end
	Queue2_WriteResponseChannel_5 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN_0[choice * 3+:3]),
		.io_enq_bits_resp(_GEN_1[choice * 2+:2]),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_resp(io_sink_bits_resp)
	);
	Queue2_UInt2 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & (choice == 2'h0);
	assign io_sources_1_ready = fire & (choice == 2'h1);
	assign io_sources_2_ready = fire & (choice == 2'h2);
	assign io_sources_3_ready = fire & (&choice);
endmodule
module IdDemux (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_0_ar_ready,
	m_axi_0_ar_valid,
	m_axi_0_ar_bits_id,
	m_axi_0_ar_bits_addr,
	m_axi_0_ar_bits_len,
	m_axi_0_ar_bits_size,
	m_axi_0_ar_bits_burst,
	m_axi_0_ar_bits_lock,
	m_axi_0_ar_bits_cache,
	m_axi_0_ar_bits_prot,
	m_axi_0_ar_bits_qos,
	m_axi_0_ar_bits_region,
	m_axi_0_r_ready,
	m_axi_0_r_valid,
	m_axi_0_r_bits_id,
	m_axi_0_r_bits_data,
	m_axi_0_r_bits_resp,
	m_axi_0_r_bits_last,
	m_axi_0_aw_ready,
	m_axi_0_aw_valid,
	m_axi_0_aw_bits_id,
	m_axi_0_aw_bits_addr,
	m_axi_0_aw_bits_len,
	m_axi_0_aw_bits_size,
	m_axi_0_aw_bits_burst,
	m_axi_0_aw_bits_lock,
	m_axi_0_aw_bits_cache,
	m_axi_0_aw_bits_prot,
	m_axi_0_aw_bits_qos,
	m_axi_0_aw_bits_region,
	m_axi_0_w_ready,
	m_axi_0_w_valid,
	m_axi_0_w_bits_data,
	m_axi_0_w_bits_strb,
	m_axi_0_w_bits_last,
	m_axi_0_b_ready,
	m_axi_0_b_valid,
	m_axi_0_b_bits_id,
	m_axi_0_b_bits_resp,
	m_axi_1_ar_ready,
	m_axi_1_ar_valid,
	m_axi_1_ar_bits_id,
	m_axi_1_ar_bits_addr,
	m_axi_1_ar_bits_len,
	m_axi_1_ar_bits_size,
	m_axi_1_ar_bits_burst,
	m_axi_1_ar_bits_lock,
	m_axi_1_ar_bits_cache,
	m_axi_1_ar_bits_prot,
	m_axi_1_ar_bits_qos,
	m_axi_1_ar_bits_region,
	m_axi_1_r_ready,
	m_axi_1_r_valid,
	m_axi_1_r_bits_id,
	m_axi_1_r_bits_data,
	m_axi_1_r_bits_resp,
	m_axi_1_r_bits_last,
	m_axi_1_aw_ready,
	m_axi_1_aw_valid,
	m_axi_1_aw_bits_id,
	m_axi_1_aw_bits_addr,
	m_axi_1_aw_bits_len,
	m_axi_1_aw_bits_size,
	m_axi_1_aw_bits_burst,
	m_axi_1_aw_bits_lock,
	m_axi_1_aw_bits_cache,
	m_axi_1_aw_bits_prot,
	m_axi_1_aw_bits_qos,
	m_axi_1_aw_bits_region,
	m_axi_1_w_ready,
	m_axi_1_w_valid,
	m_axi_1_w_bits_data,
	m_axi_1_w_bits_strb,
	m_axi_1_w_bits_last,
	m_axi_1_b_ready,
	m_axi_1_b_valid,
	m_axi_1_b_bits_id,
	m_axi_1_b_bits_resp,
	m_axi_2_ar_ready,
	m_axi_2_ar_valid,
	m_axi_2_ar_bits_id,
	m_axi_2_ar_bits_addr,
	m_axi_2_ar_bits_len,
	m_axi_2_ar_bits_size,
	m_axi_2_ar_bits_burst,
	m_axi_2_ar_bits_lock,
	m_axi_2_ar_bits_cache,
	m_axi_2_ar_bits_prot,
	m_axi_2_ar_bits_qos,
	m_axi_2_ar_bits_region,
	m_axi_2_r_ready,
	m_axi_2_r_valid,
	m_axi_2_r_bits_id,
	m_axi_2_r_bits_data,
	m_axi_2_r_bits_resp,
	m_axi_2_r_bits_last,
	m_axi_2_aw_ready,
	m_axi_2_aw_valid,
	m_axi_2_aw_bits_id,
	m_axi_2_aw_bits_addr,
	m_axi_2_aw_bits_len,
	m_axi_2_aw_bits_size,
	m_axi_2_aw_bits_burst,
	m_axi_2_aw_bits_lock,
	m_axi_2_aw_bits_cache,
	m_axi_2_aw_bits_prot,
	m_axi_2_aw_bits_qos,
	m_axi_2_aw_bits_region,
	m_axi_2_w_ready,
	m_axi_2_w_valid,
	m_axi_2_w_bits_data,
	m_axi_2_w_bits_strb,
	m_axi_2_w_bits_last,
	m_axi_2_b_ready,
	m_axi_2_b_valid,
	m_axi_2_b_bits_id,
	m_axi_2_b_bits_resp,
	m_axi_3_ar_ready,
	m_axi_3_ar_valid,
	m_axi_3_ar_bits_id,
	m_axi_3_ar_bits_addr,
	m_axi_3_ar_bits_len,
	m_axi_3_ar_bits_size,
	m_axi_3_ar_bits_burst,
	m_axi_3_ar_bits_lock,
	m_axi_3_ar_bits_cache,
	m_axi_3_ar_bits_prot,
	m_axi_3_ar_bits_qos,
	m_axi_3_ar_bits_region,
	m_axi_3_r_ready,
	m_axi_3_r_valid,
	m_axi_3_r_bits_id,
	m_axi_3_r_bits_data,
	m_axi_3_r_bits_resp,
	m_axi_3_r_bits_last,
	m_axi_3_aw_ready,
	m_axi_3_aw_valid,
	m_axi_3_aw_bits_id,
	m_axi_3_aw_bits_addr,
	m_axi_3_aw_bits_len,
	m_axi_3_aw_bits_size,
	m_axi_3_aw_bits_burst,
	m_axi_3_aw_bits_lock,
	m_axi_3_aw_bits_cache,
	m_axi_3_aw_bits_prot,
	m_axi_3_aw_bits_qos,
	m_axi_3_aw_bits_region,
	m_axi_3_w_ready,
	m_axi_3_w_valid,
	m_axi_3_w_bits_data,
	m_axi_3_w_bits_strb,
	m_axi_3_w_bits_last,
	m_axi_3_b_ready,
	m_axi_3_b_valid,
	m_axi_3_b_bits_id,
	m_axi_3_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [2:0] s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [2:0] s_axi_r_bits_id;
	output wire [255:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [2:0] s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [255:0] s_axi_w_bits_data;
	input [31:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [2:0] s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_0_ar_ready;
	output wire m_axi_0_ar_valid;
	output wire m_axi_0_ar_bits_id;
	output wire [63:0] m_axi_0_ar_bits_addr;
	output wire [7:0] m_axi_0_ar_bits_len;
	output wire [2:0] m_axi_0_ar_bits_size;
	output wire [1:0] m_axi_0_ar_bits_burst;
	output wire m_axi_0_ar_bits_lock;
	output wire [3:0] m_axi_0_ar_bits_cache;
	output wire [2:0] m_axi_0_ar_bits_prot;
	output wire [3:0] m_axi_0_ar_bits_qos;
	output wire [3:0] m_axi_0_ar_bits_region;
	output wire m_axi_0_r_ready;
	input m_axi_0_r_valid;
	input m_axi_0_r_bits_id;
	input [255:0] m_axi_0_r_bits_data;
	input [1:0] m_axi_0_r_bits_resp;
	input m_axi_0_r_bits_last;
	input m_axi_0_aw_ready;
	output wire m_axi_0_aw_valid;
	output wire m_axi_0_aw_bits_id;
	output wire [63:0] m_axi_0_aw_bits_addr;
	output wire [7:0] m_axi_0_aw_bits_len;
	output wire [2:0] m_axi_0_aw_bits_size;
	output wire [1:0] m_axi_0_aw_bits_burst;
	output wire m_axi_0_aw_bits_lock;
	output wire [3:0] m_axi_0_aw_bits_cache;
	output wire [2:0] m_axi_0_aw_bits_prot;
	output wire [3:0] m_axi_0_aw_bits_qos;
	output wire [3:0] m_axi_0_aw_bits_region;
	input m_axi_0_w_ready;
	output wire m_axi_0_w_valid;
	output wire [255:0] m_axi_0_w_bits_data;
	output wire [31:0] m_axi_0_w_bits_strb;
	output wire m_axi_0_w_bits_last;
	output wire m_axi_0_b_ready;
	input m_axi_0_b_valid;
	input m_axi_0_b_bits_id;
	input [1:0] m_axi_0_b_bits_resp;
	input m_axi_1_ar_ready;
	output wire m_axi_1_ar_valid;
	output wire m_axi_1_ar_bits_id;
	output wire [63:0] m_axi_1_ar_bits_addr;
	output wire [7:0] m_axi_1_ar_bits_len;
	output wire [2:0] m_axi_1_ar_bits_size;
	output wire [1:0] m_axi_1_ar_bits_burst;
	output wire m_axi_1_ar_bits_lock;
	output wire [3:0] m_axi_1_ar_bits_cache;
	output wire [2:0] m_axi_1_ar_bits_prot;
	output wire [3:0] m_axi_1_ar_bits_qos;
	output wire [3:0] m_axi_1_ar_bits_region;
	output wire m_axi_1_r_ready;
	input m_axi_1_r_valid;
	input m_axi_1_r_bits_id;
	input [255:0] m_axi_1_r_bits_data;
	input [1:0] m_axi_1_r_bits_resp;
	input m_axi_1_r_bits_last;
	input m_axi_1_aw_ready;
	output wire m_axi_1_aw_valid;
	output wire m_axi_1_aw_bits_id;
	output wire [63:0] m_axi_1_aw_bits_addr;
	output wire [7:0] m_axi_1_aw_bits_len;
	output wire [2:0] m_axi_1_aw_bits_size;
	output wire [1:0] m_axi_1_aw_bits_burst;
	output wire m_axi_1_aw_bits_lock;
	output wire [3:0] m_axi_1_aw_bits_cache;
	output wire [2:0] m_axi_1_aw_bits_prot;
	output wire [3:0] m_axi_1_aw_bits_qos;
	output wire [3:0] m_axi_1_aw_bits_region;
	input m_axi_1_w_ready;
	output wire m_axi_1_w_valid;
	output wire [255:0] m_axi_1_w_bits_data;
	output wire [31:0] m_axi_1_w_bits_strb;
	output wire m_axi_1_w_bits_last;
	output wire m_axi_1_b_ready;
	input m_axi_1_b_valid;
	input m_axi_1_b_bits_id;
	input [1:0] m_axi_1_b_bits_resp;
	input m_axi_2_ar_ready;
	output wire m_axi_2_ar_valid;
	output wire m_axi_2_ar_bits_id;
	output wire [63:0] m_axi_2_ar_bits_addr;
	output wire [7:0] m_axi_2_ar_bits_len;
	output wire [2:0] m_axi_2_ar_bits_size;
	output wire [1:0] m_axi_2_ar_bits_burst;
	output wire m_axi_2_ar_bits_lock;
	output wire [3:0] m_axi_2_ar_bits_cache;
	output wire [2:0] m_axi_2_ar_bits_prot;
	output wire [3:0] m_axi_2_ar_bits_qos;
	output wire [3:0] m_axi_2_ar_bits_region;
	output wire m_axi_2_r_ready;
	input m_axi_2_r_valid;
	input m_axi_2_r_bits_id;
	input [255:0] m_axi_2_r_bits_data;
	input [1:0] m_axi_2_r_bits_resp;
	input m_axi_2_r_bits_last;
	input m_axi_2_aw_ready;
	output wire m_axi_2_aw_valid;
	output wire m_axi_2_aw_bits_id;
	output wire [63:0] m_axi_2_aw_bits_addr;
	output wire [7:0] m_axi_2_aw_bits_len;
	output wire [2:0] m_axi_2_aw_bits_size;
	output wire [1:0] m_axi_2_aw_bits_burst;
	output wire m_axi_2_aw_bits_lock;
	output wire [3:0] m_axi_2_aw_bits_cache;
	output wire [2:0] m_axi_2_aw_bits_prot;
	output wire [3:0] m_axi_2_aw_bits_qos;
	output wire [3:0] m_axi_2_aw_bits_region;
	input m_axi_2_w_ready;
	output wire m_axi_2_w_valid;
	output wire [255:0] m_axi_2_w_bits_data;
	output wire [31:0] m_axi_2_w_bits_strb;
	output wire m_axi_2_w_bits_last;
	output wire m_axi_2_b_ready;
	input m_axi_2_b_valid;
	input m_axi_2_b_bits_id;
	input [1:0] m_axi_2_b_bits_resp;
	input m_axi_3_ar_ready;
	output wire m_axi_3_ar_valid;
	output wire m_axi_3_ar_bits_id;
	output wire [63:0] m_axi_3_ar_bits_addr;
	output wire [7:0] m_axi_3_ar_bits_len;
	output wire [2:0] m_axi_3_ar_bits_size;
	output wire [1:0] m_axi_3_ar_bits_burst;
	output wire m_axi_3_ar_bits_lock;
	output wire [3:0] m_axi_3_ar_bits_cache;
	output wire [2:0] m_axi_3_ar_bits_prot;
	output wire [3:0] m_axi_3_ar_bits_qos;
	output wire [3:0] m_axi_3_ar_bits_region;
	output wire m_axi_3_r_ready;
	input m_axi_3_r_valid;
	input m_axi_3_r_bits_id;
	input [255:0] m_axi_3_r_bits_data;
	input [1:0] m_axi_3_r_bits_resp;
	input m_axi_3_r_bits_last;
	input m_axi_3_aw_ready;
	output wire m_axi_3_aw_valid;
	output wire m_axi_3_aw_bits_id;
	output wire [63:0] m_axi_3_aw_bits_addr;
	output wire [7:0] m_axi_3_aw_bits_len;
	output wire [2:0] m_axi_3_aw_bits_size;
	output wire [1:0] m_axi_3_aw_bits_burst;
	output wire m_axi_3_aw_bits_lock;
	output wire [3:0] m_axi_3_aw_bits_cache;
	output wire [2:0] m_axi_3_aw_bits_prot;
	output wire [3:0] m_axi_3_aw_bits_qos;
	output wire [3:0] m_axi_3_aw_bits_region;
	input m_axi_3_w_ready;
	output wire m_axi_3_w_valid;
	output wire [255:0] m_axi_3_w_bits_data;
	output wire [31:0] m_axi_3_w_bits_strb;
	output wire m_axi_3_w_bits_last;
	output wire m_axi_3_b_ready;
	input m_axi_3_b_valid;
	input m_axi_3_b_bits_id;
	input [1:0] m_axi_3_b_bits_resp;
	wire _write_demux_1_io_select_ready;
	wire _write_demux_io_source_ready;
	wire _write_demux_io_select_ready;
	wire _write_portQueue_io_enq_ready;
	wire _write_portQueue_io_deq_valid;
	wire [1:0] _write_portQueue_io_deq_bits;
	wire _read_demux_io_source_ready;
	wire _read_demux_io_select_ready;
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	wire read_eagerFork_s_axi_ar_ready_qual1_0 = _read_demux_io_source_ready | read_eagerFork_regs_0;
	wire read_eagerFork_s_axi_ar_ready_qual1_1 = _read_demux_io_select_ready | read_eagerFork_regs_1;
	wire s_axi_ar_ready_0 = read_eagerFork_s_axi_ar_ready_qual1_0 & read_eagerFork_s_axi_ar_ready_qual1_1;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	reg write_eagerFork_regs_2;
	wire write_eagerFork_s_axi_aw_ready_qual1_0 = _write_demux_io_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_s_axi_aw_ready_qual1_1 = _write_demux_io_select_ready | write_eagerFork_regs_1;
	wire write_eagerFork_s_axi_aw_ready_qual1_2 = _write_portQueue_io_enq_ready | write_eagerFork_regs_2;
	wire s_axi_aw_ready_0 = (write_eagerFork_s_axi_aw_ready_qual1_0 & write_eagerFork_s_axi_aw_ready_qual1_1) & write_eagerFork_s_axi_aw_ready_qual1_2;
	always @(posedge clock)
		if (reset) begin
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_2 <= 1'h0;
		end
		else begin
			read_eagerFork_regs_0 <= (read_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_eagerFork_regs_1 <= (read_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			write_eagerFork_regs_0 <= (write_eagerFork_s_axi_aw_ready_qual1_0 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_s_axi_aw_ready_qual1_1 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_2 <= (write_eagerFork_s_axi_aw_ready_qual1_2 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
		end
	elasticDemux_8 read_demux(
		.io_source_ready(_read_demux_io_source_ready),
		.io_source_valid(s_axi_ar_valid & ~read_eagerFork_regs_0),
		.io_source_bits_id(s_axi_ar_bits_id[2]),
		.io_source_bits_addr(s_axi_ar_bits_addr),
		.io_source_bits_len(s_axi_ar_bits_len),
		.io_source_bits_size(s_axi_ar_bits_size),
		.io_source_bits_burst(s_axi_ar_bits_burst),
		.io_source_bits_lock(s_axi_ar_bits_lock),
		.io_source_bits_cache(s_axi_ar_bits_cache),
		.io_source_bits_prot(s_axi_ar_bits_prot),
		.io_source_bits_qos(s_axi_ar_bits_qos),
		.io_source_bits_region(s_axi_ar_bits_region),
		.io_sinks_0_ready(m_axi_0_ar_ready),
		.io_sinks_0_valid(m_axi_0_ar_valid),
		.io_sinks_0_bits_id(m_axi_0_ar_bits_id),
		.io_sinks_0_bits_addr(m_axi_0_ar_bits_addr),
		.io_sinks_0_bits_len(m_axi_0_ar_bits_len),
		.io_sinks_0_bits_size(m_axi_0_ar_bits_size),
		.io_sinks_0_bits_burst(m_axi_0_ar_bits_burst),
		.io_sinks_0_bits_lock(m_axi_0_ar_bits_lock),
		.io_sinks_0_bits_cache(m_axi_0_ar_bits_cache),
		.io_sinks_0_bits_prot(m_axi_0_ar_bits_prot),
		.io_sinks_0_bits_qos(m_axi_0_ar_bits_qos),
		.io_sinks_0_bits_region(m_axi_0_ar_bits_region),
		.io_sinks_1_ready(m_axi_1_ar_ready),
		.io_sinks_1_valid(m_axi_1_ar_valid),
		.io_sinks_1_bits_id(m_axi_1_ar_bits_id),
		.io_sinks_1_bits_addr(m_axi_1_ar_bits_addr),
		.io_sinks_1_bits_len(m_axi_1_ar_bits_len),
		.io_sinks_1_bits_size(m_axi_1_ar_bits_size),
		.io_sinks_1_bits_burst(m_axi_1_ar_bits_burst),
		.io_sinks_1_bits_lock(m_axi_1_ar_bits_lock),
		.io_sinks_1_bits_cache(m_axi_1_ar_bits_cache),
		.io_sinks_1_bits_prot(m_axi_1_ar_bits_prot),
		.io_sinks_1_bits_qos(m_axi_1_ar_bits_qos),
		.io_sinks_1_bits_region(m_axi_1_ar_bits_region),
		.io_sinks_2_ready(m_axi_2_ar_ready),
		.io_sinks_2_valid(m_axi_2_ar_valid),
		.io_sinks_2_bits_id(m_axi_2_ar_bits_id),
		.io_sinks_2_bits_addr(m_axi_2_ar_bits_addr),
		.io_sinks_2_bits_len(m_axi_2_ar_bits_len),
		.io_sinks_2_bits_size(m_axi_2_ar_bits_size),
		.io_sinks_2_bits_burst(m_axi_2_ar_bits_burst),
		.io_sinks_2_bits_lock(m_axi_2_ar_bits_lock),
		.io_sinks_2_bits_cache(m_axi_2_ar_bits_cache),
		.io_sinks_2_bits_prot(m_axi_2_ar_bits_prot),
		.io_sinks_2_bits_qos(m_axi_2_ar_bits_qos),
		.io_sinks_2_bits_region(m_axi_2_ar_bits_region),
		.io_sinks_3_ready(m_axi_3_ar_ready),
		.io_sinks_3_valid(m_axi_3_ar_valid),
		.io_sinks_3_bits_id(m_axi_3_ar_bits_id),
		.io_sinks_3_bits_addr(m_axi_3_ar_bits_addr),
		.io_sinks_3_bits_len(m_axi_3_ar_bits_len),
		.io_sinks_3_bits_size(m_axi_3_ar_bits_size),
		.io_sinks_3_bits_burst(m_axi_3_ar_bits_burst),
		.io_sinks_3_bits_lock(m_axi_3_ar_bits_lock),
		.io_sinks_3_bits_cache(m_axi_3_ar_bits_cache),
		.io_sinks_3_bits_prot(m_axi_3_ar_bits_prot),
		.io_sinks_3_bits_qos(m_axi_3_ar_bits_qos),
		.io_sinks_3_bits_region(m_axi_3_ar_bits_region),
		.io_select_ready(_read_demux_io_select_ready),
		.io_select_valid(s_axi_ar_valid & ~read_eagerFork_regs_1),
		.io_select_bits(s_axi_ar_bits_id[1:0])
	);
	elasticBasicArbiter_2 read_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(m_axi_0_r_ready),
		.io_sources_0_valid(m_axi_0_r_valid),
		.io_sources_0_bits_id({m_axi_0_r_bits_id, 2'h0}),
		.io_sources_0_bits_data(m_axi_0_r_bits_data),
		.io_sources_0_bits_resp(m_axi_0_r_bits_resp),
		.io_sources_0_bits_last(m_axi_0_r_bits_last),
		.io_sources_1_ready(m_axi_1_r_ready),
		.io_sources_1_valid(m_axi_1_r_valid),
		.io_sources_1_bits_id({m_axi_1_r_bits_id, 2'h1}),
		.io_sources_1_bits_data(m_axi_1_r_bits_data),
		.io_sources_1_bits_resp(m_axi_1_r_bits_resp),
		.io_sources_1_bits_last(m_axi_1_r_bits_last),
		.io_sources_2_ready(m_axi_2_r_ready),
		.io_sources_2_valid(m_axi_2_r_valid),
		.io_sources_2_bits_id({m_axi_2_r_bits_id, 2'h2}),
		.io_sources_2_bits_data(m_axi_2_r_bits_data),
		.io_sources_2_bits_resp(m_axi_2_r_bits_resp),
		.io_sources_2_bits_last(m_axi_2_r_bits_last),
		.io_sources_3_ready(m_axi_3_r_ready),
		.io_sources_3_valid(m_axi_3_r_valid),
		.io_sources_3_bits_id({m_axi_3_r_bits_id, 2'h3}),
		.io_sources_3_bits_data(m_axi_3_r_bits_data),
		.io_sources_3_bits_resp(m_axi_3_r_bits_resp),
		.io_sources_3_bits_last(m_axi_3_r_bits_last),
		.io_sink_ready(s_axi_r_ready),
		.io_sink_valid(s_axi_r_valid),
		.io_sink_bits_id(s_axi_r_bits_id),
		.io_sink_bits_data(s_axi_r_bits_data),
		.io_sink_bits_resp(s_axi_r_bits_resp),
		.io_sink_bits_last(s_axi_r_bits_last)
	);
	Queue8_UInt2 write_portQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueue_io_enq_ready),
		.io_enq_valid(s_axi_aw_valid & ~write_eagerFork_regs_2),
		.io_enq_bits(s_axi_aw_bits_id[1:0]),
		.io_deq_ready(_write_demux_1_io_select_ready),
		.io_deq_valid(_write_portQueue_io_deq_valid),
		.io_deq_bits(_write_portQueue_io_deq_bits)
	);
	elasticDemux_8 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(s_axi_aw_valid & ~write_eagerFork_regs_0),
		.io_source_bits_id(s_axi_aw_bits_id[2]),
		.io_source_bits_addr(s_axi_aw_bits_addr),
		.io_source_bits_len(s_axi_aw_bits_len),
		.io_source_bits_size(s_axi_aw_bits_size),
		.io_source_bits_burst(s_axi_aw_bits_burst),
		.io_source_bits_lock(s_axi_aw_bits_lock),
		.io_source_bits_cache(s_axi_aw_bits_cache),
		.io_source_bits_prot(s_axi_aw_bits_prot),
		.io_source_bits_qos(s_axi_aw_bits_qos),
		.io_source_bits_region(s_axi_aw_bits_region),
		.io_sinks_0_ready(m_axi_0_aw_ready),
		.io_sinks_0_valid(m_axi_0_aw_valid),
		.io_sinks_0_bits_id(m_axi_0_aw_bits_id),
		.io_sinks_0_bits_addr(m_axi_0_aw_bits_addr),
		.io_sinks_0_bits_len(m_axi_0_aw_bits_len),
		.io_sinks_0_bits_size(m_axi_0_aw_bits_size),
		.io_sinks_0_bits_burst(m_axi_0_aw_bits_burst),
		.io_sinks_0_bits_lock(m_axi_0_aw_bits_lock),
		.io_sinks_0_bits_cache(m_axi_0_aw_bits_cache),
		.io_sinks_0_bits_prot(m_axi_0_aw_bits_prot),
		.io_sinks_0_bits_qos(m_axi_0_aw_bits_qos),
		.io_sinks_0_bits_region(m_axi_0_aw_bits_region),
		.io_sinks_1_ready(m_axi_1_aw_ready),
		.io_sinks_1_valid(m_axi_1_aw_valid),
		.io_sinks_1_bits_id(m_axi_1_aw_bits_id),
		.io_sinks_1_bits_addr(m_axi_1_aw_bits_addr),
		.io_sinks_1_bits_len(m_axi_1_aw_bits_len),
		.io_sinks_1_bits_size(m_axi_1_aw_bits_size),
		.io_sinks_1_bits_burst(m_axi_1_aw_bits_burst),
		.io_sinks_1_bits_lock(m_axi_1_aw_bits_lock),
		.io_sinks_1_bits_cache(m_axi_1_aw_bits_cache),
		.io_sinks_1_bits_prot(m_axi_1_aw_bits_prot),
		.io_sinks_1_bits_qos(m_axi_1_aw_bits_qos),
		.io_sinks_1_bits_region(m_axi_1_aw_bits_region),
		.io_sinks_2_ready(m_axi_2_aw_ready),
		.io_sinks_2_valid(m_axi_2_aw_valid),
		.io_sinks_2_bits_id(m_axi_2_aw_bits_id),
		.io_sinks_2_bits_addr(m_axi_2_aw_bits_addr),
		.io_sinks_2_bits_len(m_axi_2_aw_bits_len),
		.io_sinks_2_bits_size(m_axi_2_aw_bits_size),
		.io_sinks_2_bits_burst(m_axi_2_aw_bits_burst),
		.io_sinks_2_bits_lock(m_axi_2_aw_bits_lock),
		.io_sinks_2_bits_cache(m_axi_2_aw_bits_cache),
		.io_sinks_2_bits_prot(m_axi_2_aw_bits_prot),
		.io_sinks_2_bits_qos(m_axi_2_aw_bits_qos),
		.io_sinks_2_bits_region(m_axi_2_aw_bits_region),
		.io_sinks_3_ready(m_axi_3_aw_ready),
		.io_sinks_3_valid(m_axi_3_aw_valid),
		.io_sinks_3_bits_id(m_axi_3_aw_bits_id),
		.io_sinks_3_bits_addr(m_axi_3_aw_bits_addr),
		.io_sinks_3_bits_len(m_axi_3_aw_bits_len),
		.io_sinks_3_bits_size(m_axi_3_aw_bits_size),
		.io_sinks_3_bits_burst(m_axi_3_aw_bits_burst),
		.io_sinks_3_bits_lock(m_axi_3_aw_bits_lock),
		.io_sinks_3_bits_cache(m_axi_3_aw_bits_cache),
		.io_sinks_3_bits_prot(m_axi_3_aw_bits_prot),
		.io_sinks_3_bits_qos(m_axi_3_aw_bits_qos),
		.io_sinks_3_bits_region(m_axi_3_aw_bits_region),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(s_axi_aw_valid & ~write_eagerFork_regs_1),
		.io_select_bits(s_axi_aw_bits_id[1:0])
	);
	elasticDemux_10 write_demux_1(
		.io_source_ready(s_axi_w_ready),
		.io_source_valid(s_axi_w_valid),
		.io_source_bits_data(s_axi_w_bits_data),
		.io_source_bits_strb(s_axi_w_bits_strb),
		.io_source_bits_last(s_axi_w_bits_last),
		.io_sinks_0_ready(m_axi_0_w_ready),
		.io_sinks_0_valid(m_axi_0_w_valid),
		.io_sinks_0_bits_data(m_axi_0_w_bits_data),
		.io_sinks_0_bits_strb(m_axi_0_w_bits_strb),
		.io_sinks_0_bits_last(m_axi_0_w_bits_last),
		.io_sinks_1_ready(m_axi_1_w_ready),
		.io_sinks_1_valid(m_axi_1_w_valid),
		.io_sinks_1_bits_data(m_axi_1_w_bits_data),
		.io_sinks_1_bits_strb(m_axi_1_w_bits_strb),
		.io_sinks_1_bits_last(m_axi_1_w_bits_last),
		.io_sinks_2_ready(m_axi_2_w_ready),
		.io_sinks_2_valid(m_axi_2_w_valid),
		.io_sinks_2_bits_data(m_axi_2_w_bits_data),
		.io_sinks_2_bits_strb(m_axi_2_w_bits_strb),
		.io_sinks_2_bits_last(m_axi_2_w_bits_last),
		.io_sinks_3_ready(m_axi_3_w_ready),
		.io_sinks_3_valid(m_axi_3_w_valid),
		.io_sinks_3_bits_data(m_axi_3_w_bits_data),
		.io_sinks_3_bits_strb(m_axi_3_w_bits_strb),
		.io_sinks_3_bits_last(m_axi_3_w_bits_last),
		.io_select_ready(_write_demux_1_io_select_ready),
		.io_select_valid(_write_portQueue_io_deq_valid),
		.io_select_bits(_write_portQueue_io_deq_bits)
	);
	elasticBasicArbiter_3 write_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(m_axi_0_b_ready),
		.io_sources_0_valid(m_axi_0_b_valid),
		.io_sources_0_bits_id({m_axi_0_b_bits_id, 2'h0}),
		.io_sources_0_bits_resp(m_axi_0_b_bits_resp),
		.io_sources_1_ready(m_axi_1_b_ready),
		.io_sources_1_valid(m_axi_1_b_valid),
		.io_sources_1_bits_id({m_axi_1_b_bits_id, 2'h1}),
		.io_sources_1_bits_resp(m_axi_1_b_bits_resp),
		.io_sources_2_ready(m_axi_2_b_ready),
		.io_sources_2_valid(m_axi_2_b_valid),
		.io_sources_2_bits_id({m_axi_2_b_bits_id, 2'h2}),
		.io_sources_2_bits_resp(m_axi_2_b_bits_resp),
		.io_sources_3_ready(m_axi_3_b_ready),
		.io_sources_3_valid(m_axi_3_b_valid),
		.io_sources_3_bits_id({m_axi_3_b_bits_id, 2'h3}),
		.io_sources_3_bits_resp(m_axi_3_b_bits_resp),
		.io_sink_ready(s_axi_b_ready),
		.io_sink_valid(s_axi_b_valid),
		.io_sink_bits_id(s_axi_b_bits_id),
		.io_sink_bits_resp(s_axi_b_bits_resp)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
endmodule
module ram_4x1 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [1:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire R0_data;
	input [1:0] W0_addr;
	input W0_en;
	input W0_clk;
	input W0_data;
	reg Memory [0:3];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 1'bx);
endmodule
module Queue4_UInt1 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits;
	wire io_enq_ready_0;
	wire _ram_ext_R0_data;
	reg [1:0] enq_ptr_value;
	reg [1:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire io_deq_valid_0 = io_enq_valid | ~empty;
	wire do_deq = (~empty & io_deq_ready) & io_deq_valid_0;
	wire do_enq = (~(empty & io_deq_ready) & io_enq_ready_0) & io_enq_valid;
	assign io_enq_ready_0 = io_deq_ready | ~(ptr_match & maybe_full);
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 2'h0;
			deq_ptr_value <= 2'h0;
			maybe_full <= 1'h0;
		end
		else begin
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 2'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 2'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_4x1 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = io_enq_ready_0;
	assign io_deq_valid = io_deq_valid_0;
	assign io_deq_bits = (empty ? io_enq_bits : _ram_ext_R0_data);
endmodule
module IdSerialize (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_w_bits_last,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire s_axi_r_bits_id;
	output wire [255:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [255:0] s_axi_w_bits_data;
	input [31:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_w_bits_last;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_resp;
	wire _read_eagerFork_result_valid_T;
	wire [15:0] read_idx;
	wire [8:0] _read_len_T;
	wire _write_idQueue_io_enq_ready;
	wire _write_idQueue_io_deq_valid;
	wire _read_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _read_sinkBuffered__sinkBuffer_io_deq_valid;
	wire _read_sinkBuffered__sinkBuffer_io_deq_bits;
	wire _read_idQueue_io_enq_ready;
	reg read_generating_;
	reg [15:0] read_idx_;
	wire read_last = read_idx == ({7'h00, _read_len_T} - 16'h0001);
	assign _read_len_T = {1'h0, s_axi_ar_bits_len} + 9'h001;
	wire _read_T = (s_axi_ar_valid & _read_eagerFork_result_valid_T) & _read_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _read_T_2 = _read_len_T == 9'h001;
	assign read_idx = (read_generating_ ? read_idx_ : 16'h0000);
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	assign _read_eagerFork_result_valid_T = ~read_eagerFork_regs_0;
	wire read_eagerFork_s_axi_ar_ready_qual1_0 = (_read_T & (read_generating_ ? read_last : ~(|_read_len_T) | _read_T_2)) | read_eagerFork_regs_0;
	wire read_eagerFork_s_axi_ar_ready_qual1_1 = m_axi_ar_ready | read_eagerFork_regs_1;
	wire s_axi_ar_ready_0 = read_eagerFork_s_axi_ar_ready_qual1_0 & read_eagerFork_s_axi_ar_ready_qual1_1;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	wire write_eagerFork_s_axi_aw_ready_qual1_0 = _write_idQueue_io_enq_ready | write_eagerFork_regs_0;
	wire write_eagerFork_s_axi_aw_ready_qual1_1 = m_axi_aw_ready | write_eagerFork_regs_1;
	wire s_axi_aw_ready_0 = write_eagerFork_s_axi_aw_ready_qual1_0 & write_eagerFork_s_axi_aw_ready_qual1_1;
	wire write_mkJoin_allValid = _write_idQueue_io_deq_valid & m_axi_b_valid;
	wire write_mkJoin_fire = s_axi_b_ready & write_mkJoin_allValid;
	always @(posedge clock)
		if (reset) begin
			read_generating_ <= 1'h0;
			read_idx_ <= 16'h0000;
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
		end
		else begin
			if (_read_T) begin
				if (read_generating_) begin
					read_generating_ <= ~read_last & read_generating_;
					read_idx_ <= read_idx_ + 16'h0001;
				end
				else begin : sv2v_autoblock_1
					reg _GEN;
					_GEN = ~(|_read_len_T) | _read_T_2;
					read_generating_ <= ~_GEN | read_generating_;
					if (~_GEN)
						read_idx_ <= 16'h0001;
				end
			end
			read_eagerFork_regs_0 <= (read_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_eagerFork_regs_1 <= (read_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			write_eagerFork_regs_0 <= (write_eagerFork_s_axi_aw_ready_qual1_0 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_s_axi_aw_ready_qual1_1 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
		end
	Queue4_UInt1 read_idQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_idQueue_io_enq_ready),
		.io_enq_valid(_read_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_enq_bits(_read_sinkBuffered__sinkBuffer_io_deq_bits),
		.io_deq_ready(s_axi_r_ready & m_axi_r_valid),
		.io_deq_valid(),
		.io_deq_bits(s_axi_r_bits_id)
	);
	Queue2_UInt1 read_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(_read_T & (read_generating_ | (|_read_len_T))),
		.io_enq_bits(s_axi_ar_bits_id),
		.io_deq_ready(_read_idQueue_io_enq_ready),
		.io_deq_valid(_read_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_deq_bits(_read_sinkBuffered__sinkBuffer_io_deq_bits)
	);
	Queue4_UInt1 write_idQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_idQueue_io_enq_ready),
		.io_enq_valid(s_axi_aw_valid & ~write_eagerFork_regs_0),
		.io_enq_bits(s_axi_aw_bits_id),
		.io_deq_ready(write_mkJoin_fire),
		.io_deq_valid(_write_idQueue_io_deq_valid),
		.io_deq_bits(s_axi_b_bits_id)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_r_valid = m_axi_r_valid;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_r_bits_resp = m_axi_r_bits_resp;
	assign s_axi_r_bits_last = m_axi_r_bits_last;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = write_mkJoin_allValid;
	assign s_axi_b_bits_resp = m_axi_b_bits_resp;
	assign m_axi_ar_valid = s_axi_ar_valid & ~read_eagerFork_regs_1;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = s_axi_ar_bits_len;
	assign m_axi_ar_bits_size = s_axi_ar_bits_size;
	assign m_axi_ar_bits_burst = s_axi_ar_bits_burst;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
	assign m_axi_r_ready = s_axi_r_ready;
	assign m_axi_aw_valid = s_axi_aw_valid & ~write_eagerFork_regs_1;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_len = s_axi_aw_bits_len;
	assign m_axi_aw_bits_size = s_axi_aw_bits_size;
	assign m_axi_aw_bits_burst = s_axi_aw_bits_burst;
	assign m_axi_aw_bits_lock = s_axi_aw_bits_lock;
	assign m_axi_aw_bits_cache = s_axi_aw_bits_cache;
	assign m_axi_aw_bits_prot = s_axi_aw_bits_prot;
	assign m_axi_aw_bits_qos = s_axi_aw_bits_qos;
	assign m_axi_aw_bits_region = s_axi_aw_bits_region;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_strb = s_axi_w_bits_strb;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
	assign m_axi_b_ready = write_mkJoin_fire;
endmodule
module elasticBasicArbiter_4 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_addr,
	io_sources_0_bits_len,
	io_sources_0_bits_size,
	io_sources_0_bits_burst,
	io_sources_0_bits_lock,
	io_sources_0_bits_cache,
	io_sources_0_bits_prot,
	io_sources_0_bits_qos,
	io_sources_0_bits_region,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_addr,
	io_sources_1_bits_len,
	io_sources_1_bits_size,
	io_sources_1_bits_burst,
	io_sources_1_bits_lock,
	io_sources_1_bits_cache,
	io_sources_1_bits_prot,
	io_sources_1_bits_qos,
	io_sources_1_bits_region,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_addr,
	io_sources_2_bits_len,
	io_sources_2_bits_size,
	io_sources_2_bits_burst,
	io_sources_2_bits_lock,
	io_sources_2_bits_cache,
	io_sources_2_bits_prot,
	io_sources_2_bits_qos,
	io_sources_2_bits_region,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_addr,
	io_sources_3_bits_len,
	io_sources_3_bits_size,
	io_sources_3_bits_burst,
	io_sources_3_bits_lock,
	io_sources_3_bits_cache,
	io_sources_3_bits_prot,
	io_sources_3_bits_qos,
	io_sources_3_bits_region,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_addr,
	io_sink_bits_len,
	io_sink_bits_size,
	io_sink_bits_burst,
	io_sink_bits_lock,
	io_sink_bits_cache,
	io_sink_bits_prot,
	io_sink_bits_qos,
	io_sink_bits_region
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits_addr;
	input [7:0] io_sources_0_bits_len;
	input [2:0] io_sources_0_bits_size;
	input [1:0] io_sources_0_bits_burst;
	input io_sources_0_bits_lock;
	input [3:0] io_sources_0_bits_cache;
	input [2:0] io_sources_0_bits_prot;
	input [3:0] io_sources_0_bits_qos;
	input [3:0] io_sources_0_bits_region;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [63:0] io_sources_1_bits_addr;
	input [7:0] io_sources_1_bits_len;
	input [2:0] io_sources_1_bits_size;
	input [1:0] io_sources_1_bits_burst;
	input io_sources_1_bits_lock;
	input [3:0] io_sources_1_bits_cache;
	input [2:0] io_sources_1_bits_prot;
	input [3:0] io_sources_1_bits_qos;
	input [3:0] io_sources_1_bits_region;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [63:0] io_sources_2_bits_addr;
	input [7:0] io_sources_2_bits_len;
	input [2:0] io_sources_2_bits_size;
	input [1:0] io_sources_2_bits_burst;
	input io_sources_2_bits_lock;
	input [3:0] io_sources_2_bits_cache;
	input [2:0] io_sources_2_bits_prot;
	input [3:0] io_sources_2_bits_qos;
	input [3:0] io_sources_2_bits_region;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [63:0] io_sources_3_bits_addr;
	input [7:0] io_sources_3_bits_len;
	input [2:0] io_sources_3_bits_size;
	input [1:0] io_sources_3_bits_burst;
	input io_sources_3_bits_lock;
	input [3:0] io_sources_3_bits_cache;
	input [2:0] io_sources_3_bits_prot;
	input [3:0] io_sources_3_bits_qos;
	input [3:0] io_sources_3_bits_region;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_id;
	output wire [63:0] io_sink_bits_addr;
	output wire [7:0] io_sink_bits_len;
	output wire [2:0] io_sink_bits_size;
	output wire [1:0] io_sink_bits_burst;
	output wire io_sink_bits_lock;
	output wire [3:0] io_sink_bits_cache;
	output wire [2:0] io_sink_bits_prot;
	output wire [3:0] io_sink_bits_qos;
	output wire [3:0] io_sink_bits_region;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	wire [7:0] _GEN = 8'he4;
	reg [1:0] chooser_lastChoice;
	wire _chooser_rrChoice_T_4 = (chooser_lastChoice == 2'h0) & io_sources_1_valid;
	wire [1:0] _chooser_rrChoice_T_9 = {1'h1, ~(~chooser_lastChoice[1] & io_sources_2_valid)};
	wire [1:0] chooser_rrChoice = (&chooser_lastChoice ? 2'h0 : (_chooser_rrChoice_T_4 ? 2'h1 : _chooser_rrChoice_T_9));
	wire [1:0] chooser_priorityChoice = (io_sources_0_valid ? 2'h0 : (io_sources_1_valid ? 2'h1 : {1'h1, ~io_sources_2_valid}));
	wire [3:0] _GEN_0 = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1:0] choice = (_GEN_0[chooser_rrChoice] ? chooser_rrChoice : chooser_priorityChoice);
	wire [255:0] _GEN_1 = {io_sources_3_bits_addr, io_sources_2_bits_addr, io_sources_1_bits_addr, io_sources_0_bits_addr};
	wire [31:0] _GEN_2 = {io_sources_3_bits_len, io_sources_2_bits_len, io_sources_1_bits_len, io_sources_0_bits_len};
	wire [11:0] _GEN_3 = {io_sources_3_bits_size, io_sources_2_bits_size, io_sources_1_bits_size, io_sources_0_bits_size};
	wire [7:0] _GEN_4 = {io_sources_3_bits_burst, io_sources_2_bits_burst, io_sources_1_bits_burst, io_sources_0_bits_burst};
	wire [3:0] _GEN_5 = {io_sources_3_bits_lock, io_sources_2_bits_lock, io_sources_1_bits_lock, io_sources_0_bits_lock};
	wire [15:0] _GEN_6 = {io_sources_3_bits_cache, io_sources_2_bits_cache, io_sources_1_bits_cache, io_sources_0_bits_cache};
	wire [11:0] _GEN_7 = {io_sources_3_bits_prot, io_sources_2_bits_prot, io_sources_1_bits_prot, io_sources_0_bits_prot};
	wire [15:0] _GEN_8 = {io_sources_3_bits_qos, io_sources_2_bits_qos, io_sources_1_bits_qos, io_sources_0_bits_qos};
	wire [15:0] _GEN_9 = {io_sources_3_bits_region, io_sources_2_bits_region, io_sources_1_bits_region, io_sources_0_bits_region};
	wire fire = (_GEN_0[choice] & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 2'h0;
		else if (fire) begin
			if (_GEN_0[chooser_rrChoice]) begin
				if (&chooser_lastChoice)
					chooser_lastChoice <= 2'h0;
				else if (_chooser_rrChoice_T_4)
					chooser_lastChoice <= 2'h1;
				else
					chooser_lastChoice <= _chooser_rrChoice_T_9;
			end
			else
				chooser_lastChoice <= chooser_priorityChoice;
		end
	Queue2_ReadAddressChannel_2 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN[choice * 2+:2]),
		.io_enq_bits_addr(_GEN_1[choice * 64+:64]),
		.io_enq_bits_len(_GEN_2[choice * 8+:8]),
		.io_enq_bits_size(_GEN_3[choice * 3+:3]),
		.io_enq_bits_burst(_GEN_4[choice * 2+:2]),
		.io_enq_bits_lock(_GEN_5[choice]),
		.io_enq_bits_cache(_GEN_6[choice * 4+:4]),
		.io_enq_bits_prot(_GEN_7[choice * 3+:3]),
		.io_enq_bits_qos(_GEN_8[choice * 4+:4]),
		.io_enq_bits_region(_GEN_9[choice * 4+:4]),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_addr(io_sink_bits_addr),
		.io_deq_bits_len(io_sink_bits_len),
		.io_deq_bits_size(io_sink_bits_size),
		.io_deq_bits_burst(io_sink_bits_burst),
		.io_deq_bits_lock(io_sink_bits_lock),
		.io_deq_bits_cache(io_sink_bits_cache),
		.io_deq_bits_prot(io_sink_bits_prot),
		.io_deq_bits_qos(io_sink_bits_qos),
		.io_deq_bits_region(io_sink_bits_region)
	);
	Queue2_UInt2 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & (choice == 2'h0);
	assign io_sources_1_ready = fire & (choice == 2'h1);
	assign io_sources_2_ready = fire & (choice == 2'h2);
	assign io_sources_3_ready = fire & (&choice);
endmodule
module elasticDemux_11 (
	io_source_ready,
	io_source_valid,
	io_source_bits_data,
	io_source_bits_resp,
	io_source_bits_last,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_data,
	io_sinks_0_bits_resp,
	io_sinks_0_bits_last,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_data,
	io_sinks_1_bits_resp,
	io_sinks_1_bits_last,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_data,
	io_sinks_2_bits_resp,
	io_sinks_2_bits_last,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_data,
	io_sinks_3_bits_resp,
	io_sinks_3_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [255:0] io_source_bits_data;
	input [1:0] io_source_bits_resp;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [255:0] io_sinks_0_bits_data;
	output wire [1:0] io_sinks_0_bits_resp;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [255:0] io_sinks_1_bits_data;
	output wire [1:0] io_sinks_1_bits_resp;
	output wire io_sinks_1_bits_last;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [255:0] io_sinks_2_bits_data;
	output wire [1:0] io_sinks_2_bits_resp;
	output wire io_sinks_2_bits_last;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [255:0] io_sinks_3_bits_data;
	output wire [1:0] io_sinks_3_bits_resp;
	output wire io_sinks_3_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_0_bits_last = io_source_bits_last;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_data = io_source_bits_data;
	assign io_sinks_1_bits_resp = io_source_bits_resp;
	assign io_sinks_1_bits_last = io_source_bits_last;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_data = io_source_bits_data;
	assign io_sinks_2_bits_resp = io_source_bits_resp;
	assign io_sinks_2_bits_last = io_source_bits_last;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_data = io_source_bits_data;
	assign io_sinks_3_bits_resp = io_source_bits_resp;
	assign io_sinks_3_bits_last = io_source_bits_last;
	assign io_select_ready = fire;
endmodule
module ram_32x2 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [4:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [1:0] R0_data;
	input [4:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [1:0] W0_data;
	reg [1:0] Memory [0:31];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 2'bxx);
endmodule
module Queue32_UInt2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits;
	wire io_enq_ready_0;
	wire [1:0] _ram_ext_R0_data;
	reg [4:0] enq_ptr_value;
	reg [4:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire io_deq_valid_0 = io_enq_valid | ~empty;
	wire do_deq = (~empty & io_deq_ready) & io_deq_valid_0;
	wire do_enq = (~(empty & io_deq_ready) & io_enq_ready_0) & io_enq_valid;
	assign io_enq_ready_0 = io_deq_ready | ~(ptr_match & maybe_full);
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 5'h00;
			deq_ptr_value <= 5'h00;
			maybe_full <= 1'h0;
		end
		else begin
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 5'h01;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 5'h01;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_32x2 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = io_enq_ready_0;
	assign io_deq_valid = io_deq_valid_0;
	assign io_deq_bits = (empty ? io_enq_bits : _ram_ext_R0_data);
endmodule
module Queue2_WriteAddressChannel_2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [94:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x95 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[1:0];
	assign io_deq_bits_addr = _ram_ext_R0_data[65:2];
	assign io_deq_bits_len = _ram_ext_R0_data[73:66];
	assign io_deq_bits_size = _ram_ext_R0_data[76:74];
	assign io_deq_bits_burst = _ram_ext_R0_data[78:77];
	assign io_deq_bits_lock = _ram_ext_R0_data[79];
	assign io_deq_bits_cache = _ram_ext_R0_data[83:80];
	assign io_deq_bits_prot = _ram_ext_R0_data[86:84];
	assign io_deq_bits_qos = _ram_ext_R0_data[90:87];
	assign io_deq_bits_region = _ram_ext_R0_data[94:91];
endmodule
module elasticBasicArbiter_5 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_addr,
	io_sources_0_bits_len,
	io_sources_0_bits_size,
	io_sources_0_bits_burst,
	io_sources_0_bits_lock,
	io_sources_0_bits_cache,
	io_sources_0_bits_prot,
	io_sources_0_bits_qos,
	io_sources_0_bits_region,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_addr,
	io_sources_1_bits_len,
	io_sources_1_bits_size,
	io_sources_1_bits_burst,
	io_sources_1_bits_lock,
	io_sources_1_bits_cache,
	io_sources_1_bits_prot,
	io_sources_1_bits_qos,
	io_sources_1_bits_region,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_addr,
	io_sources_2_bits_len,
	io_sources_2_bits_size,
	io_sources_2_bits_burst,
	io_sources_2_bits_lock,
	io_sources_2_bits_cache,
	io_sources_2_bits_prot,
	io_sources_2_bits_qos,
	io_sources_2_bits_region,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_addr,
	io_sources_3_bits_len,
	io_sources_3_bits_size,
	io_sources_3_bits_burst,
	io_sources_3_bits_lock,
	io_sources_3_bits_cache,
	io_sources_3_bits_prot,
	io_sources_3_bits_qos,
	io_sources_3_bits_region,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_addr,
	io_sink_bits_len,
	io_sink_bits_size,
	io_sink_bits_burst,
	io_sink_bits_lock,
	io_sink_bits_cache,
	io_sink_bits_prot,
	io_sink_bits_qos,
	io_sink_bits_region,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits_addr;
	input [7:0] io_sources_0_bits_len;
	input [2:0] io_sources_0_bits_size;
	input [1:0] io_sources_0_bits_burst;
	input io_sources_0_bits_lock;
	input [3:0] io_sources_0_bits_cache;
	input [2:0] io_sources_0_bits_prot;
	input [3:0] io_sources_0_bits_qos;
	input [3:0] io_sources_0_bits_region;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [63:0] io_sources_1_bits_addr;
	input [7:0] io_sources_1_bits_len;
	input [2:0] io_sources_1_bits_size;
	input [1:0] io_sources_1_bits_burst;
	input io_sources_1_bits_lock;
	input [3:0] io_sources_1_bits_cache;
	input [2:0] io_sources_1_bits_prot;
	input [3:0] io_sources_1_bits_qos;
	input [3:0] io_sources_1_bits_region;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [63:0] io_sources_2_bits_addr;
	input [7:0] io_sources_2_bits_len;
	input [2:0] io_sources_2_bits_size;
	input [1:0] io_sources_2_bits_burst;
	input io_sources_2_bits_lock;
	input [3:0] io_sources_2_bits_cache;
	input [2:0] io_sources_2_bits_prot;
	input [3:0] io_sources_2_bits_qos;
	input [3:0] io_sources_2_bits_region;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [63:0] io_sources_3_bits_addr;
	input [7:0] io_sources_3_bits_len;
	input [2:0] io_sources_3_bits_size;
	input [1:0] io_sources_3_bits_burst;
	input io_sources_3_bits_lock;
	input [3:0] io_sources_3_bits_cache;
	input [2:0] io_sources_3_bits_prot;
	input [3:0] io_sources_3_bits_qos;
	input [3:0] io_sources_3_bits_region;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_id;
	output wire [63:0] io_sink_bits_addr;
	output wire [7:0] io_sink_bits_len;
	output wire [2:0] io_sink_bits_size;
	output wire [1:0] io_sink_bits_burst;
	output wire io_sink_bits_lock;
	output wire [3:0] io_sink_bits_cache;
	output wire [2:0] io_sink_bits_prot;
	output wire [3:0] io_sink_bits_qos;
	output wire [3:0] io_sink_bits_region;
	input io_select_ready;
	output wire io_select_valid;
	output wire [1:0] io_select_bits;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	wire [7:0] _GEN = 8'he4;
	reg [1:0] chooser_lastChoice;
	wire _chooser_rrChoice_T_4 = (chooser_lastChoice == 2'h0) & io_sources_1_valid;
	wire [1:0] _chooser_rrChoice_T_9 = {1'h1, ~(~chooser_lastChoice[1] & io_sources_2_valid)};
	wire [1:0] chooser_rrChoice = (&chooser_lastChoice ? 2'h0 : (_chooser_rrChoice_T_4 ? 2'h1 : _chooser_rrChoice_T_9));
	wire [1:0] chooser_priorityChoice = (io_sources_0_valid ? 2'h0 : (io_sources_1_valid ? 2'h1 : {1'h1, ~io_sources_2_valid}));
	wire [3:0] _GEN_0 = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1:0] choice = (_GEN_0[chooser_rrChoice] ? chooser_rrChoice : chooser_priorityChoice);
	wire [255:0] _GEN_1 = {io_sources_3_bits_addr, io_sources_2_bits_addr, io_sources_1_bits_addr, io_sources_0_bits_addr};
	wire [31:0] _GEN_2 = {io_sources_3_bits_len, io_sources_2_bits_len, io_sources_1_bits_len, io_sources_0_bits_len};
	wire [11:0] _GEN_3 = {io_sources_3_bits_size, io_sources_2_bits_size, io_sources_1_bits_size, io_sources_0_bits_size};
	wire [7:0] _GEN_4 = {io_sources_3_bits_burst, io_sources_2_bits_burst, io_sources_1_bits_burst, io_sources_0_bits_burst};
	wire [3:0] _GEN_5 = {io_sources_3_bits_lock, io_sources_2_bits_lock, io_sources_1_bits_lock, io_sources_0_bits_lock};
	wire [15:0] _GEN_6 = {io_sources_3_bits_cache, io_sources_2_bits_cache, io_sources_1_bits_cache, io_sources_0_bits_cache};
	wire [11:0] _GEN_7 = {io_sources_3_bits_prot, io_sources_2_bits_prot, io_sources_1_bits_prot, io_sources_0_bits_prot};
	wire [15:0] _GEN_8 = {io_sources_3_bits_qos, io_sources_2_bits_qos, io_sources_1_bits_qos, io_sources_0_bits_qos};
	wire [15:0] _GEN_9 = {io_sources_3_bits_region, io_sources_2_bits_region, io_sources_1_bits_region, io_sources_0_bits_region};
	wire fire = (_GEN_0[choice] & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 2'h0;
		else if (fire) begin
			if (_GEN_0[chooser_rrChoice]) begin
				if (&chooser_lastChoice)
					chooser_lastChoice <= 2'h0;
				else if (_chooser_rrChoice_T_4)
					chooser_lastChoice <= 2'h1;
				else
					chooser_lastChoice <= _chooser_rrChoice_T_9;
			end
			else
				chooser_lastChoice <= chooser_priorityChoice;
		end
	Queue2_WriteAddressChannel_2 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN[choice * 2+:2]),
		.io_enq_bits_addr(_GEN_1[choice * 64+:64]),
		.io_enq_bits_len(_GEN_2[choice * 8+:8]),
		.io_enq_bits_size(_GEN_3[choice * 3+:3]),
		.io_enq_bits_burst(_GEN_4[choice * 2+:2]),
		.io_enq_bits_lock(_GEN_5[choice]),
		.io_enq_bits_cache(_GEN_6[choice * 4+:4]),
		.io_enq_bits_prot(_GEN_7[choice * 3+:3]),
		.io_enq_bits_qos(_GEN_8[choice * 4+:4]),
		.io_enq_bits_region(_GEN_9[choice * 4+:4]),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_addr(io_sink_bits_addr),
		.io_deq_bits_len(io_sink_bits_len),
		.io_deq_bits_size(io_sink_bits_size),
		.io_deq_bits_burst(io_sink_bits_burst),
		.io_deq_bits_lock(io_sink_bits_lock),
		.io_deq_bits_cache(io_sink_bits_cache),
		.io_deq_bits_prot(io_sink_bits_prot),
		.io_deq_bits_qos(io_sink_bits_qos),
		.io_deq_bits_region(io_sink_bits_region)
	);
	Queue2_UInt2 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(io_select_ready),
		.io_deq_valid(io_select_valid),
		.io_deq_bits(io_select_bits)
	);
	assign io_sources_0_ready = fire & (choice == 2'h0);
	assign io_sources_1_ready = fire & (choice == 2'h1);
	assign io_sources_2_ready = fire & (choice == 2'h2);
	assign io_sources_3_ready = fire & (&choice);
endmodule
module elasticMux_2 (
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_data,
	io_sources_0_bits_strb,
	io_sources_0_bits_last,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_data,
	io_sources_1_bits_strb,
	io_sources_1_bits_last,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_data,
	io_sources_2_bits_strb,
	io_sources_2_bits_last,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_data,
	io_sources_3_bits_strb,
	io_sources_3_bits_last,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_data,
	io_sink_bits_strb,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [255:0] io_sources_0_bits_data;
	input [31:0] io_sources_0_bits_strb;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [255:0] io_sources_1_bits_data;
	input [31:0] io_sources_1_bits_strb;
	input io_sources_1_bits_last;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [255:0] io_sources_2_bits_data;
	input [31:0] io_sources_2_bits_strb;
	input io_sources_2_bits_last;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [255:0] io_sources_3_bits_data;
	input [31:0] io_sources_3_bits_strb;
	input io_sources_3_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [255:0] io_sink_bits_data;
	output wire [31:0] io_sink_bits_strb;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire [3:0] _GEN = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1023:0] _GEN_0 = {io_sources_3_bits_data, io_sources_2_bits_data, io_sources_1_bits_data, io_sources_0_bits_data};
	wire [127:0] _GEN_1 = {io_sources_3_bits_strb, io_sources_2_bits_strb, io_sources_1_bits_strb, io_sources_0_bits_strb};
	wire [3:0] _GEN_2 = {io_sources_3_bits_last, io_sources_2_bits_last, io_sources_1_bits_last, io_sources_0_bits_last};
	wire valid = io_select_valid & _GEN[io_select_bits];
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & (io_select_bits == 2'h0);
	assign io_sources_1_ready = fire & (io_select_bits == 2'h1);
	assign io_sources_2_ready = fire & (io_select_bits == 2'h2);
	assign io_sources_3_ready = fire & (&io_select_bits);
	assign io_sink_valid = valid;
	assign io_sink_bits_data = _GEN_0[io_select_bits * 256+:256];
	assign io_sink_bits_strb = _GEN_1[io_select_bits * 32+:32];
	assign io_select_ready = fire & _GEN_2[io_select_bits];
endmodule
module elasticDemux_12 (
	io_source_ready,
	io_source_valid,
	io_source_bits_id,
	io_source_bits_resp,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_id,
	io_sinks_0_bits_resp,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_id,
	io_sinks_1_bits_resp,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_id,
	io_sinks_2_bits_resp,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_id,
	io_sinks_3_bits_resp,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [1:0] io_source_bits_id;
	input [1:0] io_source_bits_resp;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [1:0] io_sinks_0_bits_id;
	output wire [1:0] io_sinks_0_bits_resp;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [1:0] io_sinks_1_bits_id;
	output wire [1:0] io_sinks_1_bits_resp;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [1:0] io_sinks_2_bits_id;
	output wire [1:0] io_sinks_2_bits_resp;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [1:0] io_sinks_3_bits_id;
	output wire [1:0] io_sinks_3_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_id = io_source_bits_id;
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_id = io_source_bits_id;
	assign io_sinks_1_bits_resp = io_source_bits_resp;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_id = io_source_bits_id;
	assign io_sinks_2_bits_resp = io_source_bits_resp;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_id = io_source_bits_id;
	assign io_sinks_3_bits_resp = io_source_bits_resp;
	assign io_select_ready = fire;
endmodule
module IdMux (
	clock,
	reset,
	s_axi_0_ar_ready,
	s_axi_0_ar_valid,
	s_axi_0_ar_bits_addr,
	s_axi_0_ar_bits_len,
	s_axi_0_ar_bits_size,
	s_axi_0_ar_bits_burst,
	s_axi_0_ar_bits_lock,
	s_axi_0_ar_bits_cache,
	s_axi_0_ar_bits_prot,
	s_axi_0_ar_bits_qos,
	s_axi_0_ar_bits_region,
	s_axi_0_r_ready,
	s_axi_0_r_valid,
	s_axi_0_r_bits_data,
	s_axi_0_r_bits_resp,
	s_axi_0_r_bits_last,
	s_axi_0_aw_ready,
	s_axi_0_aw_valid,
	s_axi_0_aw_bits_addr,
	s_axi_0_aw_bits_len,
	s_axi_0_aw_bits_size,
	s_axi_0_aw_bits_burst,
	s_axi_0_aw_bits_lock,
	s_axi_0_aw_bits_cache,
	s_axi_0_aw_bits_prot,
	s_axi_0_aw_bits_qos,
	s_axi_0_aw_bits_region,
	s_axi_0_w_ready,
	s_axi_0_w_valid,
	s_axi_0_w_bits_data,
	s_axi_0_w_bits_strb,
	s_axi_0_w_bits_last,
	s_axi_0_b_ready,
	s_axi_0_b_valid,
	s_axi_0_b_bits_resp,
	s_axi_1_ar_ready,
	s_axi_1_ar_valid,
	s_axi_1_ar_bits_addr,
	s_axi_1_ar_bits_len,
	s_axi_1_ar_bits_size,
	s_axi_1_ar_bits_burst,
	s_axi_1_ar_bits_lock,
	s_axi_1_ar_bits_cache,
	s_axi_1_ar_bits_prot,
	s_axi_1_ar_bits_qos,
	s_axi_1_ar_bits_region,
	s_axi_1_r_ready,
	s_axi_1_r_valid,
	s_axi_1_r_bits_data,
	s_axi_1_r_bits_resp,
	s_axi_1_r_bits_last,
	s_axi_1_aw_ready,
	s_axi_1_aw_valid,
	s_axi_1_aw_bits_addr,
	s_axi_1_aw_bits_len,
	s_axi_1_aw_bits_size,
	s_axi_1_aw_bits_burst,
	s_axi_1_aw_bits_lock,
	s_axi_1_aw_bits_cache,
	s_axi_1_aw_bits_prot,
	s_axi_1_aw_bits_qos,
	s_axi_1_aw_bits_region,
	s_axi_1_w_ready,
	s_axi_1_w_valid,
	s_axi_1_w_bits_data,
	s_axi_1_w_bits_strb,
	s_axi_1_w_bits_last,
	s_axi_1_b_ready,
	s_axi_1_b_valid,
	s_axi_1_b_bits_resp,
	s_axi_2_ar_ready,
	s_axi_2_ar_valid,
	s_axi_2_ar_bits_addr,
	s_axi_2_ar_bits_len,
	s_axi_2_ar_bits_size,
	s_axi_2_ar_bits_burst,
	s_axi_2_ar_bits_lock,
	s_axi_2_ar_bits_cache,
	s_axi_2_ar_bits_prot,
	s_axi_2_ar_bits_qos,
	s_axi_2_ar_bits_region,
	s_axi_2_r_ready,
	s_axi_2_r_valid,
	s_axi_2_r_bits_data,
	s_axi_2_r_bits_resp,
	s_axi_2_r_bits_last,
	s_axi_2_aw_ready,
	s_axi_2_aw_valid,
	s_axi_2_aw_bits_addr,
	s_axi_2_aw_bits_len,
	s_axi_2_aw_bits_size,
	s_axi_2_aw_bits_burst,
	s_axi_2_aw_bits_lock,
	s_axi_2_aw_bits_cache,
	s_axi_2_aw_bits_prot,
	s_axi_2_aw_bits_qos,
	s_axi_2_aw_bits_region,
	s_axi_2_w_ready,
	s_axi_2_w_valid,
	s_axi_2_w_bits_data,
	s_axi_2_w_bits_strb,
	s_axi_2_w_bits_last,
	s_axi_2_b_ready,
	s_axi_2_b_valid,
	s_axi_2_b_bits_resp,
	s_axi_3_ar_ready,
	s_axi_3_ar_valid,
	s_axi_3_ar_bits_addr,
	s_axi_3_ar_bits_len,
	s_axi_3_ar_bits_size,
	s_axi_3_ar_bits_burst,
	s_axi_3_ar_bits_lock,
	s_axi_3_ar_bits_cache,
	s_axi_3_ar_bits_prot,
	s_axi_3_ar_bits_qos,
	s_axi_3_ar_bits_region,
	s_axi_3_r_ready,
	s_axi_3_r_valid,
	s_axi_3_r_bits_data,
	s_axi_3_r_bits_resp,
	s_axi_3_r_bits_last,
	s_axi_3_aw_ready,
	s_axi_3_aw_valid,
	s_axi_3_aw_bits_addr,
	s_axi_3_aw_bits_len,
	s_axi_3_aw_bits_size,
	s_axi_3_aw_bits_burst,
	s_axi_3_aw_bits_lock,
	s_axi_3_aw_bits_cache,
	s_axi_3_aw_bits_prot,
	s_axi_3_aw_bits_qos,
	s_axi_3_aw_bits_region,
	s_axi_3_w_ready,
	s_axi_3_w_valid,
	s_axi_3_w_bits_data,
	s_axi_3_w_bits_strb,
	s_axi_3_w_bits_last,
	s_axi_3_b_ready,
	s_axi_3_b_valid,
	s_axi_3_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_0_ar_ready;
	input s_axi_0_ar_valid;
	input [63:0] s_axi_0_ar_bits_addr;
	input [7:0] s_axi_0_ar_bits_len;
	input [2:0] s_axi_0_ar_bits_size;
	input [1:0] s_axi_0_ar_bits_burst;
	input s_axi_0_ar_bits_lock;
	input [3:0] s_axi_0_ar_bits_cache;
	input [2:0] s_axi_0_ar_bits_prot;
	input [3:0] s_axi_0_ar_bits_qos;
	input [3:0] s_axi_0_ar_bits_region;
	input s_axi_0_r_ready;
	output wire s_axi_0_r_valid;
	output wire [255:0] s_axi_0_r_bits_data;
	output wire [1:0] s_axi_0_r_bits_resp;
	output wire s_axi_0_r_bits_last;
	output wire s_axi_0_aw_ready;
	input s_axi_0_aw_valid;
	input [63:0] s_axi_0_aw_bits_addr;
	input [7:0] s_axi_0_aw_bits_len;
	input [2:0] s_axi_0_aw_bits_size;
	input [1:0] s_axi_0_aw_bits_burst;
	input s_axi_0_aw_bits_lock;
	input [3:0] s_axi_0_aw_bits_cache;
	input [2:0] s_axi_0_aw_bits_prot;
	input [3:0] s_axi_0_aw_bits_qos;
	input [3:0] s_axi_0_aw_bits_region;
	output wire s_axi_0_w_ready;
	input s_axi_0_w_valid;
	input [255:0] s_axi_0_w_bits_data;
	input [31:0] s_axi_0_w_bits_strb;
	input s_axi_0_w_bits_last;
	input s_axi_0_b_ready;
	output wire s_axi_0_b_valid;
	output wire [1:0] s_axi_0_b_bits_resp;
	output wire s_axi_1_ar_ready;
	input s_axi_1_ar_valid;
	input [63:0] s_axi_1_ar_bits_addr;
	input [7:0] s_axi_1_ar_bits_len;
	input [2:0] s_axi_1_ar_bits_size;
	input [1:0] s_axi_1_ar_bits_burst;
	input s_axi_1_ar_bits_lock;
	input [3:0] s_axi_1_ar_bits_cache;
	input [2:0] s_axi_1_ar_bits_prot;
	input [3:0] s_axi_1_ar_bits_qos;
	input [3:0] s_axi_1_ar_bits_region;
	input s_axi_1_r_ready;
	output wire s_axi_1_r_valid;
	output wire [255:0] s_axi_1_r_bits_data;
	output wire [1:0] s_axi_1_r_bits_resp;
	output wire s_axi_1_r_bits_last;
	output wire s_axi_1_aw_ready;
	input s_axi_1_aw_valid;
	input [63:0] s_axi_1_aw_bits_addr;
	input [7:0] s_axi_1_aw_bits_len;
	input [2:0] s_axi_1_aw_bits_size;
	input [1:0] s_axi_1_aw_bits_burst;
	input s_axi_1_aw_bits_lock;
	input [3:0] s_axi_1_aw_bits_cache;
	input [2:0] s_axi_1_aw_bits_prot;
	input [3:0] s_axi_1_aw_bits_qos;
	input [3:0] s_axi_1_aw_bits_region;
	output wire s_axi_1_w_ready;
	input s_axi_1_w_valid;
	input [255:0] s_axi_1_w_bits_data;
	input [31:0] s_axi_1_w_bits_strb;
	input s_axi_1_w_bits_last;
	input s_axi_1_b_ready;
	output wire s_axi_1_b_valid;
	output wire [1:0] s_axi_1_b_bits_resp;
	output wire s_axi_2_ar_ready;
	input s_axi_2_ar_valid;
	input [63:0] s_axi_2_ar_bits_addr;
	input [7:0] s_axi_2_ar_bits_len;
	input [2:0] s_axi_2_ar_bits_size;
	input [1:0] s_axi_2_ar_bits_burst;
	input s_axi_2_ar_bits_lock;
	input [3:0] s_axi_2_ar_bits_cache;
	input [2:0] s_axi_2_ar_bits_prot;
	input [3:0] s_axi_2_ar_bits_qos;
	input [3:0] s_axi_2_ar_bits_region;
	input s_axi_2_r_ready;
	output wire s_axi_2_r_valid;
	output wire [255:0] s_axi_2_r_bits_data;
	output wire [1:0] s_axi_2_r_bits_resp;
	output wire s_axi_2_r_bits_last;
	output wire s_axi_2_aw_ready;
	input s_axi_2_aw_valid;
	input [63:0] s_axi_2_aw_bits_addr;
	input [7:0] s_axi_2_aw_bits_len;
	input [2:0] s_axi_2_aw_bits_size;
	input [1:0] s_axi_2_aw_bits_burst;
	input s_axi_2_aw_bits_lock;
	input [3:0] s_axi_2_aw_bits_cache;
	input [2:0] s_axi_2_aw_bits_prot;
	input [3:0] s_axi_2_aw_bits_qos;
	input [3:0] s_axi_2_aw_bits_region;
	output wire s_axi_2_w_ready;
	input s_axi_2_w_valid;
	input [255:0] s_axi_2_w_bits_data;
	input [31:0] s_axi_2_w_bits_strb;
	input s_axi_2_w_bits_last;
	input s_axi_2_b_ready;
	output wire s_axi_2_b_valid;
	output wire [1:0] s_axi_2_b_bits_resp;
	output wire s_axi_3_ar_ready;
	input s_axi_3_ar_valid;
	input [63:0] s_axi_3_ar_bits_addr;
	input [7:0] s_axi_3_ar_bits_len;
	input [2:0] s_axi_3_ar_bits_size;
	input [1:0] s_axi_3_ar_bits_burst;
	input s_axi_3_ar_bits_lock;
	input [3:0] s_axi_3_ar_bits_cache;
	input [2:0] s_axi_3_ar_bits_prot;
	input [3:0] s_axi_3_ar_bits_qos;
	input [3:0] s_axi_3_ar_bits_region;
	input s_axi_3_r_ready;
	output wire s_axi_3_r_valid;
	output wire [255:0] s_axi_3_r_bits_data;
	output wire [1:0] s_axi_3_r_bits_resp;
	output wire s_axi_3_r_bits_last;
	output wire s_axi_3_aw_ready;
	input s_axi_3_aw_valid;
	input [63:0] s_axi_3_aw_bits_addr;
	input [7:0] s_axi_3_aw_bits_len;
	input [2:0] s_axi_3_aw_bits_size;
	input [1:0] s_axi_3_aw_bits_burst;
	input s_axi_3_aw_bits_lock;
	input [3:0] s_axi_3_aw_bits_cache;
	input [2:0] s_axi_3_aw_bits_prot;
	input [3:0] s_axi_3_aw_bits_qos;
	input [3:0] s_axi_3_aw_bits_region;
	output wire s_axi_3_w_ready;
	input s_axi_3_w_valid;
	input [255:0] s_axi_3_w_bits_data;
	input [31:0] s_axi_3_w_bits_strb;
	input s_axi_3_w_bits_last;
	input s_axi_3_b_ready;
	output wire s_axi_3_b_valid;
	output wire [1:0] s_axi_3_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [1:0] m_axi_r_bits_id;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [1:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	wire _write_demux_io_source_ready;
	wire _write_demux_io_select_ready;
	wire _write_mux_io_select_ready;
	wire _write_arbiter_io_select_valid;
	wire [1:0] _write_arbiter_io_select_bits;
	wire _write_portQueue_io_enq_ready;
	wire _write_portQueue_io_deq_valid;
	wire [1:0] _write_portQueue_io_deq_bits;
	wire _read_demux_io_source_ready;
	wire _read_demux_io_select_ready;
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	wire read_eagerFork_m_axi_r_ready_qual1_0 = _read_demux_io_source_ready | read_eagerFork_regs_0;
	wire read_eagerFork_m_axi_r_ready_qual1_1 = _read_demux_io_select_ready | read_eagerFork_regs_1;
	wire m_axi_r_ready_0 = read_eagerFork_m_axi_r_ready_qual1_0 & read_eagerFork_m_axi_r_ready_qual1_1;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	wire write_eagerFork_m_axi_b_ready_qual1_0 = _write_demux_io_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_m_axi_b_ready_qual1_1 = _write_demux_io_select_ready | write_eagerFork_regs_1;
	wire m_axi_b_ready_0 = write_eagerFork_m_axi_b_ready_qual1_0 & write_eagerFork_m_axi_b_ready_qual1_1;
	always @(posedge clock)
		if (reset) begin
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
		end
		else begin
			read_eagerFork_regs_0 <= (read_eagerFork_m_axi_r_ready_qual1_0 & m_axi_r_valid) & ~m_axi_r_ready_0;
			read_eagerFork_regs_1 <= (read_eagerFork_m_axi_r_ready_qual1_1 & m_axi_r_valid) & ~m_axi_r_ready_0;
			write_eagerFork_regs_0 <= (write_eagerFork_m_axi_b_ready_qual1_0 & m_axi_b_valid) & ~m_axi_b_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_m_axi_b_ready_qual1_1 & m_axi_b_valid) & ~m_axi_b_ready_0;
		end
	elasticBasicArbiter_4 read_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(s_axi_0_ar_ready),
		.io_sources_0_valid(s_axi_0_ar_valid),
		.io_sources_0_bits_addr(s_axi_0_ar_bits_addr),
		.io_sources_0_bits_len(s_axi_0_ar_bits_len),
		.io_sources_0_bits_size(s_axi_0_ar_bits_size),
		.io_sources_0_bits_burst(s_axi_0_ar_bits_burst),
		.io_sources_0_bits_lock(s_axi_0_ar_bits_lock),
		.io_sources_0_bits_cache(s_axi_0_ar_bits_cache),
		.io_sources_0_bits_prot(s_axi_0_ar_bits_prot),
		.io_sources_0_bits_qos(s_axi_0_ar_bits_qos),
		.io_sources_0_bits_region(s_axi_0_ar_bits_region),
		.io_sources_1_ready(s_axi_1_ar_ready),
		.io_sources_1_valid(s_axi_1_ar_valid),
		.io_sources_1_bits_addr(s_axi_1_ar_bits_addr),
		.io_sources_1_bits_len(s_axi_1_ar_bits_len),
		.io_sources_1_bits_size(s_axi_1_ar_bits_size),
		.io_sources_1_bits_burst(s_axi_1_ar_bits_burst),
		.io_sources_1_bits_lock(s_axi_1_ar_bits_lock),
		.io_sources_1_bits_cache(s_axi_1_ar_bits_cache),
		.io_sources_1_bits_prot(s_axi_1_ar_bits_prot),
		.io_sources_1_bits_qos(s_axi_1_ar_bits_qos),
		.io_sources_1_bits_region(s_axi_1_ar_bits_region),
		.io_sources_2_ready(s_axi_2_ar_ready),
		.io_sources_2_valid(s_axi_2_ar_valid),
		.io_sources_2_bits_addr(s_axi_2_ar_bits_addr),
		.io_sources_2_bits_len(s_axi_2_ar_bits_len),
		.io_sources_2_bits_size(s_axi_2_ar_bits_size),
		.io_sources_2_bits_burst(s_axi_2_ar_bits_burst),
		.io_sources_2_bits_lock(s_axi_2_ar_bits_lock),
		.io_sources_2_bits_cache(s_axi_2_ar_bits_cache),
		.io_sources_2_bits_prot(s_axi_2_ar_bits_prot),
		.io_sources_2_bits_qos(s_axi_2_ar_bits_qos),
		.io_sources_2_bits_region(s_axi_2_ar_bits_region),
		.io_sources_3_ready(s_axi_3_ar_ready),
		.io_sources_3_valid(s_axi_3_ar_valid),
		.io_sources_3_bits_addr(s_axi_3_ar_bits_addr),
		.io_sources_3_bits_len(s_axi_3_ar_bits_len),
		.io_sources_3_bits_size(s_axi_3_ar_bits_size),
		.io_sources_3_bits_burst(s_axi_3_ar_bits_burst),
		.io_sources_3_bits_lock(s_axi_3_ar_bits_lock),
		.io_sources_3_bits_cache(s_axi_3_ar_bits_cache),
		.io_sources_3_bits_prot(s_axi_3_ar_bits_prot),
		.io_sources_3_bits_qos(s_axi_3_ar_bits_qos),
		.io_sources_3_bits_region(s_axi_3_ar_bits_region),
		.io_sink_ready(m_axi_ar_ready),
		.io_sink_valid(m_axi_ar_valid),
		.io_sink_bits_id(m_axi_ar_bits_id),
		.io_sink_bits_addr(m_axi_ar_bits_addr),
		.io_sink_bits_len(m_axi_ar_bits_len),
		.io_sink_bits_size(m_axi_ar_bits_size),
		.io_sink_bits_burst(m_axi_ar_bits_burst),
		.io_sink_bits_lock(m_axi_ar_bits_lock),
		.io_sink_bits_cache(m_axi_ar_bits_cache),
		.io_sink_bits_prot(m_axi_ar_bits_prot),
		.io_sink_bits_qos(m_axi_ar_bits_qos),
		.io_sink_bits_region(m_axi_ar_bits_region)
	);
	elasticDemux_11 read_demux(
		.io_source_ready(_read_demux_io_source_ready),
		.io_source_valid(m_axi_r_valid & ~read_eagerFork_regs_0),
		.io_source_bits_data(m_axi_r_bits_data),
		.io_source_bits_resp(m_axi_r_bits_resp),
		.io_source_bits_last(m_axi_r_bits_last),
		.io_sinks_0_ready(s_axi_0_r_ready),
		.io_sinks_0_valid(s_axi_0_r_valid),
		.io_sinks_0_bits_data(s_axi_0_r_bits_data),
		.io_sinks_0_bits_resp(s_axi_0_r_bits_resp),
		.io_sinks_0_bits_last(s_axi_0_r_bits_last),
		.io_sinks_1_ready(s_axi_1_r_ready),
		.io_sinks_1_valid(s_axi_1_r_valid),
		.io_sinks_1_bits_data(s_axi_1_r_bits_data),
		.io_sinks_1_bits_resp(s_axi_1_r_bits_resp),
		.io_sinks_1_bits_last(s_axi_1_r_bits_last),
		.io_sinks_2_ready(s_axi_2_r_ready),
		.io_sinks_2_valid(s_axi_2_r_valid),
		.io_sinks_2_bits_data(s_axi_2_r_bits_data),
		.io_sinks_2_bits_resp(s_axi_2_r_bits_resp),
		.io_sinks_2_bits_last(s_axi_2_r_bits_last),
		.io_sinks_3_ready(s_axi_3_r_ready),
		.io_sinks_3_valid(s_axi_3_r_valid),
		.io_sinks_3_bits_data(s_axi_3_r_bits_data),
		.io_sinks_3_bits_resp(s_axi_3_r_bits_resp),
		.io_sinks_3_bits_last(s_axi_3_r_bits_last),
		.io_select_ready(_read_demux_io_select_ready),
		.io_select_valid(m_axi_r_valid & ~read_eagerFork_regs_1),
		.io_select_bits(m_axi_r_bits_id)
	);
	Queue32_UInt2 write_portQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueue_io_enq_ready),
		.io_enq_valid(_write_arbiter_io_select_valid),
		.io_enq_bits(_write_arbiter_io_select_bits),
		.io_deq_ready(_write_mux_io_select_ready),
		.io_deq_valid(_write_portQueue_io_deq_valid),
		.io_deq_bits(_write_portQueue_io_deq_bits)
	);
	elasticBasicArbiter_5 write_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(s_axi_0_aw_ready),
		.io_sources_0_valid(s_axi_0_aw_valid),
		.io_sources_0_bits_addr(s_axi_0_aw_bits_addr),
		.io_sources_0_bits_len(s_axi_0_aw_bits_len),
		.io_sources_0_bits_size(s_axi_0_aw_bits_size),
		.io_sources_0_bits_burst(s_axi_0_aw_bits_burst),
		.io_sources_0_bits_lock(s_axi_0_aw_bits_lock),
		.io_sources_0_bits_cache(s_axi_0_aw_bits_cache),
		.io_sources_0_bits_prot(s_axi_0_aw_bits_prot),
		.io_sources_0_bits_qos(s_axi_0_aw_bits_qos),
		.io_sources_0_bits_region(s_axi_0_aw_bits_region),
		.io_sources_1_ready(s_axi_1_aw_ready),
		.io_sources_1_valid(s_axi_1_aw_valid),
		.io_sources_1_bits_addr(s_axi_1_aw_bits_addr),
		.io_sources_1_bits_len(s_axi_1_aw_bits_len),
		.io_sources_1_bits_size(s_axi_1_aw_bits_size),
		.io_sources_1_bits_burst(s_axi_1_aw_bits_burst),
		.io_sources_1_bits_lock(s_axi_1_aw_bits_lock),
		.io_sources_1_bits_cache(s_axi_1_aw_bits_cache),
		.io_sources_1_bits_prot(s_axi_1_aw_bits_prot),
		.io_sources_1_bits_qos(s_axi_1_aw_bits_qos),
		.io_sources_1_bits_region(s_axi_1_aw_bits_region),
		.io_sources_2_ready(s_axi_2_aw_ready),
		.io_sources_2_valid(s_axi_2_aw_valid),
		.io_sources_2_bits_addr(s_axi_2_aw_bits_addr),
		.io_sources_2_bits_len(s_axi_2_aw_bits_len),
		.io_sources_2_bits_size(s_axi_2_aw_bits_size),
		.io_sources_2_bits_burst(s_axi_2_aw_bits_burst),
		.io_sources_2_bits_lock(s_axi_2_aw_bits_lock),
		.io_sources_2_bits_cache(s_axi_2_aw_bits_cache),
		.io_sources_2_bits_prot(s_axi_2_aw_bits_prot),
		.io_sources_2_bits_qos(s_axi_2_aw_bits_qos),
		.io_sources_2_bits_region(s_axi_2_aw_bits_region),
		.io_sources_3_ready(s_axi_3_aw_ready),
		.io_sources_3_valid(s_axi_3_aw_valid),
		.io_sources_3_bits_addr(s_axi_3_aw_bits_addr),
		.io_sources_3_bits_len(s_axi_3_aw_bits_len),
		.io_sources_3_bits_size(s_axi_3_aw_bits_size),
		.io_sources_3_bits_burst(s_axi_3_aw_bits_burst),
		.io_sources_3_bits_lock(s_axi_3_aw_bits_lock),
		.io_sources_3_bits_cache(s_axi_3_aw_bits_cache),
		.io_sources_3_bits_prot(s_axi_3_aw_bits_prot),
		.io_sources_3_bits_qos(s_axi_3_aw_bits_qos),
		.io_sources_3_bits_region(s_axi_3_aw_bits_region),
		.io_sink_ready(m_axi_aw_ready),
		.io_sink_valid(m_axi_aw_valid),
		.io_sink_bits_id(m_axi_aw_bits_id),
		.io_sink_bits_addr(m_axi_aw_bits_addr),
		.io_sink_bits_len(m_axi_aw_bits_len),
		.io_sink_bits_size(m_axi_aw_bits_size),
		.io_sink_bits_burst(m_axi_aw_bits_burst),
		.io_sink_bits_lock(m_axi_aw_bits_lock),
		.io_sink_bits_cache(m_axi_aw_bits_cache),
		.io_sink_bits_prot(m_axi_aw_bits_prot),
		.io_sink_bits_qos(m_axi_aw_bits_qos),
		.io_sink_bits_region(m_axi_aw_bits_region),
		.io_select_ready(_write_portQueue_io_enq_ready),
		.io_select_valid(_write_arbiter_io_select_valid),
		.io_select_bits(_write_arbiter_io_select_bits)
	);
	elasticMux_2 write_mux(
		.io_sources_0_ready(s_axi_0_w_ready),
		.io_sources_0_valid(s_axi_0_w_valid),
		.io_sources_0_bits_data(s_axi_0_w_bits_data),
		.io_sources_0_bits_strb(s_axi_0_w_bits_strb),
		.io_sources_0_bits_last(s_axi_0_w_bits_last),
		.io_sources_1_ready(s_axi_1_w_ready),
		.io_sources_1_valid(s_axi_1_w_valid),
		.io_sources_1_bits_data(s_axi_1_w_bits_data),
		.io_sources_1_bits_strb(s_axi_1_w_bits_strb),
		.io_sources_1_bits_last(s_axi_1_w_bits_last),
		.io_sources_2_ready(s_axi_2_w_ready),
		.io_sources_2_valid(s_axi_2_w_valid),
		.io_sources_2_bits_data(s_axi_2_w_bits_data),
		.io_sources_2_bits_strb(s_axi_2_w_bits_strb),
		.io_sources_2_bits_last(s_axi_2_w_bits_last),
		.io_sources_3_ready(s_axi_3_w_ready),
		.io_sources_3_valid(s_axi_3_w_valid),
		.io_sources_3_bits_data(s_axi_3_w_bits_data),
		.io_sources_3_bits_strb(s_axi_3_w_bits_strb),
		.io_sources_3_bits_last(s_axi_3_w_bits_last),
		.io_sink_ready(m_axi_w_ready),
		.io_sink_valid(m_axi_w_valid),
		.io_sink_bits_data(m_axi_w_bits_data),
		.io_sink_bits_strb(m_axi_w_bits_strb),
		.io_select_ready(_write_mux_io_select_ready),
		.io_select_valid(_write_portQueue_io_deq_valid),
		.io_select_bits(_write_portQueue_io_deq_bits)
	);
	elasticDemux_12 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(m_axi_b_valid & ~write_eagerFork_regs_0),
		.io_source_bits_id(m_axi_b_bits_id),
		.io_source_bits_resp(m_axi_b_bits_resp),
		.io_sinks_0_ready(s_axi_0_b_ready),
		.io_sinks_0_valid(s_axi_0_b_valid),
		.io_sinks_0_bits_id(),
		.io_sinks_0_bits_resp(s_axi_0_b_bits_resp),
		.io_sinks_1_ready(s_axi_1_b_ready),
		.io_sinks_1_valid(s_axi_1_b_valid),
		.io_sinks_1_bits_id(),
		.io_sinks_1_bits_resp(s_axi_1_b_bits_resp),
		.io_sinks_2_ready(s_axi_2_b_ready),
		.io_sinks_2_valid(s_axi_2_b_valid),
		.io_sinks_2_bits_id(),
		.io_sinks_2_bits_resp(s_axi_2_b_bits_resp),
		.io_sinks_3_ready(s_axi_3_b_ready),
		.io_sinks_3_valid(s_axi_3_b_valid),
		.io_sinks_3_bits_id(),
		.io_sinks_3_bits_resp(s_axi_3_b_bits_resp),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(m_axi_b_valid & ~write_eagerFork_regs_1),
		.io_select_bits(m_axi_b_bits_id)
	);
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_b_ready = m_axi_b_ready_0;
endmodule
module ProtocolConverter (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [2:0] s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [2:0] s_axi_r_bits_id;
	output wire [255:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [2:0] s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [255:0] s_axi_w_bits_data;
	input [31:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [2:0] s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [1:0] m_axi_r_bits_id;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [1:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	wire _module_s_axi_0_ar_ready;
	wire _module_s_axi_0_r_valid;
	wire [255:0] _module_s_axi_0_r_bits_data;
	wire [1:0] _module_s_axi_0_r_bits_resp;
	wire _module_s_axi_0_r_bits_last;
	wire _module_s_axi_0_aw_ready;
	wire _module_s_axi_0_w_ready;
	wire _module_s_axi_0_b_valid;
	wire [1:0] _module_s_axi_0_b_bits_resp;
	wire _module_s_axi_1_ar_ready;
	wire _module_s_axi_1_r_valid;
	wire [255:0] _module_s_axi_1_r_bits_data;
	wire [1:0] _module_s_axi_1_r_bits_resp;
	wire _module_s_axi_1_r_bits_last;
	wire _module_s_axi_1_aw_ready;
	wire _module_s_axi_1_w_ready;
	wire _module_s_axi_1_b_valid;
	wire [1:0] _module_s_axi_1_b_bits_resp;
	wire _module_s_axi_2_ar_ready;
	wire _module_s_axi_2_r_valid;
	wire [255:0] _module_s_axi_2_r_bits_data;
	wire [1:0] _module_s_axi_2_r_bits_resp;
	wire _module_s_axi_2_r_bits_last;
	wire _module_s_axi_2_aw_ready;
	wire _module_s_axi_2_w_ready;
	wire _module_s_axi_2_b_valid;
	wire [1:0] _module_s_axi_2_b_bits_resp;
	wire _module_s_axi_3_ar_ready;
	wire _module_s_axi_3_r_valid;
	wire [255:0] _module_s_axi_3_r_bits_data;
	wire [1:0] _module_s_axi_3_r_bits_resp;
	wire _module_s_axi_3_r_bits_last;
	wire _module_s_axi_3_aw_ready;
	wire _module_s_axi_3_w_ready;
	wire _module_s_axi_3_b_valid;
	wire [1:0] _module_s_axi_3_b_bits_resp;
	wire _idSerialize_3_s_axi_ar_ready;
	wire _idSerialize_3_s_axi_r_valid;
	wire _idSerialize_3_s_axi_r_bits_id;
	wire [255:0] _idSerialize_3_s_axi_r_bits_data;
	wire [1:0] _idSerialize_3_s_axi_r_bits_resp;
	wire _idSerialize_3_s_axi_r_bits_last;
	wire _idSerialize_3_s_axi_aw_ready;
	wire _idSerialize_3_s_axi_w_ready;
	wire _idSerialize_3_s_axi_b_valid;
	wire _idSerialize_3_s_axi_b_bits_id;
	wire [1:0] _idSerialize_3_s_axi_b_bits_resp;
	wire _idSerialize_3_m_axi_ar_valid;
	wire [63:0] _idSerialize_3_m_axi_ar_bits_addr;
	wire [7:0] _idSerialize_3_m_axi_ar_bits_len;
	wire [2:0] _idSerialize_3_m_axi_ar_bits_size;
	wire [1:0] _idSerialize_3_m_axi_ar_bits_burst;
	wire _idSerialize_3_m_axi_ar_bits_lock;
	wire [3:0] _idSerialize_3_m_axi_ar_bits_cache;
	wire [2:0] _idSerialize_3_m_axi_ar_bits_prot;
	wire [3:0] _idSerialize_3_m_axi_ar_bits_qos;
	wire [3:0] _idSerialize_3_m_axi_ar_bits_region;
	wire _idSerialize_3_m_axi_r_ready;
	wire _idSerialize_3_m_axi_aw_valid;
	wire [63:0] _idSerialize_3_m_axi_aw_bits_addr;
	wire [7:0] _idSerialize_3_m_axi_aw_bits_len;
	wire [2:0] _idSerialize_3_m_axi_aw_bits_size;
	wire [1:0] _idSerialize_3_m_axi_aw_bits_burst;
	wire _idSerialize_3_m_axi_aw_bits_lock;
	wire [3:0] _idSerialize_3_m_axi_aw_bits_cache;
	wire [2:0] _idSerialize_3_m_axi_aw_bits_prot;
	wire [3:0] _idSerialize_3_m_axi_aw_bits_qos;
	wire [3:0] _idSerialize_3_m_axi_aw_bits_region;
	wire _idSerialize_3_m_axi_w_valid;
	wire [255:0] _idSerialize_3_m_axi_w_bits_data;
	wire [31:0] _idSerialize_3_m_axi_w_bits_strb;
	wire _idSerialize_3_m_axi_w_bits_last;
	wire _idSerialize_3_m_axi_b_ready;
	wire _idSerialize_2_s_axi_ar_ready;
	wire _idSerialize_2_s_axi_r_valid;
	wire _idSerialize_2_s_axi_r_bits_id;
	wire [255:0] _idSerialize_2_s_axi_r_bits_data;
	wire [1:0] _idSerialize_2_s_axi_r_bits_resp;
	wire _idSerialize_2_s_axi_r_bits_last;
	wire _idSerialize_2_s_axi_aw_ready;
	wire _idSerialize_2_s_axi_w_ready;
	wire _idSerialize_2_s_axi_b_valid;
	wire _idSerialize_2_s_axi_b_bits_id;
	wire [1:0] _idSerialize_2_s_axi_b_bits_resp;
	wire _idSerialize_2_m_axi_ar_valid;
	wire [63:0] _idSerialize_2_m_axi_ar_bits_addr;
	wire [7:0] _idSerialize_2_m_axi_ar_bits_len;
	wire [2:0] _idSerialize_2_m_axi_ar_bits_size;
	wire [1:0] _idSerialize_2_m_axi_ar_bits_burst;
	wire _idSerialize_2_m_axi_ar_bits_lock;
	wire [3:0] _idSerialize_2_m_axi_ar_bits_cache;
	wire [2:0] _idSerialize_2_m_axi_ar_bits_prot;
	wire [3:0] _idSerialize_2_m_axi_ar_bits_qos;
	wire [3:0] _idSerialize_2_m_axi_ar_bits_region;
	wire _idSerialize_2_m_axi_r_ready;
	wire _idSerialize_2_m_axi_aw_valid;
	wire [63:0] _idSerialize_2_m_axi_aw_bits_addr;
	wire [7:0] _idSerialize_2_m_axi_aw_bits_len;
	wire [2:0] _idSerialize_2_m_axi_aw_bits_size;
	wire [1:0] _idSerialize_2_m_axi_aw_bits_burst;
	wire _idSerialize_2_m_axi_aw_bits_lock;
	wire [3:0] _idSerialize_2_m_axi_aw_bits_cache;
	wire [2:0] _idSerialize_2_m_axi_aw_bits_prot;
	wire [3:0] _idSerialize_2_m_axi_aw_bits_qos;
	wire [3:0] _idSerialize_2_m_axi_aw_bits_region;
	wire _idSerialize_2_m_axi_w_valid;
	wire [255:0] _idSerialize_2_m_axi_w_bits_data;
	wire [31:0] _idSerialize_2_m_axi_w_bits_strb;
	wire _idSerialize_2_m_axi_w_bits_last;
	wire _idSerialize_2_m_axi_b_ready;
	wire _idSerialize_1_s_axi_ar_ready;
	wire _idSerialize_1_s_axi_r_valid;
	wire _idSerialize_1_s_axi_r_bits_id;
	wire [255:0] _idSerialize_1_s_axi_r_bits_data;
	wire [1:0] _idSerialize_1_s_axi_r_bits_resp;
	wire _idSerialize_1_s_axi_r_bits_last;
	wire _idSerialize_1_s_axi_aw_ready;
	wire _idSerialize_1_s_axi_w_ready;
	wire _idSerialize_1_s_axi_b_valid;
	wire _idSerialize_1_s_axi_b_bits_id;
	wire [1:0] _idSerialize_1_s_axi_b_bits_resp;
	wire _idSerialize_1_m_axi_ar_valid;
	wire [63:0] _idSerialize_1_m_axi_ar_bits_addr;
	wire [7:0] _idSerialize_1_m_axi_ar_bits_len;
	wire [2:0] _idSerialize_1_m_axi_ar_bits_size;
	wire [1:0] _idSerialize_1_m_axi_ar_bits_burst;
	wire _idSerialize_1_m_axi_ar_bits_lock;
	wire [3:0] _idSerialize_1_m_axi_ar_bits_cache;
	wire [2:0] _idSerialize_1_m_axi_ar_bits_prot;
	wire [3:0] _idSerialize_1_m_axi_ar_bits_qos;
	wire [3:0] _idSerialize_1_m_axi_ar_bits_region;
	wire _idSerialize_1_m_axi_r_ready;
	wire _idSerialize_1_m_axi_aw_valid;
	wire [63:0] _idSerialize_1_m_axi_aw_bits_addr;
	wire [7:0] _idSerialize_1_m_axi_aw_bits_len;
	wire [2:0] _idSerialize_1_m_axi_aw_bits_size;
	wire [1:0] _idSerialize_1_m_axi_aw_bits_burst;
	wire _idSerialize_1_m_axi_aw_bits_lock;
	wire [3:0] _idSerialize_1_m_axi_aw_bits_cache;
	wire [2:0] _idSerialize_1_m_axi_aw_bits_prot;
	wire [3:0] _idSerialize_1_m_axi_aw_bits_qos;
	wire [3:0] _idSerialize_1_m_axi_aw_bits_region;
	wire _idSerialize_1_m_axi_w_valid;
	wire [255:0] _idSerialize_1_m_axi_w_bits_data;
	wire [31:0] _idSerialize_1_m_axi_w_bits_strb;
	wire _idSerialize_1_m_axi_w_bits_last;
	wire _idSerialize_1_m_axi_b_ready;
	wire _idSerialize_0_s_axi_ar_ready;
	wire _idSerialize_0_s_axi_r_valid;
	wire _idSerialize_0_s_axi_r_bits_id;
	wire [255:0] _idSerialize_0_s_axi_r_bits_data;
	wire [1:0] _idSerialize_0_s_axi_r_bits_resp;
	wire _idSerialize_0_s_axi_r_bits_last;
	wire _idSerialize_0_s_axi_aw_ready;
	wire _idSerialize_0_s_axi_w_ready;
	wire _idSerialize_0_s_axi_b_valid;
	wire _idSerialize_0_s_axi_b_bits_id;
	wire [1:0] _idSerialize_0_s_axi_b_bits_resp;
	wire _idSerialize_0_m_axi_ar_valid;
	wire [63:0] _idSerialize_0_m_axi_ar_bits_addr;
	wire [7:0] _idSerialize_0_m_axi_ar_bits_len;
	wire [2:0] _idSerialize_0_m_axi_ar_bits_size;
	wire [1:0] _idSerialize_0_m_axi_ar_bits_burst;
	wire _idSerialize_0_m_axi_ar_bits_lock;
	wire [3:0] _idSerialize_0_m_axi_ar_bits_cache;
	wire [2:0] _idSerialize_0_m_axi_ar_bits_prot;
	wire [3:0] _idSerialize_0_m_axi_ar_bits_qos;
	wire [3:0] _idSerialize_0_m_axi_ar_bits_region;
	wire _idSerialize_0_m_axi_r_ready;
	wire _idSerialize_0_m_axi_aw_valid;
	wire [63:0] _idSerialize_0_m_axi_aw_bits_addr;
	wire [7:0] _idSerialize_0_m_axi_aw_bits_len;
	wire [2:0] _idSerialize_0_m_axi_aw_bits_size;
	wire [1:0] _idSerialize_0_m_axi_aw_bits_burst;
	wire _idSerialize_0_m_axi_aw_bits_lock;
	wire [3:0] _idSerialize_0_m_axi_aw_bits_cache;
	wire [2:0] _idSerialize_0_m_axi_aw_bits_prot;
	wire [3:0] _idSerialize_0_m_axi_aw_bits_qos;
	wire [3:0] _idSerialize_0_m_axi_aw_bits_region;
	wire _idSerialize_0_m_axi_w_valid;
	wire [255:0] _idSerialize_0_m_axi_w_bits_data;
	wire [31:0] _idSerialize_0_m_axi_w_bits_strb;
	wire _idSerialize_0_m_axi_w_bits_last;
	wire _idSerialize_0_m_axi_b_ready;
	wire _idDemux_m_axi_0_ar_valid;
	wire _idDemux_m_axi_0_ar_bits_id;
	wire [63:0] _idDemux_m_axi_0_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_0_ar_bits_len;
	wire [2:0] _idDemux_m_axi_0_ar_bits_size;
	wire [1:0] _idDemux_m_axi_0_ar_bits_burst;
	wire _idDemux_m_axi_0_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_0_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_0_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_0_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_0_ar_bits_region;
	wire _idDemux_m_axi_0_r_ready;
	wire _idDemux_m_axi_0_aw_valid;
	wire _idDemux_m_axi_0_aw_bits_id;
	wire [63:0] _idDemux_m_axi_0_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_0_aw_bits_len;
	wire [2:0] _idDemux_m_axi_0_aw_bits_size;
	wire [1:0] _idDemux_m_axi_0_aw_bits_burst;
	wire _idDemux_m_axi_0_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_0_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_0_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_0_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_0_aw_bits_region;
	wire _idDemux_m_axi_0_w_valid;
	wire [255:0] _idDemux_m_axi_0_w_bits_data;
	wire [31:0] _idDemux_m_axi_0_w_bits_strb;
	wire _idDemux_m_axi_0_w_bits_last;
	wire _idDemux_m_axi_0_b_ready;
	wire _idDemux_m_axi_1_ar_valid;
	wire _idDemux_m_axi_1_ar_bits_id;
	wire [63:0] _idDemux_m_axi_1_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_1_ar_bits_len;
	wire [2:0] _idDemux_m_axi_1_ar_bits_size;
	wire [1:0] _idDemux_m_axi_1_ar_bits_burst;
	wire _idDemux_m_axi_1_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_1_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_1_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_1_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_1_ar_bits_region;
	wire _idDemux_m_axi_1_r_ready;
	wire _idDemux_m_axi_1_aw_valid;
	wire _idDemux_m_axi_1_aw_bits_id;
	wire [63:0] _idDemux_m_axi_1_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_1_aw_bits_len;
	wire [2:0] _idDemux_m_axi_1_aw_bits_size;
	wire [1:0] _idDemux_m_axi_1_aw_bits_burst;
	wire _idDemux_m_axi_1_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_1_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_1_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_1_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_1_aw_bits_region;
	wire _idDemux_m_axi_1_w_valid;
	wire [255:0] _idDemux_m_axi_1_w_bits_data;
	wire [31:0] _idDemux_m_axi_1_w_bits_strb;
	wire _idDemux_m_axi_1_w_bits_last;
	wire _idDemux_m_axi_1_b_ready;
	wire _idDemux_m_axi_2_ar_valid;
	wire _idDemux_m_axi_2_ar_bits_id;
	wire [63:0] _idDemux_m_axi_2_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_2_ar_bits_len;
	wire [2:0] _idDemux_m_axi_2_ar_bits_size;
	wire [1:0] _idDemux_m_axi_2_ar_bits_burst;
	wire _idDemux_m_axi_2_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_2_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_2_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_2_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_2_ar_bits_region;
	wire _idDemux_m_axi_2_r_ready;
	wire _idDemux_m_axi_2_aw_valid;
	wire _idDemux_m_axi_2_aw_bits_id;
	wire [63:0] _idDemux_m_axi_2_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_2_aw_bits_len;
	wire [2:0] _idDemux_m_axi_2_aw_bits_size;
	wire [1:0] _idDemux_m_axi_2_aw_bits_burst;
	wire _idDemux_m_axi_2_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_2_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_2_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_2_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_2_aw_bits_region;
	wire _idDemux_m_axi_2_w_valid;
	wire [255:0] _idDemux_m_axi_2_w_bits_data;
	wire [31:0] _idDemux_m_axi_2_w_bits_strb;
	wire _idDemux_m_axi_2_w_bits_last;
	wire _idDemux_m_axi_2_b_ready;
	wire _idDemux_m_axi_3_ar_valid;
	wire _idDemux_m_axi_3_ar_bits_id;
	wire [63:0] _idDemux_m_axi_3_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_3_ar_bits_len;
	wire [2:0] _idDemux_m_axi_3_ar_bits_size;
	wire [1:0] _idDemux_m_axi_3_ar_bits_burst;
	wire _idDemux_m_axi_3_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_3_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_3_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_3_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_3_ar_bits_region;
	wire _idDemux_m_axi_3_r_ready;
	wire _idDemux_m_axi_3_aw_valid;
	wire _idDemux_m_axi_3_aw_bits_id;
	wire [63:0] _idDemux_m_axi_3_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_3_aw_bits_len;
	wire [2:0] _idDemux_m_axi_3_aw_bits_size;
	wire [1:0] _idDemux_m_axi_3_aw_bits_burst;
	wire _idDemux_m_axi_3_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_3_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_3_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_3_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_3_aw_bits_region;
	wire _idDemux_m_axi_3_w_valid;
	wire [255:0] _idDemux_m_axi_3_w_bits_data;
	wire [31:0] _idDemux_m_axi_3_w_bits_strb;
	wire _idDemux_m_axi_3_w_bits_last;
	wire _idDemux_m_axi_3_b_ready;
	IdDemux idDemux(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(s_axi_ar_ready),
		.s_axi_ar_valid(s_axi_ar_valid),
		.s_axi_ar_bits_id(s_axi_ar_bits_id),
		.s_axi_ar_bits_addr(s_axi_ar_bits_addr),
		.s_axi_ar_bits_len(s_axi_ar_bits_len),
		.s_axi_ar_bits_size(s_axi_ar_bits_size),
		.s_axi_ar_bits_burst(s_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(s_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(s_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(s_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(s_axi_ar_bits_qos),
		.s_axi_ar_bits_region(s_axi_ar_bits_region),
		.s_axi_r_ready(s_axi_r_ready),
		.s_axi_r_valid(s_axi_r_valid),
		.s_axi_r_bits_id(s_axi_r_bits_id),
		.s_axi_r_bits_data(s_axi_r_bits_data),
		.s_axi_r_bits_resp(s_axi_r_bits_resp),
		.s_axi_r_bits_last(s_axi_r_bits_last),
		.s_axi_aw_ready(s_axi_aw_ready),
		.s_axi_aw_valid(s_axi_aw_valid),
		.s_axi_aw_bits_id(s_axi_aw_bits_id),
		.s_axi_aw_bits_addr(s_axi_aw_bits_addr),
		.s_axi_aw_bits_len(s_axi_aw_bits_len),
		.s_axi_aw_bits_size(s_axi_aw_bits_size),
		.s_axi_aw_bits_burst(s_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(s_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(s_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(s_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(s_axi_aw_bits_qos),
		.s_axi_aw_bits_region(s_axi_aw_bits_region),
		.s_axi_w_ready(s_axi_w_ready),
		.s_axi_w_valid(s_axi_w_valid),
		.s_axi_w_bits_data(s_axi_w_bits_data),
		.s_axi_w_bits_strb(s_axi_w_bits_strb),
		.s_axi_w_bits_last(s_axi_w_bits_last),
		.s_axi_b_ready(s_axi_b_ready),
		.s_axi_b_valid(s_axi_b_valid),
		.s_axi_b_bits_id(s_axi_b_bits_id),
		.s_axi_b_bits_resp(s_axi_b_bits_resp),
		.m_axi_0_ar_ready(_idSerialize_0_s_axi_ar_ready),
		.m_axi_0_ar_valid(_idDemux_m_axi_0_ar_valid),
		.m_axi_0_ar_bits_id(_idDemux_m_axi_0_ar_bits_id),
		.m_axi_0_ar_bits_addr(_idDemux_m_axi_0_ar_bits_addr),
		.m_axi_0_ar_bits_len(_idDemux_m_axi_0_ar_bits_len),
		.m_axi_0_ar_bits_size(_idDemux_m_axi_0_ar_bits_size),
		.m_axi_0_ar_bits_burst(_idDemux_m_axi_0_ar_bits_burst),
		.m_axi_0_ar_bits_lock(_idDemux_m_axi_0_ar_bits_lock),
		.m_axi_0_ar_bits_cache(_idDemux_m_axi_0_ar_bits_cache),
		.m_axi_0_ar_bits_prot(_idDemux_m_axi_0_ar_bits_prot),
		.m_axi_0_ar_bits_qos(_idDemux_m_axi_0_ar_bits_qos),
		.m_axi_0_ar_bits_region(_idDemux_m_axi_0_ar_bits_region),
		.m_axi_0_r_ready(_idDemux_m_axi_0_r_ready),
		.m_axi_0_r_valid(_idSerialize_0_s_axi_r_valid),
		.m_axi_0_r_bits_id(_idSerialize_0_s_axi_r_bits_id),
		.m_axi_0_r_bits_data(_idSerialize_0_s_axi_r_bits_data),
		.m_axi_0_r_bits_resp(_idSerialize_0_s_axi_r_bits_resp),
		.m_axi_0_r_bits_last(_idSerialize_0_s_axi_r_bits_last),
		.m_axi_0_aw_ready(_idSerialize_0_s_axi_aw_ready),
		.m_axi_0_aw_valid(_idDemux_m_axi_0_aw_valid),
		.m_axi_0_aw_bits_id(_idDemux_m_axi_0_aw_bits_id),
		.m_axi_0_aw_bits_addr(_idDemux_m_axi_0_aw_bits_addr),
		.m_axi_0_aw_bits_len(_idDemux_m_axi_0_aw_bits_len),
		.m_axi_0_aw_bits_size(_idDemux_m_axi_0_aw_bits_size),
		.m_axi_0_aw_bits_burst(_idDemux_m_axi_0_aw_bits_burst),
		.m_axi_0_aw_bits_lock(_idDemux_m_axi_0_aw_bits_lock),
		.m_axi_0_aw_bits_cache(_idDemux_m_axi_0_aw_bits_cache),
		.m_axi_0_aw_bits_prot(_idDemux_m_axi_0_aw_bits_prot),
		.m_axi_0_aw_bits_qos(_idDemux_m_axi_0_aw_bits_qos),
		.m_axi_0_aw_bits_region(_idDemux_m_axi_0_aw_bits_region),
		.m_axi_0_w_ready(_idSerialize_0_s_axi_w_ready),
		.m_axi_0_w_valid(_idDemux_m_axi_0_w_valid),
		.m_axi_0_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.m_axi_0_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.m_axi_0_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.m_axi_0_b_ready(_idDemux_m_axi_0_b_ready),
		.m_axi_0_b_valid(_idSerialize_0_s_axi_b_valid),
		.m_axi_0_b_bits_id(_idSerialize_0_s_axi_b_bits_id),
		.m_axi_0_b_bits_resp(_idSerialize_0_s_axi_b_bits_resp),
		.m_axi_1_ar_ready(_idSerialize_1_s_axi_ar_ready),
		.m_axi_1_ar_valid(_idDemux_m_axi_1_ar_valid),
		.m_axi_1_ar_bits_id(_idDemux_m_axi_1_ar_bits_id),
		.m_axi_1_ar_bits_addr(_idDemux_m_axi_1_ar_bits_addr),
		.m_axi_1_ar_bits_len(_idDemux_m_axi_1_ar_bits_len),
		.m_axi_1_ar_bits_size(_idDemux_m_axi_1_ar_bits_size),
		.m_axi_1_ar_bits_burst(_idDemux_m_axi_1_ar_bits_burst),
		.m_axi_1_ar_bits_lock(_idDemux_m_axi_1_ar_bits_lock),
		.m_axi_1_ar_bits_cache(_idDemux_m_axi_1_ar_bits_cache),
		.m_axi_1_ar_bits_prot(_idDemux_m_axi_1_ar_bits_prot),
		.m_axi_1_ar_bits_qos(_idDemux_m_axi_1_ar_bits_qos),
		.m_axi_1_ar_bits_region(_idDemux_m_axi_1_ar_bits_region),
		.m_axi_1_r_ready(_idDemux_m_axi_1_r_ready),
		.m_axi_1_r_valid(_idSerialize_1_s_axi_r_valid),
		.m_axi_1_r_bits_id(_idSerialize_1_s_axi_r_bits_id),
		.m_axi_1_r_bits_data(_idSerialize_1_s_axi_r_bits_data),
		.m_axi_1_r_bits_resp(_idSerialize_1_s_axi_r_bits_resp),
		.m_axi_1_r_bits_last(_idSerialize_1_s_axi_r_bits_last),
		.m_axi_1_aw_ready(_idSerialize_1_s_axi_aw_ready),
		.m_axi_1_aw_valid(_idDemux_m_axi_1_aw_valid),
		.m_axi_1_aw_bits_id(_idDemux_m_axi_1_aw_bits_id),
		.m_axi_1_aw_bits_addr(_idDemux_m_axi_1_aw_bits_addr),
		.m_axi_1_aw_bits_len(_idDemux_m_axi_1_aw_bits_len),
		.m_axi_1_aw_bits_size(_idDemux_m_axi_1_aw_bits_size),
		.m_axi_1_aw_bits_burst(_idDemux_m_axi_1_aw_bits_burst),
		.m_axi_1_aw_bits_lock(_idDemux_m_axi_1_aw_bits_lock),
		.m_axi_1_aw_bits_cache(_idDemux_m_axi_1_aw_bits_cache),
		.m_axi_1_aw_bits_prot(_idDemux_m_axi_1_aw_bits_prot),
		.m_axi_1_aw_bits_qos(_idDemux_m_axi_1_aw_bits_qos),
		.m_axi_1_aw_bits_region(_idDemux_m_axi_1_aw_bits_region),
		.m_axi_1_w_ready(_idSerialize_1_s_axi_w_ready),
		.m_axi_1_w_valid(_idDemux_m_axi_1_w_valid),
		.m_axi_1_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.m_axi_1_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.m_axi_1_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.m_axi_1_b_ready(_idDemux_m_axi_1_b_ready),
		.m_axi_1_b_valid(_idSerialize_1_s_axi_b_valid),
		.m_axi_1_b_bits_id(_idSerialize_1_s_axi_b_bits_id),
		.m_axi_1_b_bits_resp(_idSerialize_1_s_axi_b_bits_resp),
		.m_axi_2_ar_ready(_idSerialize_2_s_axi_ar_ready),
		.m_axi_2_ar_valid(_idDemux_m_axi_2_ar_valid),
		.m_axi_2_ar_bits_id(_idDemux_m_axi_2_ar_bits_id),
		.m_axi_2_ar_bits_addr(_idDemux_m_axi_2_ar_bits_addr),
		.m_axi_2_ar_bits_len(_idDemux_m_axi_2_ar_bits_len),
		.m_axi_2_ar_bits_size(_idDemux_m_axi_2_ar_bits_size),
		.m_axi_2_ar_bits_burst(_idDemux_m_axi_2_ar_bits_burst),
		.m_axi_2_ar_bits_lock(_idDemux_m_axi_2_ar_bits_lock),
		.m_axi_2_ar_bits_cache(_idDemux_m_axi_2_ar_bits_cache),
		.m_axi_2_ar_bits_prot(_idDemux_m_axi_2_ar_bits_prot),
		.m_axi_2_ar_bits_qos(_idDemux_m_axi_2_ar_bits_qos),
		.m_axi_2_ar_bits_region(_idDemux_m_axi_2_ar_bits_region),
		.m_axi_2_r_ready(_idDemux_m_axi_2_r_ready),
		.m_axi_2_r_valid(_idSerialize_2_s_axi_r_valid),
		.m_axi_2_r_bits_id(_idSerialize_2_s_axi_r_bits_id),
		.m_axi_2_r_bits_data(_idSerialize_2_s_axi_r_bits_data),
		.m_axi_2_r_bits_resp(_idSerialize_2_s_axi_r_bits_resp),
		.m_axi_2_r_bits_last(_idSerialize_2_s_axi_r_bits_last),
		.m_axi_2_aw_ready(_idSerialize_2_s_axi_aw_ready),
		.m_axi_2_aw_valid(_idDemux_m_axi_2_aw_valid),
		.m_axi_2_aw_bits_id(_idDemux_m_axi_2_aw_bits_id),
		.m_axi_2_aw_bits_addr(_idDemux_m_axi_2_aw_bits_addr),
		.m_axi_2_aw_bits_len(_idDemux_m_axi_2_aw_bits_len),
		.m_axi_2_aw_bits_size(_idDemux_m_axi_2_aw_bits_size),
		.m_axi_2_aw_bits_burst(_idDemux_m_axi_2_aw_bits_burst),
		.m_axi_2_aw_bits_lock(_idDemux_m_axi_2_aw_bits_lock),
		.m_axi_2_aw_bits_cache(_idDemux_m_axi_2_aw_bits_cache),
		.m_axi_2_aw_bits_prot(_idDemux_m_axi_2_aw_bits_prot),
		.m_axi_2_aw_bits_qos(_idDemux_m_axi_2_aw_bits_qos),
		.m_axi_2_aw_bits_region(_idDemux_m_axi_2_aw_bits_region),
		.m_axi_2_w_ready(_idSerialize_2_s_axi_w_ready),
		.m_axi_2_w_valid(_idDemux_m_axi_2_w_valid),
		.m_axi_2_w_bits_data(_idDemux_m_axi_2_w_bits_data),
		.m_axi_2_w_bits_strb(_idDemux_m_axi_2_w_bits_strb),
		.m_axi_2_w_bits_last(_idDemux_m_axi_2_w_bits_last),
		.m_axi_2_b_ready(_idDemux_m_axi_2_b_ready),
		.m_axi_2_b_valid(_idSerialize_2_s_axi_b_valid),
		.m_axi_2_b_bits_id(_idSerialize_2_s_axi_b_bits_id),
		.m_axi_2_b_bits_resp(_idSerialize_2_s_axi_b_bits_resp),
		.m_axi_3_ar_ready(_idSerialize_3_s_axi_ar_ready),
		.m_axi_3_ar_valid(_idDemux_m_axi_3_ar_valid),
		.m_axi_3_ar_bits_id(_idDemux_m_axi_3_ar_bits_id),
		.m_axi_3_ar_bits_addr(_idDemux_m_axi_3_ar_bits_addr),
		.m_axi_3_ar_bits_len(_idDemux_m_axi_3_ar_bits_len),
		.m_axi_3_ar_bits_size(_idDemux_m_axi_3_ar_bits_size),
		.m_axi_3_ar_bits_burst(_idDemux_m_axi_3_ar_bits_burst),
		.m_axi_3_ar_bits_lock(_idDemux_m_axi_3_ar_bits_lock),
		.m_axi_3_ar_bits_cache(_idDemux_m_axi_3_ar_bits_cache),
		.m_axi_3_ar_bits_prot(_idDemux_m_axi_3_ar_bits_prot),
		.m_axi_3_ar_bits_qos(_idDemux_m_axi_3_ar_bits_qos),
		.m_axi_3_ar_bits_region(_idDemux_m_axi_3_ar_bits_region),
		.m_axi_3_r_ready(_idDemux_m_axi_3_r_ready),
		.m_axi_3_r_valid(_idSerialize_3_s_axi_r_valid),
		.m_axi_3_r_bits_id(_idSerialize_3_s_axi_r_bits_id),
		.m_axi_3_r_bits_data(_idSerialize_3_s_axi_r_bits_data),
		.m_axi_3_r_bits_resp(_idSerialize_3_s_axi_r_bits_resp),
		.m_axi_3_r_bits_last(_idSerialize_3_s_axi_r_bits_last),
		.m_axi_3_aw_ready(_idSerialize_3_s_axi_aw_ready),
		.m_axi_3_aw_valid(_idDemux_m_axi_3_aw_valid),
		.m_axi_3_aw_bits_id(_idDemux_m_axi_3_aw_bits_id),
		.m_axi_3_aw_bits_addr(_idDemux_m_axi_3_aw_bits_addr),
		.m_axi_3_aw_bits_len(_idDemux_m_axi_3_aw_bits_len),
		.m_axi_3_aw_bits_size(_idDemux_m_axi_3_aw_bits_size),
		.m_axi_3_aw_bits_burst(_idDemux_m_axi_3_aw_bits_burst),
		.m_axi_3_aw_bits_lock(_idDemux_m_axi_3_aw_bits_lock),
		.m_axi_3_aw_bits_cache(_idDemux_m_axi_3_aw_bits_cache),
		.m_axi_3_aw_bits_prot(_idDemux_m_axi_3_aw_bits_prot),
		.m_axi_3_aw_bits_qos(_idDemux_m_axi_3_aw_bits_qos),
		.m_axi_3_aw_bits_region(_idDemux_m_axi_3_aw_bits_region),
		.m_axi_3_w_ready(_idSerialize_3_s_axi_w_ready),
		.m_axi_3_w_valid(_idDemux_m_axi_3_w_valid),
		.m_axi_3_w_bits_data(_idDemux_m_axi_3_w_bits_data),
		.m_axi_3_w_bits_strb(_idDemux_m_axi_3_w_bits_strb),
		.m_axi_3_w_bits_last(_idDemux_m_axi_3_w_bits_last),
		.m_axi_3_b_ready(_idDemux_m_axi_3_b_ready),
		.m_axi_3_b_valid(_idSerialize_3_s_axi_b_valid),
		.m_axi_3_b_bits_id(_idSerialize_3_s_axi_b_bits_id),
		.m_axi_3_b_bits_resp(_idSerialize_3_s_axi_b_bits_resp)
	);
	IdSerialize idSerialize_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_idSerialize_0_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_0_ar_valid),
		.s_axi_ar_bits_id(_idDemux_m_axi_0_ar_bits_id),
		.s_axi_ar_bits_addr(_idDemux_m_axi_0_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_0_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_0_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_0_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_0_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_0_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_0_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_0_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_0_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_0_r_ready),
		.s_axi_r_valid(_idSerialize_0_s_axi_r_valid),
		.s_axi_r_bits_id(_idSerialize_0_s_axi_r_bits_id),
		.s_axi_r_bits_data(_idSerialize_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_idSerialize_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_idSerialize_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_idSerialize_0_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_0_aw_valid),
		.s_axi_aw_bits_id(_idDemux_m_axi_0_aw_bits_id),
		.s_axi_aw_bits_addr(_idDemux_m_axi_0_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_0_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_0_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_0_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_0_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_0_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_0_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_0_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_0_aw_bits_region),
		.s_axi_w_ready(_idSerialize_0_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_0_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_0_b_ready),
		.s_axi_b_valid(_idSerialize_0_s_axi_b_valid),
		.s_axi_b_bits_id(_idSerialize_0_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_idSerialize_0_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_0_ar_ready),
		.m_axi_ar_valid(_idSerialize_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_idSerialize_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_idSerialize_0_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_idSerialize_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_idSerialize_0_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_idSerialize_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_idSerialize_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_idSerialize_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_idSerialize_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_idSerialize_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_idSerialize_0_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_0_r_valid),
		.m_axi_r_bits_data(_module_s_axi_0_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_0_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_0_aw_ready),
		.m_axi_aw_valid(_idSerialize_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_idSerialize_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_idSerialize_0_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_idSerialize_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_idSerialize_0_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_idSerialize_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_idSerialize_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_idSerialize_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_idSerialize_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_idSerialize_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_0_w_ready),
		.m_axi_w_valid(_idSerialize_0_m_axi_w_valid),
		.m_axi_w_bits_data(_idSerialize_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_idSerialize_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_idSerialize_0_m_axi_w_bits_last),
		.m_axi_b_ready(_idSerialize_0_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_0_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_0_b_bits_resp)
	);
	IdSerialize idSerialize_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_idSerialize_1_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_1_ar_valid),
		.s_axi_ar_bits_id(_idDemux_m_axi_1_ar_bits_id),
		.s_axi_ar_bits_addr(_idDemux_m_axi_1_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_1_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_1_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_1_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_1_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_1_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_1_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_1_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_1_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_1_r_ready),
		.s_axi_r_valid(_idSerialize_1_s_axi_r_valid),
		.s_axi_r_bits_id(_idSerialize_1_s_axi_r_bits_id),
		.s_axi_r_bits_data(_idSerialize_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_idSerialize_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_idSerialize_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_idSerialize_1_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_1_aw_valid),
		.s_axi_aw_bits_id(_idDemux_m_axi_1_aw_bits_id),
		.s_axi_aw_bits_addr(_idDemux_m_axi_1_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_1_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_1_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_1_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_1_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_1_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_1_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_1_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_1_aw_bits_region),
		.s_axi_w_ready(_idSerialize_1_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_1_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_1_b_ready),
		.s_axi_b_valid(_idSerialize_1_s_axi_b_valid),
		.s_axi_b_bits_id(_idSerialize_1_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_idSerialize_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_1_ar_ready),
		.m_axi_ar_valid(_idSerialize_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_idSerialize_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_idSerialize_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_idSerialize_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_idSerialize_1_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_idSerialize_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_idSerialize_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_idSerialize_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_idSerialize_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_idSerialize_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_idSerialize_1_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_1_r_valid),
		.m_axi_r_bits_data(_module_s_axi_1_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_1_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_1_aw_ready),
		.m_axi_aw_valid(_idSerialize_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_idSerialize_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_idSerialize_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_idSerialize_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_idSerialize_1_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_idSerialize_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_idSerialize_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_idSerialize_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_idSerialize_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_idSerialize_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_1_w_ready),
		.m_axi_w_valid(_idSerialize_1_m_axi_w_valid),
		.m_axi_w_bits_data(_idSerialize_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_idSerialize_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_idSerialize_1_m_axi_w_bits_last),
		.m_axi_b_ready(_idSerialize_1_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_1_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_1_b_bits_resp)
	);
	IdSerialize idSerialize_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_idSerialize_2_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_2_ar_valid),
		.s_axi_ar_bits_id(_idDemux_m_axi_2_ar_bits_id),
		.s_axi_ar_bits_addr(_idDemux_m_axi_2_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_2_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_2_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_2_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_2_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_2_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_2_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_2_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_2_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_2_r_ready),
		.s_axi_r_valid(_idSerialize_2_s_axi_r_valid),
		.s_axi_r_bits_id(_idSerialize_2_s_axi_r_bits_id),
		.s_axi_r_bits_data(_idSerialize_2_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_idSerialize_2_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_idSerialize_2_s_axi_r_bits_last),
		.s_axi_aw_ready(_idSerialize_2_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_2_aw_valid),
		.s_axi_aw_bits_id(_idDemux_m_axi_2_aw_bits_id),
		.s_axi_aw_bits_addr(_idDemux_m_axi_2_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_2_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_2_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_2_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_2_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_2_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_2_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_2_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_2_aw_bits_region),
		.s_axi_w_ready(_idSerialize_2_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_2_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_2_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_2_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_2_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_2_b_ready),
		.s_axi_b_valid(_idSerialize_2_s_axi_b_valid),
		.s_axi_b_bits_id(_idSerialize_2_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_idSerialize_2_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_2_ar_ready),
		.m_axi_ar_valid(_idSerialize_2_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_idSerialize_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_idSerialize_2_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_idSerialize_2_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_idSerialize_2_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_idSerialize_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_idSerialize_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_idSerialize_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_idSerialize_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_idSerialize_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_idSerialize_2_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_2_r_valid),
		.m_axi_r_bits_data(_module_s_axi_2_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_2_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_2_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_2_aw_ready),
		.m_axi_aw_valid(_idSerialize_2_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_idSerialize_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_idSerialize_2_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_idSerialize_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_idSerialize_2_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_idSerialize_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_idSerialize_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_idSerialize_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_idSerialize_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_idSerialize_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_2_w_ready),
		.m_axi_w_valid(_idSerialize_2_m_axi_w_valid),
		.m_axi_w_bits_data(_idSerialize_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_idSerialize_2_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_idSerialize_2_m_axi_w_bits_last),
		.m_axi_b_ready(_idSerialize_2_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_2_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_2_b_bits_resp)
	);
	IdSerialize idSerialize_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_idSerialize_3_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_3_ar_valid),
		.s_axi_ar_bits_id(_idDemux_m_axi_3_ar_bits_id),
		.s_axi_ar_bits_addr(_idDemux_m_axi_3_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_3_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_3_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_3_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_3_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_3_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_3_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_3_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_3_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_3_r_ready),
		.s_axi_r_valid(_idSerialize_3_s_axi_r_valid),
		.s_axi_r_bits_id(_idSerialize_3_s_axi_r_bits_id),
		.s_axi_r_bits_data(_idSerialize_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_idSerialize_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_idSerialize_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_idSerialize_3_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_3_aw_valid),
		.s_axi_aw_bits_id(_idDemux_m_axi_3_aw_bits_id),
		.s_axi_aw_bits_addr(_idDemux_m_axi_3_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_3_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_3_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_3_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_3_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_3_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_3_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_3_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_3_aw_bits_region),
		.s_axi_w_ready(_idSerialize_3_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_3_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_3_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_3_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_3_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_3_b_ready),
		.s_axi_b_valid(_idSerialize_3_s_axi_b_valid),
		.s_axi_b_bits_id(_idSerialize_3_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_idSerialize_3_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_3_ar_ready),
		.m_axi_ar_valid(_idSerialize_3_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_idSerialize_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_idSerialize_3_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_idSerialize_3_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_idSerialize_3_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_idSerialize_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_idSerialize_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_idSerialize_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_idSerialize_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_idSerialize_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_idSerialize_3_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_3_r_valid),
		.m_axi_r_bits_data(_module_s_axi_3_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_3_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_3_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_3_aw_ready),
		.m_axi_aw_valid(_idSerialize_3_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_idSerialize_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_idSerialize_3_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_idSerialize_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_idSerialize_3_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_idSerialize_3_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_idSerialize_3_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_idSerialize_3_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_idSerialize_3_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_idSerialize_3_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_3_w_ready),
		.m_axi_w_valid(_idSerialize_3_m_axi_w_valid),
		.m_axi_w_bits_data(_idSerialize_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_idSerialize_3_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_idSerialize_3_m_axi_w_bits_last),
		.m_axi_b_ready(_idSerialize_3_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_3_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_3_b_bits_resp)
	);
	IdMux module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_0_ar_ready(_module_s_axi_0_ar_ready),
		.s_axi_0_ar_valid(_idSerialize_0_m_axi_ar_valid),
		.s_axi_0_ar_bits_addr(_idSerialize_0_m_axi_ar_bits_addr),
		.s_axi_0_ar_bits_len(_idSerialize_0_m_axi_ar_bits_len),
		.s_axi_0_ar_bits_size(_idSerialize_0_m_axi_ar_bits_size),
		.s_axi_0_ar_bits_burst(_idSerialize_0_m_axi_ar_bits_burst),
		.s_axi_0_ar_bits_lock(_idSerialize_0_m_axi_ar_bits_lock),
		.s_axi_0_ar_bits_cache(_idSerialize_0_m_axi_ar_bits_cache),
		.s_axi_0_ar_bits_prot(_idSerialize_0_m_axi_ar_bits_prot),
		.s_axi_0_ar_bits_qos(_idSerialize_0_m_axi_ar_bits_qos),
		.s_axi_0_ar_bits_region(_idSerialize_0_m_axi_ar_bits_region),
		.s_axi_0_r_ready(_idSerialize_0_m_axi_r_ready),
		.s_axi_0_r_valid(_module_s_axi_0_r_valid),
		.s_axi_0_r_bits_data(_module_s_axi_0_r_bits_data),
		.s_axi_0_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.s_axi_0_r_bits_last(_module_s_axi_0_r_bits_last),
		.s_axi_0_aw_ready(_module_s_axi_0_aw_ready),
		.s_axi_0_aw_valid(_idSerialize_0_m_axi_aw_valid),
		.s_axi_0_aw_bits_addr(_idSerialize_0_m_axi_aw_bits_addr),
		.s_axi_0_aw_bits_len(_idSerialize_0_m_axi_aw_bits_len),
		.s_axi_0_aw_bits_size(_idSerialize_0_m_axi_aw_bits_size),
		.s_axi_0_aw_bits_burst(_idSerialize_0_m_axi_aw_bits_burst),
		.s_axi_0_aw_bits_lock(_idSerialize_0_m_axi_aw_bits_lock),
		.s_axi_0_aw_bits_cache(_idSerialize_0_m_axi_aw_bits_cache),
		.s_axi_0_aw_bits_prot(_idSerialize_0_m_axi_aw_bits_prot),
		.s_axi_0_aw_bits_qos(_idSerialize_0_m_axi_aw_bits_qos),
		.s_axi_0_aw_bits_region(_idSerialize_0_m_axi_aw_bits_region),
		.s_axi_0_w_ready(_module_s_axi_0_w_ready),
		.s_axi_0_w_valid(_idSerialize_0_m_axi_w_valid),
		.s_axi_0_w_bits_data(_idSerialize_0_m_axi_w_bits_data),
		.s_axi_0_w_bits_strb(_idSerialize_0_m_axi_w_bits_strb),
		.s_axi_0_w_bits_last(_idSerialize_0_m_axi_w_bits_last),
		.s_axi_0_b_ready(_idSerialize_0_m_axi_b_ready),
		.s_axi_0_b_valid(_module_s_axi_0_b_valid),
		.s_axi_0_b_bits_resp(_module_s_axi_0_b_bits_resp),
		.s_axi_1_ar_ready(_module_s_axi_1_ar_ready),
		.s_axi_1_ar_valid(_idSerialize_1_m_axi_ar_valid),
		.s_axi_1_ar_bits_addr(_idSerialize_1_m_axi_ar_bits_addr),
		.s_axi_1_ar_bits_len(_idSerialize_1_m_axi_ar_bits_len),
		.s_axi_1_ar_bits_size(_idSerialize_1_m_axi_ar_bits_size),
		.s_axi_1_ar_bits_burst(_idSerialize_1_m_axi_ar_bits_burst),
		.s_axi_1_ar_bits_lock(_idSerialize_1_m_axi_ar_bits_lock),
		.s_axi_1_ar_bits_cache(_idSerialize_1_m_axi_ar_bits_cache),
		.s_axi_1_ar_bits_prot(_idSerialize_1_m_axi_ar_bits_prot),
		.s_axi_1_ar_bits_qos(_idSerialize_1_m_axi_ar_bits_qos),
		.s_axi_1_ar_bits_region(_idSerialize_1_m_axi_ar_bits_region),
		.s_axi_1_r_ready(_idSerialize_1_m_axi_r_ready),
		.s_axi_1_r_valid(_module_s_axi_1_r_valid),
		.s_axi_1_r_bits_data(_module_s_axi_1_r_bits_data),
		.s_axi_1_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.s_axi_1_r_bits_last(_module_s_axi_1_r_bits_last),
		.s_axi_1_aw_ready(_module_s_axi_1_aw_ready),
		.s_axi_1_aw_valid(_idSerialize_1_m_axi_aw_valid),
		.s_axi_1_aw_bits_addr(_idSerialize_1_m_axi_aw_bits_addr),
		.s_axi_1_aw_bits_len(_idSerialize_1_m_axi_aw_bits_len),
		.s_axi_1_aw_bits_size(_idSerialize_1_m_axi_aw_bits_size),
		.s_axi_1_aw_bits_burst(_idSerialize_1_m_axi_aw_bits_burst),
		.s_axi_1_aw_bits_lock(_idSerialize_1_m_axi_aw_bits_lock),
		.s_axi_1_aw_bits_cache(_idSerialize_1_m_axi_aw_bits_cache),
		.s_axi_1_aw_bits_prot(_idSerialize_1_m_axi_aw_bits_prot),
		.s_axi_1_aw_bits_qos(_idSerialize_1_m_axi_aw_bits_qos),
		.s_axi_1_aw_bits_region(_idSerialize_1_m_axi_aw_bits_region),
		.s_axi_1_w_ready(_module_s_axi_1_w_ready),
		.s_axi_1_w_valid(_idSerialize_1_m_axi_w_valid),
		.s_axi_1_w_bits_data(_idSerialize_1_m_axi_w_bits_data),
		.s_axi_1_w_bits_strb(_idSerialize_1_m_axi_w_bits_strb),
		.s_axi_1_w_bits_last(_idSerialize_1_m_axi_w_bits_last),
		.s_axi_1_b_ready(_idSerialize_1_m_axi_b_ready),
		.s_axi_1_b_valid(_module_s_axi_1_b_valid),
		.s_axi_1_b_bits_resp(_module_s_axi_1_b_bits_resp),
		.s_axi_2_ar_ready(_module_s_axi_2_ar_ready),
		.s_axi_2_ar_valid(_idSerialize_2_m_axi_ar_valid),
		.s_axi_2_ar_bits_addr(_idSerialize_2_m_axi_ar_bits_addr),
		.s_axi_2_ar_bits_len(_idSerialize_2_m_axi_ar_bits_len),
		.s_axi_2_ar_bits_size(_idSerialize_2_m_axi_ar_bits_size),
		.s_axi_2_ar_bits_burst(_idSerialize_2_m_axi_ar_bits_burst),
		.s_axi_2_ar_bits_lock(_idSerialize_2_m_axi_ar_bits_lock),
		.s_axi_2_ar_bits_cache(_idSerialize_2_m_axi_ar_bits_cache),
		.s_axi_2_ar_bits_prot(_idSerialize_2_m_axi_ar_bits_prot),
		.s_axi_2_ar_bits_qos(_idSerialize_2_m_axi_ar_bits_qos),
		.s_axi_2_ar_bits_region(_idSerialize_2_m_axi_ar_bits_region),
		.s_axi_2_r_ready(_idSerialize_2_m_axi_r_ready),
		.s_axi_2_r_valid(_module_s_axi_2_r_valid),
		.s_axi_2_r_bits_data(_module_s_axi_2_r_bits_data),
		.s_axi_2_r_bits_resp(_module_s_axi_2_r_bits_resp),
		.s_axi_2_r_bits_last(_module_s_axi_2_r_bits_last),
		.s_axi_2_aw_ready(_module_s_axi_2_aw_ready),
		.s_axi_2_aw_valid(_idSerialize_2_m_axi_aw_valid),
		.s_axi_2_aw_bits_addr(_idSerialize_2_m_axi_aw_bits_addr),
		.s_axi_2_aw_bits_len(_idSerialize_2_m_axi_aw_bits_len),
		.s_axi_2_aw_bits_size(_idSerialize_2_m_axi_aw_bits_size),
		.s_axi_2_aw_bits_burst(_idSerialize_2_m_axi_aw_bits_burst),
		.s_axi_2_aw_bits_lock(_idSerialize_2_m_axi_aw_bits_lock),
		.s_axi_2_aw_bits_cache(_idSerialize_2_m_axi_aw_bits_cache),
		.s_axi_2_aw_bits_prot(_idSerialize_2_m_axi_aw_bits_prot),
		.s_axi_2_aw_bits_qos(_idSerialize_2_m_axi_aw_bits_qos),
		.s_axi_2_aw_bits_region(_idSerialize_2_m_axi_aw_bits_region),
		.s_axi_2_w_ready(_module_s_axi_2_w_ready),
		.s_axi_2_w_valid(_idSerialize_2_m_axi_w_valid),
		.s_axi_2_w_bits_data(_idSerialize_2_m_axi_w_bits_data),
		.s_axi_2_w_bits_strb(_idSerialize_2_m_axi_w_bits_strb),
		.s_axi_2_w_bits_last(_idSerialize_2_m_axi_w_bits_last),
		.s_axi_2_b_ready(_idSerialize_2_m_axi_b_ready),
		.s_axi_2_b_valid(_module_s_axi_2_b_valid),
		.s_axi_2_b_bits_resp(_module_s_axi_2_b_bits_resp),
		.s_axi_3_ar_ready(_module_s_axi_3_ar_ready),
		.s_axi_3_ar_valid(_idSerialize_3_m_axi_ar_valid),
		.s_axi_3_ar_bits_addr(_idSerialize_3_m_axi_ar_bits_addr),
		.s_axi_3_ar_bits_len(_idSerialize_3_m_axi_ar_bits_len),
		.s_axi_3_ar_bits_size(_idSerialize_3_m_axi_ar_bits_size),
		.s_axi_3_ar_bits_burst(_idSerialize_3_m_axi_ar_bits_burst),
		.s_axi_3_ar_bits_lock(_idSerialize_3_m_axi_ar_bits_lock),
		.s_axi_3_ar_bits_cache(_idSerialize_3_m_axi_ar_bits_cache),
		.s_axi_3_ar_bits_prot(_idSerialize_3_m_axi_ar_bits_prot),
		.s_axi_3_ar_bits_qos(_idSerialize_3_m_axi_ar_bits_qos),
		.s_axi_3_ar_bits_region(_idSerialize_3_m_axi_ar_bits_region),
		.s_axi_3_r_ready(_idSerialize_3_m_axi_r_ready),
		.s_axi_3_r_valid(_module_s_axi_3_r_valid),
		.s_axi_3_r_bits_data(_module_s_axi_3_r_bits_data),
		.s_axi_3_r_bits_resp(_module_s_axi_3_r_bits_resp),
		.s_axi_3_r_bits_last(_module_s_axi_3_r_bits_last),
		.s_axi_3_aw_ready(_module_s_axi_3_aw_ready),
		.s_axi_3_aw_valid(_idSerialize_3_m_axi_aw_valid),
		.s_axi_3_aw_bits_addr(_idSerialize_3_m_axi_aw_bits_addr),
		.s_axi_3_aw_bits_len(_idSerialize_3_m_axi_aw_bits_len),
		.s_axi_3_aw_bits_size(_idSerialize_3_m_axi_aw_bits_size),
		.s_axi_3_aw_bits_burst(_idSerialize_3_m_axi_aw_bits_burst),
		.s_axi_3_aw_bits_lock(_idSerialize_3_m_axi_aw_bits_lock),
		.s_axi_3_aw_bits_cache(_idSerialize_3_m_axi_aw_bits_cache),
		.s_axi_3_aw_bits_prot(_idSerialize_3_m_axi_aw_bits_prot),
		.s_axi_3_aw_bits_qos(_idSerialize_3_m_axi_aw_bits_qos),
		.s_axi_3_aw_bits_region(_idSerialize_3_m_axi_aw_bits_region),
		.s_axi_3_w_ready(_module_s_axi_3_w_ready),
		.s_axi_3_w_valid(_idSerialize_3_m_axi_w_valid),
		.s_axi_3_w_bits_data(_idSerialize_3_m_axi_w_bits_data),
		.s_axi_3_w_bits_strb(_idSerialize_3_m_axi_w_bits_strb),
		.s_axi_3_w_bits_last(_idSerialize_3_m_axi_w_bits_last),
		.s_axi_3_b_ready(_idSerialize_3_m_axi_b_ready),
		.s_axi_3_b_valid(_module_s_axi_3_b_valid),
		.s_axi_3_b_bits_resp(_module_s_axi_3_b_bits_resp),
		.m_axi_ar_ready(m_axi_ar_ready),
		.m_axi_ar_valid(m_axi_ar_valid),
		.m_axi_ar_bits_id(m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(m_axi_ar_bits_len),
		.m_axi_ar_bits_size(m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(m_axi_ar_bits_region),
		.m_axi_r_ready(m_axi_r_ready),
		.m_axi_r_valid(m_axi_r_valid),
		.m_axi_r_bits_id(m_axi_r_bits_id),
		.m_axi_r_bits_data(m_axi_r_bits_data),
		.m_axi_r_bits_resp(m_axi_r_bits_resp),
		.m_axi_r_bits_last(m_axi_r_bits_last),
		.m_axi_aw_ready(m_axi_aw_ready),
		.m_axi_aw_valid(m_axi_aw_valid),
		.m_axi_aw_bits_id(m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(m_axi_aw_bits_len),
		.m_axi_aw_bits_size(m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(m_axi_aw_bits_region),
		.m_axi_w_ready(m_axi_w_ready),
		.m_axi_w_valid(m_axi_w_valid),
		.m_axi_w_bits_data(m_axi_w_bits_data),
		.m_axi_w_bits_strb(m_axi_w_bits_strb),
		.m_axi_b_ready(m_axi_b_ready),
		.m_axi_b_valid(m_axi_b_valid),
		.m_axi_b_bits_id(m_axi_b_bits_id),
		.m_axi_b_bits_resp(m_axi_b_bits_resp)
	);
endmodule
module AxiUserYanker (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_ar_bits_user,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_aw_bits_user,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_w_bits_user,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_w_bits_last,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [2:0] s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_ar_bits_user;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [2:0] s_axi_r_bits_id;
	output wire [255:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [2:0] s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	input s_axi_aw_bits_user;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [255:0] s_axi_w_bits_data;
	input [31:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_w_bits_user;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [2:0] s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [2:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [2:0] m_axi_r_bits_id;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [2:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_w_bits_last;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [2:0] m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	always @(posedge clock) begin
		if (~reset & ~(~s_axi_ar_valid | ~s_axi_ar_bits_user)) begin
			$display("Error [%0t] ./pageRankv2_pe1_hardcilk_output/rtl/pageRankv2.sv:11114:11 - AxiUserYanker.<unnamed_block>.<unnamed_block>.<unnamed_block>\n msg: ", $time, "Assertion failed\n    at AxiUserYanker.scala:27 assert(!s_axi.ar.valid || s_axi.ar.bits.user.asUInt === 0.U)\n");
			$display("Fatal [%0t] ./pageRankv2_pe1_hardcilk_output/rtl/pageRankv2.sv:11116:11 - AxiUserYanker.<unnamed_block>.<unnamed_block>.<unnamed_block>", $time);
			$finish;
		end
		if (~reset & ~(~s_axi_aw_valid | ~s_axi_aw_bits_user)) begin
			$display("Error [%0t] ./pageRankv2_pe1_hardcilk_output/rtl/pageRankv2.sv:11120:11 - AxiUserYanker.<unnamed_block>.<unnamed_block>.<unnamed_block>\n msg: ", $time, "Assertion failed\n    at AxiUserYanker.scala:31 assert(!s_axi.aw.valid || s_axi.aw.bits.user.asUInt === 0.U)\n");
			$display("Fatal [%0t] ./pageRankv2_pe1_hardcilk_output/rtl/pageRankv2.sv:11122:11 - AxiUserYanker.<unnamed_block>.<unnamed_block>.<unnamed_block>", $time);
			$finish;
		end
		if (~reset & ~(~s_axi_w_valid | ~s_axi_w_bits_user)) begin
			$display("Error [%0t] ./pageRankv2_pe1_hardcilk_output/rtl/pageRankv2.sv:11126:11 - AxiUserYanker.<unnamed_block>.<unnamed_block>.<unnamed_block>\n msg: ", $time, "Assertion failed\n    at AxiUserYanker.scala:33 assert(!s_axi.w.valid || s_axi.w.bits.user.asUInt === 0.U)\n");
			$display("Fatal [%0t] ./pageRankv2_pe1_hardcilk_output/rtl/pageRankv2.sv:11128:11 - AxiUserYanker.<unnamed_block>.<unnamed_block>.<unnamed_block>", $time);
			$finish;
		end
	end
	assign s_axi_ar_ready = m_axi_ar_ready;
	assign s_axi_r_valid = m_axi_r_valid;
	assign s_axi_r_bits_id = m_axi_r_bits_id;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_r_bits_resp = m_axi_r_bits_resp;
	assign s_axi_r_bits_last = m_axi_r_bits_last;
	assign s_axi_aw_ready = m_axi_aw_ready;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = m_axi_b_valid;
	assign s_axi_b_bits_id = m_axi_b_bits_id;
	assign s_axi_b_bits_resp = m_axi_b_bits_resp;
	assign m_axi_ar_valid = s_axi_ar_valid;
	assign m_axi_ar_bits_id = s_axi_ar_bits_id;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = s_axi_ar_bits_len;
	assign m_axi_ar_bits_size = s_axi_ar_bits_size;
	assign m_axi_ar_bits_burst = s_axi_ar_bits_burst;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
	assign m_axi_r_ready = s_axi_r_ready;
	assign m_axi_aw_valid = s_axi_aw_valid;
	assign m_axi_aw_bits_id = s_axi_aw_bits_id;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_len = s_axi_aw_bits_len;
	assign m_axi_aw_bits_size = s_axi_aw_bits_size;
	assign m_axi_aw_bits_burst = s_axi_aw_bits_burst;
	assign m_axi_aw_bits_lock = s_axi_aw_bits_lock;
	assign m_axi_aw_bits_cache = s_axi_aw_bits_cache;
	assign m_axi_aw_bits_prot = s_axi_aw_bits_prot;
	assign m_axi_aw_bits_qos = s_axi_aw_bits_qos;
	assign m_axi_aw_bits_region = s_axi_aw_bits_region;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_strb = s_axi_w_bits_strb;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
	assign m_axi_b_ready = s_axi_b_ready;
endmodule
module ram_2x96 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [95:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [95:0] W0_data;
	reg [95:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 96'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadAddressChannel_4 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [2:0] io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [2:0] io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [95:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x96 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[2:0];
	assign io_deq_bits_addr = _ram_ext_R0_data[66:3];
	assign io_deq_bits_len = _ram_ext_R0_data[74:67];
	assign io_deq_bits_size = _ram_ext_R0_data[77:75];
	assign io_deq_bits_burst = _ram_ext_R0_data[79:78];
	assign io_deq_bits_lock = _ram_ext_R0_data[80];
	assign io_deq_bits_cache = _ram_ext_R0_data[84:81];
	assign io_deq_bits_prot = _ram_ext_R0_data[87:85];
	assign io_deq_bits_qos = _ram_ext_R0_data[91:88];
	assign io_deq_bits_region = _ram_ext_R0_data[95:92];
endmodule
module Queue2_WriteAddressChannel_3 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [2:0] io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [2:0] io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [95:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x96 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[2:0];
	assign io_deq_bits_addr = _ram_ext_R0_data[66:3];
	assign io_deq_bits_len = _ram_ext_R0_data[74:67];
	assign io_deq_bits_size = _ram_ext_R0_data[77:75];
	assign io_deq_bits_burst = _ram_ext_R0_data[79:78];
	assign io_deq_bits_lock = _ram_ext_R0_data[80];
	assign io_deq_bits_cache = _ram_ext_R0_data[84:81];
	assign io_deq_bits_prot = _ram_ext_R0_data[87:85];
	assign io_deq_bits_qos = _ram_ext_R0_data[91:88];
	assign io_deq_bits_region = _ram_ext_R0_data[95:92];
endmodule
module ram_2x289 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [288:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [288:0] W0_data;
	reg [288:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 289'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_WriteDataChannel_5 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_enq_bits_strb,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_strb,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [255:0] io_enq_bits_data;
	input [31:0] io_enq_bits_strb;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [255:0] io_deq_bits_data;
	output wire [31:0] io_deq_bits_strb;
	output wire io_deq_bits_last;
	wire [288:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x289 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_strb, io_enq_bits_data})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_data = _ram_ext_R0_data[255:0];
	assign io_deq_bits_strb = _ram_ext_R0_data[287:256];
	assign io_deq_bits_last = _ram_ext_R0_data[288];
endmodule
module mem_17x9 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [4:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [8:0] R0_data;
	input [4:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [8:0] W0_data;
	reg [8:0] Memory [0:16];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 9'bxxxxxxxxx);
endmodule
module mem_1_33x9 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [5:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [8:0] R0_data;
	input [5:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [8:0] W0_data;
	reg [8:0] Memory [0:32];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 9'bxxxxxxxxx);
endmodule
module mem_2_33x1 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [5:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire R0_data;
	input [5:0] W0_addr;
	input W0_en;
	input W0_clk;
	input W0_data;
	reg Memory [0:32];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 1'bx);
endmodule
module AxiPageBoundarySplitter_Basic_64_256_12_2_16 (
	clock,
	reset,
	s_axi_ARREADY,
	s_axi_ARVALID,
	s_axi_ARID,
	s_axi_ARADDR,
	s_axi_ARLEN,
	s_axi_ARSIZE,
	s_axi_ARBURST,
	s_axi_ARLOCK,
	s_axi_ARCACHE,
	s_axi_ARPROT,
	s_axi_ARQOS,
	s_axi_ARREGION,
	s_axi_RREADY,
	s_axi_RVALID,
	s_axi_RID,
	s_axi_RDATA,
	s_axi_RRESP,
	s_axi_RLAST,
	s_axi_AWREADY,
	s_axi_AWVALID,
	s_axi_AWID,
	s_axi_AWADDR,
	s_axi_AWLEN,
	s_axi_AWSIZE,
	s_axi_AWBURST,
	s_axi_AWLOCK,
	s_axi_AWCACHE,
	s_axi_AWPROT,
	s_axi_AWQOS,
	s_axi_AWREGION,
	s_axi_WREADY,
	s_axi_WVALID,
	s_axi_WDATA,
	s_axi_WSTRB,
	s_axi_BREADY,
	s_axi_BVALID,
	s_axi_BID,
	s_axi_BRESP,
	m_axi_ARREADY,
	m_axi_ARVALID,
	m_axi_ARID,
	m_axi_ARADDR,
	m_axi_ARLEN,
	m_axi_ARSIZE,
	m_axi_ARBURST,
	m_axi_ARLOCK,
	m_axi_ARCACHE,
	m_axi_ARPROT,
	m_axi_ARQOS,
	m_axi_ARREGION,
	m_axi_RREADY,
	m_axi_RVALID,
	m_axi_RID,
	m_axi_RDATA,
	m_axi_RRESP,
	m_axi_AWREADY,
	m_axi_AWVALID,
	m_axi_AWID,
	m_axi_AWADDR,
	m_axi_AWLEN,
	m_axi_AWSIZE,
	m_axi_AWBURST,
	m_axi_AWLOCK,
	m_axi_AWCACHE,
	m_axi_AWPROT,
	m_axi_AWQOS,
	m_axi_AWREGION,
	m_axi_WREADY,
	m_axi_WVALID,
	m_axi_WDATA,
	m_axi_WSTRB,
	m_axi_WLAST,
	m_axi_BREADY,
	m_axi_BVALID,
	m_axi_BID,
	m_axi_BRESP
);
	input clock;
	input reset;
	output wire s_axi_ARREADY;
	input s_axi_ARVALID;
	input [1:0] s_axi_ARID;
	input [63:0] s_axi_ARADDR;
	input [7:0] s_axi_ARLEN;
	input [2:0] s_axi_ARSIZE;
	input [1:0] s_axi_ARBURST;
	input s_axi_ARLOCK;
	input [3:0] s_axi_ARCACHE;
	input [2:0] s_axi_ARPROT;
	input [3:0] s_axi_ARQOS;
	input [3:0] s_axi_ARREGION;
	input s_axi_RREADY;
	output wire s_axi_RVALID;
	output wire [1:0] s_axi_RID;
	output wire [255:0] s_axi_RDATA;
	output wire [1:0] s_axi_RRESP;
	output wire s_axi_RLAST;
	output wire s_axi_AWREADY;
	input s_axi_AWVALID;
	input [1:0] s_axi_AWID;
	input [63:0] s_axi_AWADDR;
	input [7:0] s_axi_AWLEN;
	input [2:0] s_axi_AWSIZE;
	input [1:0] s_axi_AWBURST;
	input s_axi_AWLOCK;
	input [3:0] s_axi_AWCACHE;
	input [2:0] s_axi_AWPROT;
	input [3:0] s_axi_AWQOS;
	input [3:0] s_axi_AWREGION;
	output wire s_axi_WREADY;
	input s_axi_WVALID;
	input [255:0] s_axi_WDATA;
	input [31:0] s_axi_WSTRB;
	input s_axi_BREADY;
	output wire s_axi_BVALID;
	output wire [1:0] s_axi_BID;
	output wire [1:0] s_axi_BRESP;
	input m_axi_ARREADY;
	output wire m_axi_ARVALID;
	output wire [1:0] m_axi_ARID;
	output wire [63:0] m_axi_ARADDR;
	output wire [7:0] m_axi_ARLEN;
	output wire [2:0] m_axi_ARSIZE;
	output wire [1:0] m_axi_ARBURST;
	output wire m_axi_ARLOCK;
	output wire [3:0] m_axi_ARCACHE;
	output wire [2:0] m_axi_ARPROT;
	output wire [3:0] m_axi_ARQOS;
	output wire [3:0] m_axi_ARREGION;
	output wire m_axi_RREADY;
	input m_axi_RVALID;
	input [1:0] m_axi_RID;
	input [255:0] m_axi_RDATA;
	input [1:0] m_axi_RRESP;
	input m_axi_AWREADY;
	output wire m_axi_AWVALID;
	output wire [1:0] m_axi_AWID;
	output wire [63:0] m_axi_AWADDR;
	output wire [7:0] m_axi_AWLEN;
	output wire [2:0] m_axi_AWSIZE;
	output wire [1:0] m_axi_AWBURST;
	output wire m_axi_AWLOCK;
	output wire [3:0] m_axi_AWCACHE;
	output wire [2:0] m_axi_AWPROT;
	output wire [3:0] m_axi_AWQOS;
	output wire [3:0] m_axi_AWREGION;
	input m_axi_WREADY;
	output wire m_axi_WVALID;
	output wire [255:0] m_axi_WDATA;
	output wire [31:0] m_axi_WSTRB;
	output wire m_axi_WLAST;
	output wire m_axi_BREADY;
	input m_axi_BVALID;
	input [1:0] m_axi_BID;
	input [1:0] m_axi_BRESP;
	wire result_ready;
	wire _GEN;
	wire _GEN_0;
	wire allValid;
	reg [4:0] enq_ptr_value;
	reg [4:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire source_ready;
	wire source_valid;
	wire do_enq = source_ready & source_valid;
	wire sink_valid = ~(ptr_match & ~maybe_full);
	assign source_ready = ~(ptr_match & maybe_full);
	reg [5:0] enq_ptr_value_1;
	reg [5:0] deq_ptr_value_1;
	reg maybe_full_1;
	wire ptr_match_1 = enq_ptr_value_1 == deq_ptr_value_1;
	wire source_1_ready;
	wire source_1_valid;
	wire do_enq_1 = source_1_ready & source_1_valid;
	wire sink_1_valid = ~(ptr_match_1 & ~maybe_full_1);
	assign source_1_ready = ~(ptr_match_1 & maybe_full_1);
	reg [5:0] enq_ptr_value_2;
	reg [5:0] deq_ptr_value_2;
	reg maybe_full_2;
	wire ptr_match_2 = enq_ptr_value_2 == deq_ptr_value_2;
	wire source_2_ready;
	wire source_2_valid;
	wire do_enq_2 = source_2_ready & source_2_valid;
	wire sink_2_valid = ~(ptr_match_2 & ~maybe_full_2);
	assign source_2_ready = ~(ptr_match_2 & maybe_full_2);
	wire [70:0] _GEN_1 = {68'h00000000000000000, s_axi_ARSIZE};
	wire [70:0] _mask_T = 71'h000000000000000001 << _GEN_1;
	wire [63:0] mask = ~(_mask_T[63:0] - 64'h0000000000000001);
	wire [11:0] _GEN_2 = mask[11:0] & s_axi_ARADDR[11:0];
	wire [8:0] _GEN_3 = {1'h0, s_axi_ARLEN};
	wire crossing = {5'h00, ({54'h00000000000000, {5'h00, _GEN_2} + {1'h0, {7'h00, _GEN_3 + 9'h001} << s_axi_ARSIZE}} - 71'h000000000000000001) & 71'h000000000000000fff} < {64'h0000000000000000, _GEN_2};
	reg [8:0] sent_len;
	wire [8:0] source_bits = _GEN_3 + 9'h001;
	wire [70:0] _GEN_4 = {68'h00000000000000000, s_axi_AWSIZE};
	wire [70:0] _mask_T_3 = 71'h000000000000000001 << _GEN_4;
	wire [63:0] mask_1 = ~(_mask_T_3[63:0] - 64'h0000000000000001);
	wire [11:0] _GEN_5 = mask_1[11:0] & s_axi_AWADDR[11:0];
	wire crossing_1 = {5'h00, ({55'h00000000000000, {4'h0, _GEN_5} + {1'h0, {7'h00, s_axi_AWLEN + 8'h01} << s_axi_AWSIZE}} - 71'h000000000000000001) & 71'h000000000000000fff} < {64'h0000000000000000, _GEN_5};
	reg [8:0] sent_len_1;
	reg regs_0;
	reg regs_1;
	wire ready_qual1_0 = result_ready | regs_0;
	wire ready_qual1_1 = source_ready | regs_1;
	wire ready = ready_qual1_0 & ready_qual1_1;
	wire result_valid = s_axi_ARVALID & ~regs_0;
	assign source_valid = s_axi_ARVALID & ~regs_1;
	wire sink_2_bits;
	assign allValid = m_axi_BVALID & sink_2_valid;
	wire sink_2_ready = (sink_2_bits | s_axi_BREADY) & allValid;
	wire allValid_1 = (s_axi_WVALID & sink_1_valid) & _GEN_0;
	wire fire_1 = m_axi_WREADY & allValid_1;
	reg [8:0] state;
	reg valid;
	wire [8:0] _nextState_T = state + 9'h001;
	wire [8:0] sink_1_bits;
	wire _GEN_6 = _nextState_T == sink_1_bits;
	wire _GEN_7 = sink_1_bits == 9'h001;
	wire sink_1_ready = sink_1_valid & (valid ? _GEN_6 & fire_1 : ~(|sink_1_bits) | (_GEN_7 & fire_1));
	assign _GEN_0 = valid | (|sink_1_bits);
	wire allValid_2 = (m_axi_RVALID & sink_valid) & _GEN;
	wire fire_2 = s_axi_RREADY & allValid_2;
	reg [8:0] state_1;
	reg valid_1;
	wire [8:0] _nextState_T_2 = state_1 + 9'h001;
	wire [8:0] sink_bits;
	wire _GEN_8 = _nextState_T_2 == sink_bits;
	wire _GEN_9 = sink_bits == 9'h001;
	wire sink_ready = sink_valid & (valid_1 ? _GEN_8 & fire_2 : ~(|sink_bits) | (_GEN_9 & fire_2));
	assign _GEN = valid_1 | (|sink_bits);
	reg regs_1_0;
	reg regs_1_1;
	reg regs_1_2;
	wire ready_qual1_1_0 = source_1_ready | regs_1_0;
	wire ready_qual1_1_1 = m_axi_AWREADY | regs_1_1;
	wire ready_qual1_1_2 = source_2_ready | regs_1_2;
	wire ready_1 = (ready_qual1_1_0 & ready_qual1_1_1) & ready_qual1_1_2;
	assign source_1_valid = s_axi_AWVALID & ~regs_1_0;
	assign source_2_valid = s_axi_AWVALID & ~regs_1_2;
	wire [13:0] _GEN_10 = 14'h1000 - {2'h0, _GEN_5};
	wire [70:0] first_len = {57'h000000000000000, _GEN_10} >> _GEN_4;
	wire [70:0] _GEN_11 = {62'h0000000000000000, sent_len_1};
	wire [70:0] _aw_bool_len_wire_bits_aw_addr_T_1 = _GEN_11 << _GEN_4;
	wire _GEN_12 = s_axi_AWVALID & crossing_1;
	wire [70:0] first_len_1 = {57'h000000000000000, _GEN_10} >> _GEN_4;
	wire _cond_WIRE_0 = _GEN_12 & ~(|sent_len_1);
	wire [8:0] _GEN_13 = {1'h0, s_axi_AWLEN};
	wire [8:0] _rem_len_T_1 = _GEN_13 - sent_len_1;
	wire [70:0] _aw_bool_len_wire_bits_aw_addr_T_6 = _GEN_11 << _GEN_4;
	wire _cond_WIRE_1 = _GEN_12 & |sent_len_1;
	wire source_2_bits = crossing_1 & ~(|sent_len_1);
	wire [8:0] source_1_bits = (crossing_1 ? (|sent_len_1 ? _rem_len_T_1 + 9'h001 : first_len_1[8:0]) : _GEN_13 + 9'h001);
	wire _cond_WIRE_2 = s_axi_AWVALID & ~crossing_1;
	wire [2:0] cond = {_cond_WIRE_2, _cond_WIRE_1, _cond_WIRE_0};
	wire errorAtLeastTwoActions = s_axi_AWVALID & |(cond & ({_cond_WIRE_2, _cond_WIRE_1, _cond_WIRE_0} - 3'h1));
	wire errorNoAction = s_axi_AWVALID & (cond == 3'h0);
	wire [13:0] _GEN_14 = 14'h1000 - {2'h0, _GEN_2};
	wire [70:0] first_len_2 = {57'h000000000000000, _GEN_14} >> _GEN_1;
	wire [70:0] _GEN_15 = {62'h0000000000000000, sent_len};
	wire [70:0] _view__ar_bits_addr_T_1 = _GEN_15 << _GEN_1;
	wire _GEN_16 = result_valid & crossing;
	wire [70:0] first_len_3 = {57'h000000000000000, _GEN_14} >> _GEN_1;
	wire _cond_WIRE_1_0 = _GEN_16 & ~(|sent_len);
	wire [70:0] _view__ar_bits_addr_T_6 = _GEN_15 << _GEN_1;
	wire _cond_WIRE_1_1 = _GEN_16 & |sent_len;
	wire _cond_WIRE_1_2 = result_valid & ~crossing;
	assign result_ready = (result_valid & ~(crossing & ~(|sent_len))) & m_axi_ARREADY;
	wire [2:0] cond_1 = {_cond_WIRE_1_2, _cond_WIRE_1_1, _cond_WIRE_1_0};
	wire errorAtLeastTwoActions_1 = result_valid & |(cond_1 & ({_cond_WIRE_1_2, _cond_WIRE_1_1, _cond_WIRE_1_0} - 3'h1));
	wire errorNoAction_1 = result_valid & (cond_1 == 3'h0);
	always @(posedge clock) begin
		if ((1 & errorAtLeastTwoActions) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: at least two actions are taken in the same clock cycle!\n");
		if (((1 & errorAtLeastTwoActions) & _cond_WIRE_0) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: action 'produce' @[src/main/scala/Util/AxiPageBoundarySplitter.scala 117:23]\n");
		if (((1 & errorAtLeastTwoActions) & _cond_WIRE_1) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: action 'accept' @[src/main/scala/Util/AxiPageBoundarySplitter.scala 117:23]\n");
		if (((1 & errorAtLeastTwoActions) & _cond_WIRE_2) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: action 'accept' @[src/main/scala/Util/AxiPageBoundarySplitter.scala 117:23]\n");
		if ((1 & errorNoAction) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: no action was taken! @[src/main/scala/Util/AxiPageBoundarySplitter.scala 117:23]\n");
		if ((1 & errorAtLeastTwoActions_1) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: at least two actions are taken in the same clock cycle!\n");
		if (((1 & errorAtLeastTwoActions_1) & _cond_WIRE_1_0) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: action 'produce' @[src/main/scala/Util/AxiPageBoundarySplitter.scala 76:29]\n");
		if (((1 & errorAtLeastTwoActions_1) & _cond_WIRE_1_1) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: action 'accept' @[src/main/scala/Util/AxiPageBoundarySplitter.scala 76:29]\n");
		if (((1 & errorAtLeastTwoActions_1) & _cond_WIRE_1_2) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: action 'accept' @[src/main/scala/Util/AxiPageBoundarySplitter.scala 76:29]\n");
		if ((1 & errorNoAction_1) & ~reset)
			$fwrite(32'h80000002, "elasticnew.Transducer: no action was taken! @[src/main/scala/Util/AxiPageBoundarySplitter.scala 76:29]\n");
	end
	always @(posedge clock) begin : sv2v_autoblock_1
		reg _GEN_17;
		reg _GEN_18;
		_GEN_17 = ~(|sink_1_bits) | _GEN_7;
		_GEN_18 = ~(|sink_bits) | _GEN_9;
		if (reset) begin
			enq_ptr_value <= 5'h00;
			deq_ptr_value <= 5'h00;
			maybe_full <= 1'h0;
			enq_ptr_value_1 <= 6'h00;
			deq_ptr_value_1 <= 6'h00;
			maybe_full_1 <= 1'h0;
			enq_ptr_value_2 <= 6'h00;
			deq_ptr_value_2 <= 6'h00;
			maybe_full_2 <= 1'h0;
			sent_len <= 9'h000;
			sent_len_1 <= 9'h000;
			regs_0 <= 1'h0;
			regs_1 <= 1'h0;
			valid <= 1'h0;
			valid_1 <= 1'h0;
			regs_1_0 <= 1'h0;
			regs_1_1 <= 1'h0;
			regs_1_2 <= 1'h0;
		end
		else begin : sv2v_autoblock_2
			reg do_deq;
			reg do_deq_1;
			reg do_deq_2;
			do_deq = sink_ready & sink_valid;
			do_deq_1 = sink_1_ready & sink_1_valid;
			do_deq_2 = sink_2_ready & sink_2_valid;
			if (do_enq) begin
				if (enq_ptr_value == 5'h10)
					enq_ptr_value <= 5'h00;
				else
					enq_ptr_value <= enq_ptr_value + 5'h01;
			end
			if (do_deq) begin
				if (deq_ptr_value == 5'h10)
					deq_ptr_value <= 5'h00;
				else
					deq_ptr_value <= deq_ptr_value + 5'h01;
			end
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
			if (do_enq_1) begin
				if (enq_ptr_value_1 == 6'h20)
					enq_ptr_value_1 <= 6'h00;
				else
					enq_ptr_value_1 <= enq_ptr_value_1 + 6'h01;
			end
			if (do_deq_1) begin
				if (deq_ptr_value_1 == 6'h20)
					deq_ptr_value_1 <= 6'h00;
				else
					deq_ptr_value_1 <= deq_ptr_value_1 + 6'h01;
			end
			if (~(do_enq_1 == do_deq_1))
				maybe_full_1 <= do_enq_1;
			if (do_enq_2) begin
				if (enq_ptr_value_2 == 6'h20)
					enq_ptr_value_2 <= 6'h00;
				else
					enq_ptr_value_2 <= enq_ptr_value_2 + 6'h01;
			end
			if (do_deq_2) begin
				if (deq_ptr_value_2 == 6'h20)
					deq_ptr_value_2 <= 6'h00;
				else
					deq_ptr_value_2 <= deq_ptr_value_2 + 6'h01;
			end
			if (~(do_enq_2 == do_deq_2))
				maybe_full_2 <= do_enq_2;
			if (result_valid & m_axi_ARREADY)
				sent_len <= (~crossing | (|sent_len) ? 9'h000 : first_len_3[8:0]);
			if (s_axi_AWVALID & ready_1)
				sent_len_1 <= (~crossing_1 | (|sent_len_1) ? 9'h000 : first_len_1[8:0]);
			regs_0 <= (ready_qual1_0 & s_axi_ARVALID) & ~ready;
			regs_1 <= (ready_qual1_1 & s_axi_ARVALID) & ~ready;
			if (sink_1_valid) begin
				if (valid)
					valid <= ~(_GEN_6 & fire_1) & valid;
				else
					valid <= (~_GEN_17 & fire_1) | valid;
			end
			if (sink_valid) begin
				if (valid_1)
					valid_1 <= ~(_GEN_8 & fire_2) & valid_1;
				else
					valid_1 <= (~_GEN_18 & fire_2) | valid_1;
			end
			regs_1_0 <= (ready_qual1_1_0 & s_axi_AWVALID) & ~ready_1;
			regs_1_1 <= (ready_qual1_1_1 & s_axi_AWVALID) & ~ready_1;
			regs_1_2 <= (ready_qual1_1_2 & s_axi_AWVALID) & ~ready_1;
		end
		if (sink_1_valid) begin
			if (valid) begin
				if (fire_1)
					state <= (_GEN_6 ? 9'h000 : _nextState_T);
			end
			else if (_GEN_17 | ~fire_1)
				;
			else
				state <= 9'h001;
		end
		if (sink_valid) begin
			if (valid_1) begin
				if (fire_2)
					state_1 <= (_GEN_8 ? 9'h000 : _nextState_T_2);
			end
			else if (_GEN_18 | ~fire_2)
				;
			else
				state_1 <= 9'h001;
		end
	end
	mem_17x9 mem_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(sink_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(source_bits)
	);
	mem_1_33x9 mem_1_ext(
		.R0_addr(deq_ptr_value_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(sink_1_bits),
		.W0_addr(enq_ptr_value_1),
		.W0_en(do_enq_1),
		.W0_clk(clock),
		.W0_data(source_1_bits)
	);
	mem_2_33x1 mem_2_ext(
		.R0_addr(deq_ptr_value_2),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(sink_2_bits),
		.W0_addr(enq_ptr_value_2),
		.W0_en(do_enq_2),
		.W0_clk(clock),
		.W0_data(source_2_bits)
	);
	assign s_axi_ARREADY = ready;
	assign s_axi_RVALID = allValid_2;
	assign s_axi_RID = m_axi_RID;
	assign s_axi_RDATA = m_axi_RDATA;
	assign s_axi_RRESP = m_axi_RRESP;
	assign s_axi_RLAST = (valid_1 ? _GEN_8 : _GEN_9);
	assign s_axi_AWREADY = (s_axi_AWVALID & ~(crossing_1 & ~(|sent_len_1))) & ready_1;
	assign s_axi_WREADY = fire_1;
	assign s_axi_BVALID = ~sink_2_bits & allValid;
	assign s_axi_BID = m_axi_BID;
	assign s_axi_BRESP = m_axi_BRESP;
	assign m_axi_ARVALID = result_valid;
	assign m_axi_ARID = s_axi_ARID;
	assign m_axi_ARADDR = (crossing & |sent_len ? (s_axi_ARADDR + _view__ar_bits_addr_T_6[63:0]) & mask : (_GEN_16 & |sent_len ? (s_axi_ARADDR + _view__ar_bits_addr_T_1[63:0]) & mask : s_axi_ARADDR));
	assign m_axi_ARLEN = (crossing ? (|sent_len ? s_axi_ARLEN - sent_len[7:0] : first_len_3[7:0] - 8'h01) : (_GEN_16 ? (|sent_len ? s_axi_ARLEN - sent_len[7:0] : first_len_2[7:0] - 8'h01) : s_axi_ARLEN));
	assign m_axi_ARSIZE = s_axi_ARSIZE;
	assign m_axi_ARBURST = s_axi_ARBURST;
	assign m_axi_ARLOCK = s_axi_ARLOCK;
	assign m_axi_ARCACHE = s_axi_ARCACHE;
	assign m_axi_ARPROT = s_axi_ARPROT;
	assign m_axi_ARQOS = s_axi_ARQOS;
	assign m_axi_ARREGION = s_axi_ARREGION;
	assign m_axi_RREADY = fire_2;
	assign m_axi_AWVALID = s_axi_AWVALID & ~regs_1_1;
	assign m_axi_AWID = s_axi_AWID;
	assign m_axi_AWADDR = (crossing_1 & |sent_len_1 ? (s_axi_AWADDR + _aw_bool_len_wire_bits_aw_addr_T_6[63:0]) & mask_1 : (_GEN_12 & |sent_len_1 ? (s_axi_AWADDR + _aw_bool_len_wire_bits_aw_addr_T_1[63:0]) & mask_1 : s_axi_AWADDR));
	assign m_axi_AWLEN = (crossing_1 ? (|sent_len_1 ? _rem_len_T_1[7:0] : first_len_1[7:0] - 8'h01) : (_GEN_12 ? (|sent_len_1 ? s_axi_AWLEN - sent_len_1[7:0] : first_len[7:0] - 8'h01) : s_axi_AWLEN));
	assign m_axi_AWSIZE = s_axi_AWSIZE;
	assign m_axi_AWBURST = s_axi_AWBURST;
	assign m_axi_AWLOCK = s_axi_AWLOCK;
	assign m_axi_AWCACHE = s_axi_AWCACHE;
	assign m_axi_AWPROT = s_axi_AWPROT;
	assign m_axi_AWQOS = s_axi_AWQOS;
	assign m_axi_AWREGION = s_axi_AWREGION;
	assign m_axi_WVALID = allValid_1;
	assign m_axi_WDATA = s_axi_WDATA;
	assign m_axi_WSTRB = s_axi_WSTRB;
	assign m_axi_WLAST = (valid ? _GEN_6 : _GEN_7);
	assign m_axi_BREADY = sink_2_ready;
endmodule
module ram_2x77 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [76:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [76:0] W0_data;
	reg [76:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 77'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_AddrLenSizeBurstBundle_2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	wire [76:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x77 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[63:0];
	assign io_deq_bits_len = _ram_ext_R0_data[71:64];
	assign io_deq_bits_size = _ram_ext_R0_data[74:72];
	assign io_deq_bits_burst = _ram_ext_R0_data[76:75];
endmodule
module Queue2_AddrSizeLastBundle_2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_size,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_size
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [63:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_size;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [63:0] io_deq_bits_addr;
	output wire [2:0] io_deq_bits_size;
	wire [66:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x67 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_size, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[63:0];
	assign io_deq_bits_size = _ram_ext_R0_data[66:64];
endmodule
module AddressGenerator_2 (
	clock,
	reset,
	source_ready,
	source_valid,
	source_bits_addr,
	source_bits_len,
	source_bits_size,
	source_bits_burst,
	sink_ready,
	sink_valid,
	sink_bits_addr,
	sink_bits_size
);
	input clock;
	input reset;
	output wire source_ready;
	input source_valid;
	input [63:0] source_bits_addr;
	input [7:0] source_bits_len;
	input [2:0] source_bits_size;
	input [1:0] source_bits_burst;
	input sink_ready;
	output wire sink_valid;
	output wire [63:0] sink_bits_addr;
	output wire [2:0] sink_bits_size;
	wire _sink__sinkBuffer_io_enq_ready;
	wire _source__sourceBuffer_io_deq_valid;
	wire [63:0] _source__sourceBuffer_io_deq_bits_addr;
	wire [7:0] _source__sourceBuffer_io_deq_bits_len;
	wire [2:0] _source__sourceBuffer_io_deq_bits_size;
	wire [1:0] _source__sourceBuffer_io_deq_bits_burst;
	reg [63:0] addr;
	reg [7:0] ctr;
	reg generating;
	wire sink__valid = _source__sourceBuffer_io_deq_valid & _sink__sinkBuffer_io_enq_ready;
	wire last = ctr == 8'h00;
	wire [70:0] _result_addr_T = {7'h00, addr} << _source__sourceBuffer_io_deq_bits_size;
	wire last_1 = _source__sourceBuffer_io_deq_bits_len == 8'h00;
	always @(posedge clock) begin
		if (sink__valid) begin
			if (generating) begin
				if (~last) begin
					if (_source__sourceBuffer_io_deq_bits_burst == 2'h1)
						addr <= addr + 64'h0000000000000001;
					else if (_source__sourceBuffer_io_deq_bits_burst == 2'h2)
						addr <= (addr & {56'hffffffffffffff, ~_source__sourceBuffer_io_deq_bits_len}) | ((addr + 64'h0000000000000001) & {56'h00000000000000, _source__sourceBuffer_io_deq_bits_len});
					ctr <= ctr - 8'h01;
				end
			end
			else if (~last_1) begin
				addr <= (_source__sourceBuffer_io_deq_bits_addr >> _source__sourceBuffer_io_deq_bits_size) + 64'h0000000000000001;
				ctr <= _source__sourceBuffer_io_deq_bits_len - 8'h01;
			end
		end
		if (reset)
			generating <= 1'h0;
		else if (sink__valid) begin
			if (generating)
				generating <= ~last & generating;
			else
				generating <= ~last_1 | generating;
		end
	end
	Queue2_AddrLenSizeBurstBundle_2 source__sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(source_ready),
		.io_enq_valid(source_valid),
		.io_enq_bits_addr(source_bits_addr),
		.io_enq_bits_len(source_bits_len),
		.io_enq_bits_size(source_bits_size),
		.io_enq_bits_burst(source_bits_burst),
		.io_deq_ready(sink__valid & (generating ? last : last_1)),
		.io_deq_valid(_source__sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_source__sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_len(_source__sourceBuffer_io_deq_bits_len),
		.io_deq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_deq_bits_burst(_source__sourceBuffer_io_deq_bits_burst)
	);
	Queue2_AddrSizeLastBundle_2 sink__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink__sinkBuffer_io_enq_ready),
		.io_enq_valid(sink__valid),
		.io_enq_bits_addr((~generating | (_source__sourceBuffer_io_deq_bits_burst == 2'h0) ? _source__sourceBuffer_io_deq_bits_addr : _result_addr_T[63:0])),
		.io_enq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_enq_bits_last((generating ? last : last_1)),
		.io_deq_ready(sink_ready),
		.io_deq_valid(sink_valid),
		.io_deq_bits_addr(sink_bits_addr),
		.io_deq_bits_size(sink_bits_size)
	);
endmodule
module StrobeGenerator (
	source_ready,
	source_valid,
	source_bits_addr,
	source_bits_size,
	sink_ready,
	sink_valid,
	sink_bits_addr,
	sink_bits_size
);
	output wire source_ready;
	input source_valid;
	input [63:0] source_bits_addr;
	input [2:0] source_bits_size;
	input sink_ready;
	output wire sink_valid;
	output wire [63:0] sink_bits_addr;
	output wire [2:0] sink_bits_size;
	assign source_ready = sink_ready;
	assign sink_valid = source_valid;
	assign sink_bits_addr = source_bits_addr;
	assign sink_bits_size = source_bits_size;
endmodule
module AddressStrobeGenerator (
	clock,
	reset,
	source_ready,
	source_valid,
	source_bits_addr,
	source_bits_len,
	source_bits_size,
	source_bits_burst,
	sink_ready,
	sink_valid,
	sink_bits_addr,
	sink_bits_size
);
	input clock;
	input reset;
	output wire source_ready;
	input source_valid;
	input [63:0] source_bits_addr;
	input [7:0] source_bits_len;
	input [2:0] source_bits_size;
	input [1:0] source_bits_burst;
	input sink_ready;
	output wire sink_valid;
	output wire [63:0] sink_bits_addr;
	output wire [2:0] sink_bits_size;
	wire _strobeGenerator_source_ready;
	wire _addressGenerator_sink_valid;
	wire [63:0] _addressGenerator_sink_bits_addr;
	wire [2:0] _addressGenerator_sink_bits_size;
	AddressGenerator_2 addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(source_ready),
		.source_valid(source_valid),
		.source_bits_addr(source_bits_addr),
		.source_bits_len(source_bits_len),
		.source_bits_size(source_bits_size),
		.source_bits_burst(source_bits_burst),
		.sink_ready(_strobeGenerator_source_ready),
		.sink_valid(_addressGenerator_sink_valid),
		.sink_bits_addr(_addressGenerator_sink_bits_addr),
		.sink_bits_size(_addressGenerator_sink_bits_size)
	);
	StrobeGenerator strobeGenerator(
		.source_ready(_strobeGenerator_source_ready),
		.source_valid(_addressGenerator_sink_valid),
		.source_bits_addr(_addressGenerator_sink_bits_addr),
		.source_bits_size(_addressGenerator_sink_bits_size),
		.sink_ready(sink_ready),
		.sink_valid(sink_valid),
		.sink_bits_addr(sink_bits_addr),
		.sink_bits_size(sink_bits_size)
	);
endmodule
module ram_8x8 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [2:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [7:0] R0_data;
	input [2:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [7:0] W0_data;
	reg [7:0] Memory [0:7];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 8'bxxxxxxxx);
endmodule
module Queue8_UInt8 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [7:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [7:0] io_deq_bits;
	reg [2:0] enq_ptr_value;
	reg [2:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 3'h0;
			deq_ptr_value <= 3'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 3'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 3'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_8x8 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module Queue2_Bool (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x1 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module Queue2_WriteResponseChannel_7 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_resp,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_resp
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_resp;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_resp;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x2 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(io_deq_bits_resp),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits_resp)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module Unburst (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_w_bits_last,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [511:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [511:0] m_axi_w_bits_data;
	output wire [63:0] m_axi_w_bits_strb;
	output wire m_axi_w_bits_last;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_resp;
	wire write_joined_ready;
	wire [15:0] write_idx_1;
	wire [8:0] _write_len_T_1;
	wire _write_eagerFork_result_valid_T_2;
	wire [15:0] write_idx;
	wire [8:0] _write_len_T;
	wire [15:0] read_r_idx;
	wire [8:0] _read_r_len_T;
	wire _read_ar_eagerFork_result_valid_T_2;
	wire [15:0] read_ar_idx;
	wire [8:0] _read_ar_len_T;
	wire _write_sinkBuffered__sinkBuffer_2_io_enq_ready;
	wire _write_sinkBuffered__sinkBuffer_1_io_enq_ready;
	wire _write_sinkBuffered__sinkBuffer_1_io_deq_valid;
	wire _write_sinkBuffered__sinkBuffer_1_io_deq_bits;
	wire _write_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _write_sinkBuffered__sinkBuffer_io_deq_valid;
	wire _write_lenQueue_io_enq_ready;
	wire _write_lenQueue_io_deq_valid;
	wire [7:0] _write_lenQueue_io_deq_bits;
	wire _write_addressStrobeGenerator_source_ready;
	wire _write_addressStrobeGenerator_sink_valid;
	wire _read_r_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _read_r_sinkBuffered__sinkBuffer_io_deq_valid;
	wire _read_ar_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _read_ar_sinkBuffered__sinkBuffer_io_deq_valid;
	wire _read_lenQueue_io_enq_ready;
	wire _read_lenQueue_io_deq_valid;
	wire [7:0] _read_lenQueue_io_deq_bits;
	wire _read_addressStrobeGenerator_source_ready;
	wire _read_addressStrobeGenerator_sink_valid;
	reg read_ar_generating_;
	reg [15:0] read_ar_idx_;
	wire read_ar_last = read_ar_idx == ({7'h00, _read_ar_len_T} - 16'h0001);
	assign _read_ar_len_T = {1'h0, s_axi_ar_bits_len} + 9'h001;
	wire _read_ar_T = (s_axi_ar_valid & _read_ar_eagerFork_result_valid_T_2) & _read_ar_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _read_ar_T_2 = _read_ar_len_T == 9'h001;
	assign read_ar_idx = (read_ar_generating_ ? read_ar_idx_ : 16'h0000);
	reg read_ar_eagerFork_regs_0;
	reg read_ar_eagerFork_regs_1;
	reg read_ar_eagerFork_regs_2;
	assign _read_ar_eagerFork_result_valid_T_2 = ~read_ar_eagerFork_regs_1;
	wire read_ar_eagerFork_s_axi_ar_ready_qual1_0 = _read_addressStrobeGenerator_source_ready | read_ar_eagerFork_regs_0;
	wire read_ar_eagerFork_s_axi_ar_ready_qual1_1 = (_read_ar_T & (read_ar_generating_ ? read_ar_last : ~(|_read_ar_len_T) | _read_ar_T_2)) | read_ar_eagerFork_regs_1;
	wire read_ar_eagerFork_s_axi_ar_ready_qual1_2 = _read_lenQueue_io_enq_ready | read_ar_eagerFork_regs_2;
	wire s_axi_ar_ready_0 = (read_ar_eagerFork_s_axi_ar_ready_qual1_0 & read_ar_eagerFork_s_axi_ar_ready_qual1_1) & read_ar_eagerFork_s_axi_ar_ready_qual1_2;
	wire m_axi_ar_valid_0 = _read_ar_sinkBuffered__sinkBuffer_io_deq_valid & _read_addressStrobeGenerator_sink_valid;
	wire read_arReplicated_ready = m_axi_ar_ready & m_axi_ar_valid_0;
	reg read_r_generating_;
	reg [15:0] read_r_idx_;
	wire read_r_last = read_r_idx == ({7'h00, _read_r_len_T} - 16'h0001);
	assign _read_r_len_T = {1'h0, _read_lenQueue_io_deq_bits} + 9'h001;
	wire _read_r_T = _read_lenQueue_io_deq_valid & _read_r_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _read_r_T_2 = _read_r_len_T == 9'h001;
	assign read_r_idx = (read_r_generating_ ? read_r_idx_ : 16'h0000);
	wire s_axi_r_valid_0 = m_axi_r_valid & _read_r_sinkBuffered__sinkBuffer_io_deq_valid;
	wire m_axi_r_ready_0 = s_axi_r_ready & s_axi_r_valid_0;
	reg write_generating_;
	reg [15:0] write_idx_;
	wire write_last = write_idx == ({7'h00, _write_len_T} - 16'h0001);
	assign _write_len_T = {1'h0, s_axi_aw_bits_len} + 9'h001;
	wire _write_T = (s_axi_aw_valid & _write_eagerFork_result_valid_T_2) & _write_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _write_T_2 = _write_len_T == 9'h001;
	assign write_idx = (write_generating_ ? write_idx_ : 16'h0000);
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	reg write_eagerFork_regs_2;
	assign _write_eagerFork_result_valid_T_2 = ~write_eagerFork_regs_1;
	wire write_eagerFork_s_axi_aw_ready_qual1_0 = _write_addressStrobeGenerator_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_s_axi_aw_ready_qual1_1 = (_write_T & (write_generating_ ? write_last : ~(|_write_len_T) | _write_T_2)) | write_eagerFork_regs_1;
	wire write_eagerFork_s_axi_aw_ready_qual1_2 = _write_lenQueue_io_enq_ready | write_eagerFork_regs_2;
	wire s_axi_aw_ready_0 = (write_eagerFork_s_axi_aw_ready_qual1_0 & write_eagerFork_s_axi_aw_ready_qual1_1) & write_eagerFork_s_axi_aw_ready_qual1_2;
	wire write_mkJoin_allValid = _write_sinkBuffered__sinkBuffer_io_deq_valid & _write_addressStrobeGenerator_sink_valid;
	wire write_mkJoin_fire = m_axi_aw_ready & write_mkJoin_allValid;
	reg write_generating__1;
	reg [15:0] write_idx__1;
	wire write_last_1 = write_idx_1 == ({7'h00, _write_len_T_1} - 16'h0001);
	assign _write_len_T_1 = {1'h0, _write_lenQueue_io_deq_bits} + 9'h001;
	wire _write_T_4 = _write_lenQueue_io_deq_valid & _write_sinkBuffered__sinkBuffer_1_io_enq_ready;
	wire _write_T_6 = _write_len_T_1 == 9'h001;
	assign write_idx_1 = (write_generating__1 ? write_idx__1 : 16'h0000);
	wire write_joined_valid = m_axi_b_valid & _write_sinkBuffered__sinkBuffer_1_io_deq_valid;
	wire write_lastReplicated_ready = write_joined_ready & write_joined_valid;
	reg [1:0] write_respReg;
	assign write_joined_ready = _write_sinkBuffered__sinkBuffer_2_io_enq_ready & write_joined_valid;
	wire _write_T_9 = m_axi_b_bits_resp > write_respReg;
	always @(posedge clock)
		if (reset) begin
			read_ar_generating_ <= 1'h0;
			read_ar_idx_ <= 16'h0000;
			read_ar_eagerFork_regs_0 <= 1'h0;
			read_ar_eagerFork_regs_1 <= 1'h0;
			read_ar_eagerFork_regs_2 <= 1'h0;
			read_r_generating_ <= 1'h0;
			read_r_idx_ <= 16'h0000;
			write_generating_ <= 1'h0;
			write_idx_ <= 16'h0000;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_2 <= 1'h0;
			write_generating__1 <= 1'h0;
			write_idx__1 <= 16'h0000;
			write_respReg <= 2'h0;
		end
		else begin
			if (_read_ar_T) begin
				if (read_ar_generating_) begin
					read_ar_generating_ <= ~read_ar_last & read_ar_generating_;
					read_ar_idx_ <= read_ar_idx_ + 16'h0001;
				end
				else begin : sv2v_autoblock_1
					reg _GEN;
					_GEN = ~(|_read_ar_len_T) | _read_ar_T_2;
					read_ar_generating_ <= ~_GEN | read_ar_generating_;
					if (~_GEN)
						read_ar_idx_ <= 16'h0001;
				end
			end
			read_ar_eagerFork_regs_0 <= (read_ar_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_ar_eagerFork_regs_1 <= (read_ar_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_ar_eagerFork_regs_2 <= (read_ar_eagerFork_s_axi_ar_ready_qual1_2 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			if (_read_r_T) begin
				if (read_r_generating_) begin
					read_r_generating_ <= ~read_r_last & read_r_generating_;
					read_r_idx_ <= read_r_idx_ + 16'h0001;
				end
				else begin : sv2v_autoblock_2
					reg _GEN_0;
					_GEN_0 = ~(|_read_r_len_T) | _read_r_T_2;
					read_r_generating_ <= ~_GEN_0 | read_r_generating_;
					if (~_GEN_0)
						read_r_idx_ <= 16'h0001;
				end
			end
			if (_write_T) begin
				if (write_generating_) begin
					write_generating_ <= ~write_last & write_generating_;
					write_idx_ <= write_idx_ + 16'h0001;
				end
				else begin : sv2v_autoblock_3
					reg _GEN_1;
					_GEN_1 = ~(|_write_len_T) | _write_T_2;
					write_generating_ <= ~_GEN_1 | write_generating_;
					if (~_GEN_1)
						write_idx_ <= 16'h0001;
				end
			end
			write_eagerFork_regs_0 <= (write_eagerFork_s_axi_aw_ready_qual1_0 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_s_axi_aw_ready_qual1_1 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_2 <= (write_eagerFork_s_axi_aw_ready_qual1_2 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			if (_write_T_4) begin
				if (write_generating__1) begin
					write_generating__1 <= ~write_last_1 & write_generating__1;
					write_idx__1 <= write_idx__1 + 16'h0001;
				end
				else begin : sv2v_autoblock_4
					reg _GEN_2;
					_GEN_2 = ~(|_write_len_T_1) | _write_T_6;
					write_generating__1 <= ~_GEN_2 | write_generating__1;
					if (~_GEN_2)
						write_idx__1 <= 16'h0001;
				end
			end
			if (write_joined_ready) begin
				if (_write_sinkBuffered__sinkBuffer_1_io_deq_bits)
					write_respReg <= 2'h0;
				else if (_write_T_9)
					write_respReg <= m_axi_b_bits_resp;
			end
		end
	AddressStrobeGenerator read_addressStrobeGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_read_addressStrobeGenerator_source_ready),
		.source_valid(s_axi_ar_valid & ~read_ar_eagerFork_regs_0),
		.source_bits_addr(s_axi_ar_bits_addr),
		.source_bits_len(s_axi_ar_bits_len),
		.source_bits_size(s_axi_ar_bits_size),
		.source_bits_burst(s_axi_ar_bits_burst),
		.sink_ready(read_arReplicated_ready),
		.sink_valid(_read_addressStrobeGenerator_sink_valid),
		.sink_bits_addr(m_axi_ar_bits_addr),
		.sink_bits_size(m_axi_ar_bits_size)
	);
	Queue8_UInt8 read_lenQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_lenQueue_io_enq_ready),
		.io_enq_valid(s_axi_ar_valid & ~read_ar_eagerFork_regs_2),
		.io_enq_bits(s_axi_ar_bits_len),
		.io_deq_ready(_read_r_T & (read_r_generating_ ? read_r_last : ~(|_read_r_len_T) | _read_r_T_2)),
		.io_deq_valid(_read_lenQueue_io_deq_valid),
		.io_deq_bits(_read_lenQueue_io_deq_bits)
	);
	Queue2_ReadAddressChannel read_ar_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_ar_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(_read_ar_T & (read_ar_generating_ | (|_read_ar_len_T))),
		.io_enq_bits_addr(s_axi_ar_bits_addr),
		.io_enq_bits_len(s_axi_ar_bits_len),
		.io_enq_bits_size(s_axi_ar_bits_size),
		.io_enq_bits_burst(s_axi_ar_bits_burst),
		.io_enq_bits_lock(s_axi_ar_bits_lock),
		.io_enq_bits_cache(s_axi_ar_bits_cache),
		.io_enq_bits_prot(s_axi_ar_bits_prot),
		.io_enq_bits_qos(s_axi_ar_bits_qos),
		.io_enq_bits_region(s_axi_ar_bits_region),
		.io_deq_ready(read_arReplicated_ready),
		.io_deq_valid(_read_ar_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_deq_bits_addr(),
		.io_deq_bits_len(),
		.io_deq_bits_size(),
		.io_deq_bits_burst(),
		.io_deq_bits_lock(m_axi_ar_bits_lock),
		.io_deq_bits_cache(m_axi_ar_bits_cache),
		.io_deq_bits_prot(m_axi_ar_bits_prot),
		.io_deq_bits_qos(m_axi_ar_bits_qos),
		.io_deq_bits_region(m_axi_ar_bits_region)
	);
	Queue2_Bool read_r_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_r_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(_read_r_T & (read_r_generating_ | (|_read_r_len_T))),
		.io_enq_bits(read_r_last),
		.io_deq_ready(m_axi_r_ready_0),
		.io_deq_valid(_read_r_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_deq_bits(s_axi_r_bits_last)
	);
	AddressStrobeGenerator write_addressStrobeGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_write_addressStrobeGenerator_source_ready),
		.source_valid(s_axi_aw_valid & ~write_eagerFork_regs_0),
		.source_bits_addr(s_axi_aw_bits_addr),
		.source_bits_len(s_axi_aw_bits_len),
		.source_bits_size(s_axi_aw_bits_size),
		.source_bits_burst(s_axi_aw_bits_burst),
		.sink_ready(write_mkJoin_fire),
		.sink_valid(_write_addressStrobeGenerator_sink_valid),
		.sink_bits_addr(m_axi_aw_bits_addr),
		.sink_bits_size(m_axi_aw_bits_size)
	);
	Queue8_UInt8 write_lenQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_lenQueue_io_enq_ready),
		.io_enq_valid(s_axi_aw_valid & ~write_eagerFork_regs_2),
		.io_enq_bits(s_axi_aw_bits_len),
		.io_deq_ready(_write_T_4 & (write_generating__1 ? write_last_1 : ~(|_write_len_T_1) | _write_T_6)),
		.io_deq_valid(_write_lenQueue_io_deq_valid),
		.io_deq_bits(_write_lenQueue_io_deq_bits)
	);
	Queue2_WriteAddressChannel write_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(_write_T & (write_generating_ | (|_write_len_T))),
		.io_enq_bits_addr(s_axi_aw_bits_addr),
		.io_enq_bits_len(s_axi_aw_bits_len),
		.io_enq_bits_size(s_axi_aw_bits_size),
		.io_enq_bits_burst(s_axi_aw_bits_burst),
		.io_enq_bits_lock(s_axi_aw_bits_lock),
		.io_enq_bits_cache(s_axi_aw_bits_cache),
		.io_enq_bits_prot(s_axi_aw_bits_prot),
		.io_enq_bits_qos(s_axi_aw_bits_qos),
		.io_enq_bits_region(s_axi_aw_bits_region),
		.io_deq_ready(write_mkJoin_fire),
		.io_deq_valid(_write_sinkBuffered__sinkBuffer_io_deq_valid),
		.io_deq_bits_addr(),
		.io_deq_bits_len(),
		.io_deq_bits_size(),
		.io_deq_bits_burst(),
		.io_deq_bits_lock(m_axi_aw_bits_lock),
		.io_deq_bits_cache(m_axi_aw_bits_cache),
		.io_deq_bits_prot(m_axi_aw_bits_prot),
		.io_deq_bits_qos(m_axi_aw_bits_qos),
		.io_deq_bits_region(m_axi_aw_bits_region)
	);
	Queue2_Bool write_sinkBuffered__sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_sinkBuffered__sinkBuffer_1_io_enq_ready),
		.io_enq_valid(_write_T_4 & (write_generating__1 | (|_write_len_T_1))),
		.io_enq_bits(write_last_1),
		.io_deq_ready(write_lastReplicated_ready),
		.io_deq_valid(_write_sinkBuffered__sinkBuffer_1_io_deq_valid),
		.io_deq_bits(_write_sinkBuffered__sinkBuffer_1_io_deq_bits)
	);
	Queue2_WriteResponseChannel_7 write_sinkBuffered__sinkBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_sinkBuffered__sinkBuffer_2_io_enq_ready),
		.io_enq_valid(write_joined_ready & _write_sinkBuffered__sinkBuffer_1_io_deq_bits),
		.io_enq_bits_resp((_write_T_9 ? m_axi_b_bits_resp : write_respReg)),
		.io_deq_ready(s_axi_b_ready),
		.io_deq_valid(s_axi_b_valid),
		.io_deq_bits_resp(s_axi_b_bits_resp)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_r_valid = s_axi_r_valid_0;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_r_bits_resp = m_axi_r_bits_resp;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
	assign s_axi_w_ready = m_axi_w_ready;
	assign m_axi_ar_valid = m_axi_ar_valid_0;
	assign m_axi_ar_bits_len = 8'h00;
	assign m_axi_ar_bits_burst = 2'h1;
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_aw_valid = write_mkJoin_allValid;
	assign m_axi_aw_bits_len = 8'h00;
	assign m_axi_aw_bits_burst = 2'h1;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_strb = s_axi_w_bits_strb;
	assign m_axi_w_bits_last = 1'h1;
	assign m_axi_b_ready = write_lastReplicated_ready;
endmodule
module ram_2x19 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [18:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [18:0] W0_data;
	reg [18:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 19'bxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_AddrLenSizeBurstBundle_4 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [5:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [5:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	wire [18:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x19 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({2'h1, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[5:0];
	assign io_deq_bits_len = _ram_ext_R0_data[13:6];
	assign io_deq_bits_size = _ram_ext_R0_data[16:14];
	assign io_deq_bits_burst = _ram_ext_R0_data[18:17];
endmodule
module ram_2x7 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [6:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [6:0] W0_data;
	reg [6:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 7'bxxxxxxx);
endmodule
module Queue2_AddrSizeLastBundle_4 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_addr,
	io_enq_bits_size,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_addr,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [5:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_size;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [5:0] io_deq_bits_addr;
	output wire io_deq_bits_last;
	wire [6:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x7 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_addr})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_addr = _ram_ext_R0_data[5:0];
	assign io_deq_bits_last = _ram_ext_R0_data[6];
endmodule
module AddressGenerator_4 (
	clock,
	reset,
	source_ready,
	source_valid,
	source_bits_addr,
	source_bits_len,
	source_bits_size,
	sink_ready,
	sink_valid,
	sink_bits_addr,
	sink_bits_last
);
	input clock;
	input reset;
	output wire source_ready;
	input source_valid;
	input [5:0] source_bits_addr;
	input [7:0] source_bits_len;
	input [2:0] source_bits_size;
	input sink_ready;
	output wire sink_valid;
	output wire [5:0] sink_bits_addr;
	output wire sink_bits_last;
	wire _sink__sinkBuffer_io_enq_ready;
	wire _source__sourceBuffer_io_deq_valid;
	wire [5:0] _source__sourceBuffer_io_deq_bits_addr;
	wire [7:0] _source__sourceBuffer_io_deq_bits_len;
	wire [2:0] _source__sourceBuffer_io_deq_bits_size;
	wire [1:0] _source__sourceBuffer_io_deq_bits_burst;
	reg [5:0] addr;
	reg [7:0] ctr;
	reg generating;
	wire sink__valid = _source__sourceBuffer_io_deq_valid & _sink__sinkBuffer_io_enq_ready;
	wire last = ctr == 8'h00;
	wire [12:0] _result_addr_T = {7'h00, addr} << _source__sourceBuffer_io_deq_bits_size;
	wire last_1 = _source__sourceBuffer_io_deq_bits_len == 8'h00;
	always @(posedge clock) begin
		if (sink__valid) begin
			if (generating) begin
				if (~last) begin
					if (_source__sourceBuffer_io_deq_bits_burst == 2'h1)
						addr <= addr + 6'h01;
					else if (_source__sourceBuffer_io_deq_bits_burst == 2'h2)
						addr <= (~_source__sourceBuffer_io_deq_bits_len[5:0] & addr) | (_source__sourceBuffer_io_deq_bits_len[5:0] & (addr + 6'h01));
					ctr <= ctr - 8'h01;
				end
			end
			else if (~last_1) begin
				addr <= (_source__sourceBuffer_io_deq_bits_addr >> _source__sourceBuffer_io_deq_bits_size) + 6'h01;
				ctr <= _source__sourceBuffer_io_deq_bits_len - 8'h01;
			end
		end
		if (reset)
			generating <= 1'h0;
		else if (sink__valid) begin
			if (generating)
				generating <= ~last & generating;
			else
				generating <= ~last_1 | generating;
		end
	end
	Queue2_AddrLenSizeBurstBundle_4 source__sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(source_ready),
		.io_enq_valid(source_valid),
		.io_enq_bits_addr(source_bits_addr),
		.io_enq_bits_len(source_bits_len),
		.io_enq_bits_size(source_bits_size),
		.io_deq_ready(sink__valid & (generating ? last : last_1)),
		.io_deq_valid(_source__sourceBuffer_io_deq_valid),
		.io_deq_bits_addr(_source__sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_len(_source__sourceBuffer_io_deq_bits_len),
		.io_deq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_deq_bits_burst(_source__sourceBuffer_io_deq_bits_burst)
	);
	Queue2_AddrSizeLastBundle_4 sink__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink__sinkBuffer_io_enq_ready),
		.io_enq_valid(sink__valid),
		.io_enq_bits_addr((~generating | (_source__sourceBuffer_io_deq_bits_burst == 2'h0) ? _source__sourceBuffer_io_deq_bits_addr : _result_addr_T[5:0])),
		.io_enq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_enq_bits_last((generating ? last : last_1)),
		.io_deq_ready(sink_ready),
		.io_deq_valid(sink_valid),
		.io_deq_bits_addr(sink_bits_addr),
		.io_deq_bits_last(sink_bits_last)
	);
endmodule
module ram_16x2 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [3:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire [1:0] R0_data;
	input [3:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [1:0] W0_data;
	reg [1:0] Memory [0:15];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 2'bxx);
endmodule
module Queue16_Bundle2 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits__1,
	io_enq_bits__2,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits__1,
	io_deq_bits__2
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits__1;
	input io_enq_bits__2;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits__1;
	output wire io_deq_bits__2;
	wire [1:0] _ram_ext_R0_data;
	reg [3:0] enq_ptr_value;
	reg [3:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 4'h0;
			deq_ptr_value <= 4'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 4'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 4'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_16x2 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits__2, io_enq_bits__1})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits__1 = _ram_ext_R0_data[0];
	assign io_deq_bits__2 = _ram_ext_R0_data[1];
endmodule
module SteerLeft_2 (
	dataIn,
	offsetIn,
	dataOut
);
	input [255:0] dataIn;
	input offsetIn;
	output wire [511:0] dataOut;
	assign dataOut = (offsetIn ? {dataIn, 256'h0000000000000000000000000000000000000000000000000000000000000000} : {256'h0000000000000000000000000000000000000000000000000000000000000000, dataIn});
endmodule
module ram_2x515 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [514:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [514:0] W0_data;
	reg [514:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 515'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_9 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_enq_bits_resp,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_resp,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [511:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [511:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [514:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x515 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_resp, io_enq_bits_data})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_data = _ram_ext_R0_data[511:0];
	assign io_deq_bits_resp = _ram_ext_R0_data[513:512];
	assign io_deq_bits_last = _ram_ext_R0_data[514];
endmodule
module SteerRight_1 (
	dataIn,
	offsetIn,
	dataOut
);
	input [511:0] dataIn;
	input offsetIn;
	output wire [255:0] dataOut;
	assign dataOut = (offsetIn ? dataIn[511:256] : dataIn[255:0]);
endmodule
module Downscale (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_size,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_size,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_w_bits_last,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [63:0] s_axi_ar_bits_addr;
	input [2:0] s_axi_ar_bits_size;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [2:0] s_axi_aw_bits_size;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_w_bits_last;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_resp;
	wire read_r_zipped_ready;
	wire _write_w_sinkBuffered__sinkBuffer_io_enq_ready;
	wire [31:0] _write_w_steerRightStrobe_dataOut;
	wire [255:0] _write_w_steerRight_dataOut;
	wire _write_offsetLastQueue_io_enq_ready;
	wire _write_offsetLastQueue_io_deq_valid;
	wire _write_offsetLastQueue_io_deq_bits__1;
	wire _write_offsetLastQueue_io_deq_bits__2;
	wire _write_addressGenerator_source_ready;
	wire _write_addressGenerator_sink_valid;
	wire [5:0] _write_addressGenerator_sink_bits_addr;
	wire _write_addressGenerator_sink_bits_last;
	wire _read_r_sinkBuffered__sinkBuffer_io_enq_ready;
	wire [511:0] _read_r_steerLeft_dataOut;
	wire _read_offsetLastQueue_io_enq_ready;
	wire _read_offsetLastQueue_io_deq_valid;
	wire _read_offsetLastQueue_io_deq_bits__1;
	wire _read_addressGenerator_source_ready;
	wire _read_addressGenerator_sink_valid;
	wire [5:0] _read_addressGenerator_sink_bits_addr;
	wire _read_addressGenerator_sink_bits_last;
	wire _read_ar_T = s_axi_ar_bits_size[2:1] != 2'h3;
	wire [2:0] read_ar_result_bits_size = (_read_ar_T ? s_axi_ar_bits_size : 3'h5);
	wire [7:0] read_ar_result_bits_len = (_read_ar_T ? 8'h00 : (8'h01 << (s_axi_ar_bits_size + 3'h3)) - 8'h01);
	reg read_ar_eagerFork_regs_0;
	reg read_ar_eagerFork_regs_1;
	wire read_ar_eagerFork_arTransformed_ready_qual1_0 = _read_addressGenerator_source_ready | read_ar_eagerFork_regs_0;
	wire read_ar_eagerFork_arTransformed_ready_qual1_1 = m_axi_ar_ready | read_ar_eagerFork_regs_1;
	wire read_ar_arTransformed_ready = read_ar_eagerFork_arTransformed_ready_qual1_0 & read_ar_eagerFork_arTransformed_ready_qual1_1;
	wire read_r_zipped_valid = m_axi_r_valid & _read_offsetLastQueue_io_deq_valid;
	wire m_axi_r_ready_0 = read_r_zipped_ready & read_r_zipped_valid;
	reg [511:0] read_r_dataReg;
	reg [1:0] read_r_respReg;
	assign read_r_zipped_ready = _read_r_sinkBuffered__sinkBuffer_io_enq_ready & read_r_zipped_valid;
	wire _read_r_T_1 = m_axi_r_bits_resp > read_r_respReg;
	wire [511:0] read_r_outputData = read_r_dataReg | _read_r_steerLeft_dataOut;
	wire _write_aw_T = s_axi_aw_bits_size[2:1] != 2'h3;
	wire [2:0] write_aw_result_bits_size = (_write_aw_T ? s_axi_aw_bits_size : 3'h5);
	wire [7:0] write_aw_result_bits_len = (_write_aw_T ? 8'h00 : (8'h01 << (s_axi_aw_bits_size + 3'h3)) - 8'h01);
	reg write_aw_eagerFork_regs_0;
	reg write_aw_eagerFork_regs_1;
	wire write_aw_eagerFork_awTransformed_ready_qual1_0 = _write_addressGenerator_source_ready | write_aw_eagerFork_regs_0;
	wire write_aw_eagerFork_awTransformed_ready_qual1_1 = m_axi_aw_ready | write_aw_eagerFork_regs_1;
	wire write_aw_awTransformed_ready = write_aw_eagerFork_awTransformed_ready_qual1_0 & write_aw_eagerFork_awTransformed_ready_qual1_1;
	wire _write_w_T = _write_w_sinkBuffered__sinkBuffer_io_enq_ready & s_axi_w_valid;
	wire _GEN = _write_w_T & _write_offsetLastQueue_io_deq_valid;
	always @(posedge clock)
		if (reset) begin
			read_ar_eagerFork_regs_0 <= 1'h0;
			read_ar_eagerFork_regs_1 <= 1'h0;
			read_r_dataReg <= 512'h0;
			read_r_respReg <= 2'h0;
			write_aw_eagerFork_regs_0 <= 1'h0;
			write_aw_eagerFork_regs_1 <= 1'h0;
		end
		else begin
			read_ar_eagerFork_regs_0 <= (read_ar_eagerFork_arTransformed_ready_qual1_0 & s_axi_ar_valid) & ~read_ar_arTransformed_ready;
			read_ar_eagerFork_regs_1 <= (read_ar_eagerFork_arTransformed_ready_qual1_1 & s_axi_ar_valid) & ~read_ar_arTransformed_ready;
			if (read_r_zipped_ready) begin
				if (m_axi_r_bits_last)
					read_r_dataReg <= 512'h0;
				else
					read_r_dataReg <= read_r_outputData;
			end
			if (read_r_zipped_ready & _read_r_T_1)
				read_r_respReg <= m_axi_r_bits_resp;
			write_aw_eagerFork_regs_0 <= (write_aw_eagerFork_awTransformed_ready_qual1_0 & s_axi_aw_valid) & ~write_aw_awTransformed_ready;
			write_aw_eagerFork_regs_1 <= (write_aw_eagerFork_awTransformed_ready_qual1_1 & s_axi_aw_valid) & ~write_aw_awTransformed_ready;
		end
	AddressGenerator_4 read_addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_read_addressGenerator_source_ready),
		.source_valid(s_axi_ar_valid & ~read_ar_eagerFork_regs_0),
		.source_bits_addr(s_axi_ar_bits_addr[5:0]),
		.source_bits_len(read_ar_result_bits_len),
		.source_bits_size(read_ar_result_bits_size),
		.sink_ready(_read_offsetLastQueue_io_enq_ready),
		.sink_valid(_read_addressGenerator_sink_valid),
		.sink_bits_addr(_read_addressGenerator_sink_bits_addr),
		.sink_bits_last(_read_addressGenerator_sink_bits_last)
	);
	Queue16_Bundle2 read_offsetLastQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_offsetLastQueue_io_enq_ready),
		.io_enq_valid(_read_addressGenerator_sink_valid),
		.io_enq_bits__1(_read_addressGenerator_sink_bits_addr[5]),
		.io_enq_bits__2(_read_addressGenerator_sink_bits_last),
		.io_deq_ready(m_axi_r_ready_0),
		.io_deq_valid(_read_offsetLastQueue_io_deq_valid),
		.io_deq_bits__1(_read_offsetLastQueue_io_deq_bits__1),
		.io_deq_bits__2()
	);
	SteerLeft_2 read_r_steerLeft(
		.dataIn(m_axi_r_bits_data),
		.offsetIn(_read_offsetLastQueue_io_deq_bits__1),
		.dataOut(_read_r_steerLeft_dataOut)
	);
	Queue2_ReadDataChannel_9 read_r_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_r_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(read_r_zipped_ready & m_axi_r_bits_last),
		.io_enq_bits_data(read_r_outputData),
		.io_enq_bits_resp((_read_r_T_1 ? m_axi_r_bits_resp : read_r_respReg)),
		.io_enq_bits_last(1'h1),
		.io_deq_ready(s_axi_r_ready),
		.io_deq_valid(s_axi_r_valid),
		.io_deq_bits_data(s_axi_r_bits_data),
		.io_deq_bits_resp(s_axi_r_bits_resp),
		.io_deq_bits_last(s_axi_r_bits_last)
	);
	AddressGenerator_4 write_addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_write_addressGenerator_source_ready),
		.source_valid(s_axi_aw_valid & ~write_aw_eagerFork_regs_0),
		.source_bits_addr(s_axi_aw_bits_addr[5:0]),
		.source_bits_len(write_aw_result_bits_len),
		.source_bits_size(write_aw_result_bits_size),
		.sink_ready(_write_offsetLastQueue_io_enq_ready),
		.sink_valid(_write_addressGenerator_sink_valid),
		.sink_bits_addr(_write_addressGenerator_sink_bits_addr),
		.sink_bits_last(_write_addressGenerator_sink_bits_last)
	);
	Queue16_Bundle2 write_offsetLastQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_offsetLastQueue_io_enq_ready),
		.io_enq_valid(_write_addressGenerator_sink_valid),
		.io_enq_bits__1(_write_addressGenerator_sink_bits_addr[5]),
		.io_enq_bits__2(_write_addressGenerator_sink_bits_last),
		.io_deq_ready(_GEN),
		.io_deq_valid(_write_offsetLastQueue_io_deq_valid),
		.io_deq_bits__1(_write_offsetLastQueue_io_deq_bits__1),
		.io_deq_bits__2(_write_offsetLastQueue_io_deq_bits__2)
	);
	SteerRight_1 write_w_steerRight(
		.dataIn(s_axi_w_bits_data),
		.offsetIn(_write_offsetLastQueue_io_deq_bits__1),
		.dataOut(_write_w_steerRight_dataOut)
	);
	SteerRight write_w_steerRightStrobe(
		.dataIn(s_axi_w_bits_strb),
		.offsetIn(_write_offsetLastQueue_io_deq_bits__1),
		.dataOut(_write_w_steerRightStrobe_dataOut)
	);
	Queue2_WriteDataChannel_5 write_w_sinkBuffered__sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_w_sinkBuffered__sinkBuffer_io_enq_ready),
		.io_enq_valid(_GEN),
		.io_enq_bits_data(_write_w_steerRight_dataOut),
		.io_enq_bits_strb(_write_w_steerRightStrobe_dataOut),
		.io_enq_bits_last(_write_offsetLastQueue_io_deq_bits__2),
		.io_deq_ready(m_axi_w_ready),
		.io_deq_valid(m_axi_w_valid),
		.io_deq_bits_data(m_axi_w_bits_data),
		.io_deq_bits_strb(m_axi_w_bits_strb),
		.io_deq_bits_last(m_axi_w_bits_last)
	);
	assign s_axi_ar_ready = read_ar_arTransformed_ready;
	assign s_axi_aw_ready = write_aw_awTransformed_ready;
	assign s_axi_w_ready = (_write_w_T & _write_offsetLastQueue_io_deq_valid) & _write_offsetLastQueue_io_deq_bits__2;
	assign s_axi_b_valid = m_axi_b_valid;
	assign s_axi_b_bits_resp = m_axi_b_bits_resp;
	assign m_axi_ar_valid = s_axi_ar_valid & ~read_ar_eagerFork_regs_1;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = read_ar_result_bits_len;
	assign m_axi_ar_bits_size = read_ar_result_bits_size;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_aw_valid = s_axi_aw_valid & ~write_aw_eagerFork_regs_1;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_len = write_aw_result_bits_len;
	assign m_axi_aw_bits_size = write_aw_result_bits_size;
	assign m_axi_aw_bits_lock = s_axi_aw_bits_lock;
	assign m_axi_aw_bits_cache = s_axi_aw_bits_cache;
	assign m_axi_aw_bits_prot = s_axi_aw_bits_prot;
	assign m_axi_aw_bits_qos = s_axi_aw_bits_qos;
	assign m_axi_aw_bits_region = s_axi_aw_bits_region;
	assign m_axi_b_ready = s_axi_b_ready;
endmodule
module ProtocolConverter_1 (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [1:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	wire _downscale_0_s_axi_ar_ready;
	wire _downscale_0_s_axi_r_valid;
	wire [511:0] _downscale_0_s_axi_r_bits_data;
	wire [1:0] _downscale_0_s_axi_r_bits_resp;
	wire _downscale_0_s_axi_r_bits_last;
	wire _downscale_0_s_axi_aw_ready;
	wire _downscale_0_s_axi_w_ready;
	wire _downscale_0_s_axi_b_valid;
	wire [1:0] _downscale_0_s_axi_b_bits_resp;
	wire _unburst1_0_m_axi_ar_valid;
	wire [63:0] _unburst1_0_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_0_m_axi_ar_bits_size;
	wire _unburst1_0_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_0_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_0_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_0_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_0_m_axi_ar_bits_region;
	wire _unburst1_0_m_axi_r_ready;
	wire _unburst1_0_m_axi_aw_valid;
	wire [63:0] _unburst1_0_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_0_m_axi_aw_bits_size;
	wire _unburst1_0_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_0_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_0_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_0_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_0_m_axi_aw_bits_region;
	wire _unburst1_0_m_axi_w_valid;
	wire [511:0] _unburst1_0_m_axi_w_bits_data;
	wire [63:0] _unburst1_0_m_axi_w_bits_strb;
	wire _unburst1_0_m_axi_b_ready;
	Unburst unburst1_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(s_axi_ar_ready),
		.s_axi_ar_valid(s_axi_ar_valid),
		.s_axi_ar_bits_addr(s_axi_ar_bits_addr),
		.s_axi_ar_bits_len(s_axi_ar_bits_len),
		.s_axi_ar_bits_size(s_axi_ar_bits_size),
		.s_axi_ar_bits_burst(s_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(s_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(s_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(s_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(s_axi_ar_bits_qos),
		.s_axi_ar_bits_region(s_axi_ar_bits_region),
		.s_axi_r_ready(s_axi_r_ready),
		.s_axi_r_valid(s_axi_r_valid),
		.s_axi_r_bits_data(s_axi_r_bits_data),
		.s_axi_r_bits_resp(s_axi_r_bits_resp),
		.s_axi_r_bits_last(s_axi_r_bits_last),
		.s_axi_aw_ready(s_axi_aw_ready),
		.s_axi_aw_valid(s_axi_aw_valid),
		.s_axi_aw_bits_addr(s_axi_aw_bits_addr),
		.s_axi_aw_bits_len(s_axi_aw_bits_len),
		.s_axi_aw_bits_size(s_axi_aw_bits_size),
		.s_axi_aw_bits_burst(s_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(s_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(s_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(s_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(s_axi_aw_bits_qos),
		.s_axi_aw_bits_region(s_axi_aw_bits_region),
		.s_axi_w_ready(s_axi_w_ready),
		.s_axi_w_valid(s_axi_w_valid),
		.s_axi_w_bits_data(s_axi_w_bits_data),
		.s_axi_w_bits_strb(s_axi_w_bits_strb),
		.s_axi_w_bits_last(s_axi_w_bits_last),
		.s_axi_b_ready(s_axi_b_ready),
		.s_axi_b_valid(s_axi_b_valid),
		.s_axi_b_bits_resp(s_axi_b_bits_resp),
		.m_axi_ar_ready(_downscale_0_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_0_m_axi_r_ready),
		.m_axi_r_valid(_downscale_0_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_0_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_0_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_0_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_0_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_0_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_0_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_0_m_axi_b_ready),
		.m_axi_b_valid(_downscale_0_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_0_s_axi_b_bits_resp)
	);
	Downscale downscale_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_0_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_0_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_0_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_0_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_0_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_0_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_0_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_0_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_0_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_0_m_axi_r_ready),
		.s_axi_r_valid(_downscale_0_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_0_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_0_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_0_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_0_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_0_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_0_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_0_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_0_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_0_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_0_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_0_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_0_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_0_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_0_m_axi_b_ready),
		.s_axi_b_valid(_downscale_0_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_0_s_axi_b_bits_resp),
		.m_axi_ar_ready(m_axi_ar_ready),
		.m_axi_ar_valid(m_axi_ar_valid),
		.m_axi_ar_bits_addr(m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(m_axi_ar_bits_len),
		.m_axi_ar_bits_size(m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(m_axi_ar_bits_region),
		.m_axi_r_ready(m_axi_r_ready),
		.m_axi_r_valid(m_axi_r_valid),
		.m_axi_r_bits_data(m_axi_r_bits_data),
		.m_axi_r_bits_resp(m_axi_r_bits_resp),
		.m_axi_r_bits_last(m_axi_r_bits_last),
		.m_axi_aw_ready(m_axi_aw_ready),
		.m_axi_aw_valid(m_axi_aw_valid),
		.m_axi_aw_bits_addr(m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(m_axi_aw_bits_len),
		.m_axi_aw_bits_size(m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(m_axi_aw_bits_region),
		.m_axi_w_ready(m_axi_w_ready),
		.m_axi_w_valid(m_axi_w_valid),
		.m_axi_w_bits_data(m_axi_w_bits_data),
		.m_axi_w_bits_strb(m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(m_axi_b_ready),
		.m_axi_b_valid(m_axi_b_valid),
		.m_axi_b_bits_resp(m_axi_b_bits_resp)
	);
	assign m_axi_ar_bits_id = 2'h0;
	assign m_axi_aw_bits_id = 2'h0;
endmodule
module AxiUserYanker_1 (
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_last,
	m_axi_b_ready,
	m_axi_b_valid
);
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [511:0] s_axi_r_bits_data;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [511:0] m_axi_r_bits_data;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [511:0] m_axi_w_bits_data;
	output wire m_axi_w_bits_last;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	assign s_axi_ar_ready = m_axi_ar_ready;
	assign s_axi_r_valid = m_axi_r_valid;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_r_bits_last = m_axi_r_bits_last;
	assign s_axi_aw_ready = m_axi_aw_ready;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = m_axi_b_valid;
	assign m_axi_ar_valid = s_axi_ar_valid;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = s_axi_ar_bits_len;
	assign m_axi_r_ready = s_axi_r_ready;
	assign m_axi_aw_valid = s_axi_aw_valid;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_len = s_axi_aw_bits_len;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
	assign m_axi_b_ready = s_axi_b_ready;
endmodule
module ram_2x577 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [576:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [576:0] W0_data;
	reg [576:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 577'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_WriteDataChannel_7 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_data,
	io_enq_bits_strb,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_data,
	io_deq_bits_strb,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [511:0] io_enq_bits_data;
	input [63:0] io_enq_bits_strb;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [511:0] io_deq_bits_data;
	output wire [63:0] io_deq_bits_strb;
	output wire io_deq_bits_last;
	wire [576:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x577 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_strb, io_enq_bits_data})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_data = _ram_ext_R0_data[511:0];
	assign io_deq_bits_strb = _ram_ext_R0_data[575:512];
	assign io_deq_bits_last = _ram_ext_R0_data[576];
endmodule
module elasticDemux_13 (
	io_source_ready,
	io_source_valid,
	io_source_bits_addr,
	io_source_bits_len,
	io_source_bits_size,
	io_source_bits_burst,
	io_source_bits_lock,
	io_source_bits_cache,
	io_source_bits_prot,
	io_source_bits_qos,
	io_source_bits_region,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_addr,
	io_sinks_0_bits_len,
	io_sinks_0_bits_size,
	io_sinks_0_bits_burst,
	io_sinks_0_bits_lock,
	io_sinks_0_bits_cache,
	io_sinks_0_bits_prot,
	io_sinks_0_bits_qos,
	io_sinks_0_bits_region,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_addr,
	io_sinks_1_bits_len,
	io_sinks_1_bits_size,
	io_sinks_1_bits_burst,
	io_sinks_1_bits_lock,
	io_sinks_1_bits_cache,
	io_sinks_1_bits_prot,
	io_sinks_1_bits_qos,
	io_sinks_1_bits_region,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [63:0] io_source_bits_addr;
	input [7:0] io_source_bits_len;
	input [2:0] io_source_bits_size;
	input [1:0] io_source_bits_burst;
	input io_source_bits_lock;
	input [3:0] io_source_bits_cache;
	input [2:0] io_source_bits_prot;
	input [3:0] io_source_bits_qos;
	input [3:0] io_source_bits_region;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [63:0] io_sinks_0_bits_addr;
	output wire [7:0] io_sinks_0_bits_len;
	output wire [2:0] io_sinks_0_bits_size;
	output wire [1:0] io_sinks_0_bits_burst;
	output wire io_sinks_0_bits_lock;
	output wire [3:0] io_sinks_0_bits_cache;
	output wire [2:0] io_sinks_0_bits_prot;
	output wire [3:0] io_sinks_0_bits_qos;
	output wire [3:0] io_sinks_0_bits_region;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [63:0] io_sinks_1_bits_addr;
	output wire [7:0] io_sinks_1_bits_len;
	output wire [2:0] io_sinks_1_bits_size;
	output wire [1:0] io_sinks_1_bits_burst;
	output wire io_sinks_1_bits_lock;
	output wire [3:0] io_sinks_1_bits_cache;
	output wire [2:0] io_sinks_1_bits_prot;
	output wire [3:0] io_sinks_1_bits_qos;
	output wire [3:0] io_sinks_1_bits_region;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_addr = io_source_bits_addr;
	assign io_sinks_0_bits_len = io_source_bits_len;
	assign io_sinks_0_bits_size = io_source_bits_size;
	assign io_sinks_0_bits_burst = io_source_bits_burst;
	assign io_sinks_0_bits_lock = io_source_bits_lock;
	assign io_sinks_0_bits_cache = io_source_bits_cache;
	assign io_sinks_0_bits_prot = io_source_bits_prot;
	assign io_sinks_0_bits_qos = io_source_bits_qos;
	assign io_sinks_0_bits_region = io_source_bits_region;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_addr = io_source_bits_addr;
	assign io_sinks_1_bits_len = io_source_bits_len;
	assign io_sinks_1_bits_size = io_source_bits_size;
	assign io_sinks_1_bits_burst = io_source_bits_burst;
	assign io_sinks_1_bits_lock = io_source_bits_lock;
	assign io_sinks_1_bits_cache = io_source_bits_cache;
	assign io_sinks_1_bits_prot = io_source_bits_prot;
	assign io_sinks_1_bits_qos = io_source_bits_qos;
	assign io_sinks_1_bits_region = io_source_bits_region;
	assign io_select_ready = fire;
endmodule
module ram_2x516 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [515:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [515:0] W0_data;
	reg [515:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 516'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_11 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_data,
	io_enq_bits_resp,
	io_enq_bits_last,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_data,
	io_deq_bits_resp,
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits_id;
	input [511:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits_id;
	output wire [511:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [515:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x516 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_resp, io_enq_bits_data, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[0];
	assign io_deq_bits_data = _ram_ext_R0_data[512:1];
	assign io_deq_bits_resp = _ram_ext_R0_data[514:513];
	assign io_deq_bits_last = _ram_ext_R0_data[515];
endmodule
module elasticBasicArbiter_6 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_data,
	io_sources_0_bits_resp,
	io_sources_0_bits_last,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_data,
	io_sources_1_bits_resp,
	io_sources_1_bits_last,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_data,
	io_sink_bits_resp,
	io_sink_bits_last
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [511:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [511:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	input io_sources_1_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire io_sink_bits_id;
	output wire [511:0] io_sink_bits_data;
	output wire [1:0] io_sink_bits_resp;
	output wire io_sink_bits_last;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg chooser_lastChoice;
	wire _GEN = (chooser_lastChoice ? io_sources_0_valid : io_sources_1_valid);
	wire choice = (_GEN ? ~chooser_lastChoice : ~io_sources_0_valid);
	wire fire = ((choice ? io_sources_1_valid : io_sources_0_valid) & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 1'h0;
		else if (fire) begin
			if (_GEN)
				chooser_lastChoice <= ~chooser_lastChoice;
			else
				chooser_lastChoice <= ~io_sources_0_valid;
		end
	Queue2_ReadDataChannel_11 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(choice),
		.io_enq_bits_data((choice ? io_sources_1_bits_data : io_sources_0_bits_data)),
		.io_enq_bits_resp((choice ? io_sources_1_bits_resp : io_sources_0_bits_resp)),
		.io_enq_bits_last((choice ? io_sources_1_bits_last : io_sources_0_bits_last)),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_data(io_sink_bits_data),
		.io_deq_bits_resp(io_sink_bits_resp),
		.io_deq_bits_last(io_sink_bits_last)
	);
	Queue2_UInt1 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & ~choice;
	assign io_sources_1_ready = fire & choice;
endmodule
module ram_8x1 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [2:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire R0_data;
	input [2:0] W0_addr;
	input W0_en;
	input W0_clk;
	input W0_data;
	reg Memory [0:7];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 1'bx);
endmodule
module Queue8_UInt1 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits;
	wire io_enq_ready_0;
	wire _ram_ext_R0_data;
	reg [2:0] enq_ptr_value;
	reg [2:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire io_deq_valid_0 = io_enq_valid | ~empty;
	wire do_deq = (~empty & io_deq_ready) & io_deq_valid_0;
	wire do_enq = (~(empty & io_deq_ready) & io_enq_ready_0) & io_enq_valid;
	assign io_enq_ready_0 = io_deq_ready | ~(ptr_match & maybe_full);
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 3'h0;
			deq_ptr_value <= 3'h0;
			maybe_full <= 1'h0;
		end
		else begin
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 3'h1;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 3'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_8x1 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = io_enq_ready_0;
	assign io_deq_valid = io_deq_valid_0;
	assign io_deq_bits = (empty ? io_enq_bits : _ram_ext_R0_data);
endmodule
module elasticDemux_15 (
	io_source_ready,
	io_source_valid,
	io_source_bits_data,
	io_source_bits_strb,
	io_source_bits_last,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_data,
	io_sinks_0_bits_strb,
	io_sinks_0_bits_last,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_data,
	io_sinks_1_bits_strb,
	io_sinks_1_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [511:0] io_source_bits_data;
	input [63:0] io_source_bits_strb;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [511:0] io_sinks_0_bits_data;
	output wire [63:0] io_sinks_0_bits_strb;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [511:0] io_sinks_1_bits_data;
	output wire [63:0] io_sinks_1_bits_strb;
	output wire io_sinks_1_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_strb = io_source_bits_strb;
	assign io_sinks_0_bits_last = io_source_bits_last;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_data = io_source_bits_data;
	assign io_sinks_1_bits_strb = io_source_bits_strb;
	assign io_sinks_1_bits_last = io_source_bits_last;
	assign io_select_ready = fire & io_source_bits_last;
endmodule
module Queue2_WriteResponseChannel_9 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_deq_ready,
	io_deq_valid
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_deq_ready;
	output wire io_deq_valid;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_enq;
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			do_enq = ~full & io_enq_valid;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
endmodule
module elasticBasicArbiter_7 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sink_ready,
	io_sink_valid
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input io_sink_ready;
	output wire io_sink_valid;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg chooser_lastChoice;
	wire _GEN = (chooser_lastChoice ? io_sources_0_valid : io_sources_1_valid);
	wire choice = (_GEN ? ~chooser_lastChoice : ~io_sources_0_valid);
	wire fire = ((choice ? io_sources_1_valid : io_sources_0_valid) & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 1'h0;
		else if (fire) begin
			if (_GEN)
				chooser_lastChoice <= ~chooser_lastChoice;
			else
				chooser_lastChoice <= ~io_sources_0_valid;
		end
	Queue2_WriteResponseChannel_9 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid)
	);
	Queue2_UInt1 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & ~choice;
	assign io_sources_1_ready = fire & choice;
endmodule
module IdDemux_1 (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	m_axi_0_ar_ready,
	m_axi_0_ar_valid,
	m_axi_0_ar_bits_addr,
	m_axi_0_ar_bits_len,
	m_axi_0_ar_bits_size,
	m_axi_0_ar_bits_burst,
	m_axi_0_ar_bits_lock,
	m_axi_0_ar_bits_cache,
	m_axi_0_ar_bits_prot,
	m_axi_0_ar_bits_qos,
	m_axi_0_ar_bits_region,
	m_axi_0_r_ready,
	m_axi_0_r_valid,
	m_axi_0_r_bits_data,
	m_axi_0_r_bits_resp,
	m_axi_0_r_bits_last,
	m_axi_0_aw_ready,
	m_axi_0_aw_valid,
	m_axi_0_aw_bits_addr,
	m_axi_0_aw_bits_len,
	m_axi_0_aw_bits_size,
	m_axi_0_aw_bits_burst,
	m_axi_0_aw_bits_lock,
	m_axi_0_aw_bits_cache,
	m_axi_0_aw_bits_prot,
	m_axi_0_aw_bits_qos,
	m_axi_0_aw_bits_region,
	m_axi_0_w_ready,
	m_axi_0_w_valid,
	m_axi_0_w_bits_data,
	m_axi_0_w_bits_strb,
	m_axi_0_w_bits_last,
	m_axi_0_b_ready,
	m_axi_0_b_valid,
	m_axi_1_ar_ready,
	m_axi_1_ar_valid,
	m_axi_1_ar_bits_addr,
	m_axi_1_ar_bits_len,
	m_axi_1_ar_bits_size,
	m_axi_1_ar_bits_burst,
	m_axi_1_ar_bits_lock,
	m_axi_1_ar_bits_cache,
	m_axi_1_ar_bits_prot,
	m_axi_1_ar_bits_qos,
	m_axi_1_ar_bits_region,
	m_axi_1_r_ready,
	m_axi_1_r_valid,
	m_axi_1_r_bits_data,
	m_axi_1_r_bits_resp,
	m_axi_1_r_bits_last,
	m_axi_1_aw_ready,
	m_axi_1_aw_valid,
	m_axi_1_aw_bits_addr,
	m_axi_1_aw_bits_len,
	m_axi_1_aw_bits_size,
	m_axi_1_aw_bits_burst,
	m_axi_1_aw_bits_lock,
	m_axi_1_aw_bits_cache,
	m_axi_1_aw_bits_prot,
	m_axi_1_aw_bits_qos,
	m_axi_1_aw_bits_region,
	m_axi_1_w_ready,
	m_axi_1_w_valid,
	m_axi_1_w_bits_data,
	m_axi_1_w_bits_strb,
	m_axi_1_w_bits_last,
	m_axi_1_b_ready,
	m_axi_1_b_valid
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire s_axi_r_bits_id;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	input m_axi_0_ar_ready;
	output wire m_axi_0_ar_valid;
	output wire [63:0] m_axi_0_ar_bits_addr;
	output wire [7:0] m_axi_0_ar_bits_len;
	output wire [2:0] m_axi_0_ar_bits_size;
	output wire [1:0] m_axi_0_ar_bits_burst;
	output wire m_axi_0_ar_bits_lock;
	output wire [3:0] m_axi_0_ar_bits_cache;
	output wire [2:0] m_axi_0_ar_bits_prot;
	output wire [3:0] m_axi_0_ar_bits_qos;
	output wire [3:0] m_axi_0_ar_bits_region;
	output wire m_axi_0_r_ready;
	input m_axi_0_r_valid;
	input [511:0] m_axi_0_r_bits_data;
	input [1:0] m_axi_0_r_bits_resp;
	input m_axi_0_r_bits_last;
	input m_axi_0_aw_ready;
	output wire m_axi_0_aw_valid;
	output wire [63:0] m_axi_0_aw_bits_addr;
	output wire [7:0] m_axi_0_aw_bits_len;
	output wire [2:0] m_axi_0_aw_bits_size;
	output wire [1:0] m_axi_0_aw_bits_burst;
	output wire m_axi_0_aw_bits_lock;
	output wire [3:0] m_axi_0_aw_bits_cache;
	output wire [2:0] m_axi_0_aw_bits_prot;
	output wire [3:0] m_axi_0_aw_bits_qos;
	output wire [3:0] m_axi_0_aw_bits_region;
	input m_axi_0_w_ready;
	output wire m_axi_0_w_valid;
	output wire [511:0] m_axi_0_w_bits_data;
	output wire [63:0] m_axi_0_w_bits_strb;
	output wire m_axi_0_w_bits_last;
	output wire m_axi_0_b_ready;
	input m_axi_0_b_valid;
	input m_axi_1_ar_ready;
	output wire m_axi_1_ar_valid;
	output wire [63:0] m_axi_1_ar_bits_addr;
	output wire [7:0] m_axi_1_ar_bits_len;
	output wire [2:0] m_axi_1_ar_bits_size;
	output wire [1:0] m_axi_1_ar_bits_burst;
	output wire m_axi_1_ar_bits_lock;
	output wire [3:0] m_axi_1_ar_bits_cache;
	output wire [2:0] m_axi_1_ar_bits_prot;
	output wire [3:0] m_axi_1_ar_bits_qos;
	output wire [3:0] m_axi_1_ar_bits_region;
	output wire m_axi_1_r_ready;
	input m_axi_1_r_valid;
	input [511:0] m_axi_1_r_bits_data;
	input [1:0] m_axi_1_r_bits_resp;
	input m_axi_1_r_bits_last;
	input m_axi_1_aw_ready;
	output wire m_axi_1_aw_valid;
	output wire [63:0] m_axi_1_aw_bits_addr;
	output wire [7:0] m_axi_1_aw_bits_len;
	output wire [2:0] m_axi_1_aw_bits_size;
	output wire [1:0] m_axi_1_aw_bits_burst;
	output wire m_axi_1_aw_bits_lock;
	output wire [3:0] m_axi_1_aw_bits_cache;
	output wire [2:0] m_axi_1_aw_bits_prot;
	output wire [3:0] m_axi_1_aw_bits_qos;
	output wire [3:0] m_axi_1_aw_bits_region;
	input m_axi_1_w_ready;
	output wire m_axi_1_w_valid;
	output wire [511:0] m_axi_1_w_bits_data;
	output wire [63:0] m_axi_1_w_bits_strb;
	output wire m_axi_1_w_bits_last;
	output wire m_axi_1_b_ready;
	input m_axi_1_b_valid;
	wire _write_demux_1_io_select_ready;
	wire _write_demux_io_source_ready;
	wire _write_demux_io_select_ready;
	wire _write_portQueue_io_enq_ready;
	wire _write_portQueue_io_deq_valid;
	wire _write_portQueue_io_deq_bits;
	wire _read_demux_io_source_ready;
	wire _read_demux_io_select_ready;
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	wire read_eagerFork_s_axi_ar_ready_qual1_0 = _read_demux_io_source_ready | read_eagerFork_regs_0;
	wire read_eagerFork_s_axi_ar_ready_qual1_1 = _read_demux_io_select_ready | read_eagerFork_regs_1;
	wire s_axi_ar_ready_0 = read_eagerFork_s_axi_ar_ready_qual1_0 & read_eagerFork_s_axi_ar_ready_qual1_1;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	reg write_eagerFork_regs_2;
	wire write_eagerFork_s_axi_aw_ready_qual1_0 = _write_demux_io_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_s_axi_aw_ready_qual1_1 = _write_demux_io_select_ready | write_eagerFork_regs_1;
	wire write_eagerFork_s_axi_aw_ready_qual1_2 = _write_portQueue_io_enq_ready | write_eagerFork_regs_2;
	wire s_axi_aw_ready_0 = (write_eagerFork_s_axi_aw_ready_qual1_0 & write_eagerFork_s_axi_aw_ready_qual1_1) & write_eagerFork_s_axi_aw_ready_qual1_2;
	always @(posedge clock)
		if (reset) begin
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_2 <= 1'h0;
		end
		else begin
			read_eagerFork_regs_0 <= (read_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_eagerFork_regs_1 <= (read_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			write_eagerFork_regs_0 <= (write_eagerFork_s_axi_aw_ready_qual1_0 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_s_axi_aw_ready_qual1_1 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_2 <= (write_eagerFork_s_axi_aw_ready_qual1_2 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
		end
	elasticDemux_13 read_demux(
		.io_source_ready(_read_demux_io_source_ready),
		.io_source_valid(s_axi_ar_valid & ~read_eagerFork_regs_0),
		.io_source_bits_addr(s_axi_ar_bits_addr),
		.io_source_bits_len(s_axi_ar_bits_len),
		.io_source_bits_size(s_axi_ar_bits_size),
		.io_source_bits_burst(s_axi_ar_bits_burst),
		.io_source_bits_lock(s_axi_ar_bits_lock),
		.io_source_bits_cache(s_axi_ar_bits_cache),
		.io_source_bits_prot(s_axi_ar_bits_prot),
		.io_source_bits_qos(s_axi_ar_bits_qos),
		.io_source_bits_region(s_axi_ar_bits_region),
		.io_sinks_0_ready(m_axi_0_ar_ready),
		.io_sinks_0_valid(m_axi_0_ar_valid),
		.io_sinks_0_bits_addr(m_axi_0_ar_bits_addr),
		.io_sinks_0_bits_len(m_axi_0_ar_bits_len),
		.io_sinks_0_bits_size(m_axi_0_ar_bits_size),
		.io_sinks_0_bits_burst(m_axi_0_ar_bits_burst),
		.io_sinks_0_bits_lock(m_axi_0_ar_bits_lock),
		.io_sinks_0_bits_cache(m_axi_0_ar_bits_cache),
		.io_sinks_0_bits_prot(m_axi_0_ar_bits_prot),
		.io_sinks_0_bits_qos(m_axi_0_ar_bits_qos),
		.io_sinks_0_bits_region(m_axi_0_ar_bits_region),
		.io_sinks_1_ready(m_axi_1_ar_ready),
		.io_sinks_1_valid(m_axi_1_ar_valid),
		.io_sinks_1_bits_addr(m_axi_1_ar_bits_addr),
		.io_sinks_1_bits_len(m_axi_1_ar_bits_len),
		.io_sinks_1_bits_size(m_axi_1_ar_bits_size),
		.io_sinks_1_bits_burst(m_axi_1_ar_bits_burst),
		.io_sinks_1_bits_lock(m_axi_1_ar_bits_lock),
		.io_sinks_1_bits_cache(m_axi_1_ar_bits_cache),
		.io_sinks_1_bits_prot(m_axi_1_ar_bits_prot),
		.io_sinks_1_bits_qos(m_axi_1_ar_bits_qos),
		.io_sinks_1_bits_region(m_axi_1_ar_bits_region),
		.io_select_ready(_read_demux_io_select_ready),
		.io_select_valid(s_axi_ar_valid & ~read_eagerFork_regs_1),
		.io_select_bits(s_axi_ar_bits_id)
	);
	elasticBasicArbiter_6 read_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(m_axi_0_r_ready),
		.io_sources_0_valid(m_axi_0_r_valid),
		.io_sources_0_bits_data(m_axi_0_r_bits_data),
		.io_sources_0_bits_resp(m_axi_0_r_bits_resp),
		.io_sources_0_bits_last(m_axi_0_r_bits_last),
		.io_sources_1_ready(m_axi_1_r_ready),
		.io_sources_1_valid(m_axi_1_r_valid),
		.io_sources_1_bits_data(m_axi_1_r_bits_data),
		.io_sources_1_bits_resp(m_axi_1_r_bits_resp),
		.io_sources_1_bits_last(m_axi_1_r_bits_last),
		.io_sink_ready(s_axi_r_ready),
		.io_sink_valid(s_axi_r_valid),
		.io_sink_bits_id(s_axi_r_bits_id),
		.io_sink_bits_data(s_axi_r_bits_data),
		.io_sink_bits_resp(s_axi_r_bits_resp),
		.io_sink_bits_last(s_axi_r_bits_last)
	);
	Queue8_UInt1 write_portQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueue_io_enq_ready),
		.io_enq_valid(s_axi_aw_valid & ~write_eagerFork_regs_2),
		.io_enq_bits(s_axi_aw_bits_id),
		.io_deq_ready(_write_demux_1_io_select_ready),
		.io_deq_valid(_write_portQueue_io_deq_valid),
		.io_deq_bits(_write_portQueue_io_deq_bits)
	);
	elasticDemux_13 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(s_axi_aw_valid & ~write_eagerFork_regs_0),
		.io_source_bits_addr(s_axi_aw_bits_addr),
		.io_source_bits_len(s_axi_aw_bits_len),
		.io_source_bits_size(s_axi_aw_bits_size),
		.io_source_bits_burst(s_axi_aw_bits_burst),
		.io_source_bits_lock(s_axi_aw_bits_lock),
		.io_source_bits_cache(s_axi_aw_bits_cache),
		.io_source_bits_prot(s_axi_aw_bits_prot),
		.io_source_bits_qos(s_axi_aw_bits_qos),
		.io_source_bits_region(s_axi_aw_bits_region),
		.io_sinks_0_ready(m_axi_0_aw_ready),
		.io_sinks_0_valid(m_axi_0_aw_valid),
		.io_sinks_0_bits_addr(m_axi_0_aw_bits_addr),
		.io_sinks_0_bits_len(m_axi_0_aw_bits_len),
		.io_sinks_0_bits_size(m_axi_0_aw_bits_size),
		.io_sinks_0_bits_burst(m_axi_0_aw_bits_burst),
		.io_sinks_0_bits_lock(m_axi_0_aw_bits_lock),
		.io_sinks_0_bits_cache(m_axi_0_aw_bits_cache),
		.io_sinks_0_bits_prot(m_axi_0_aw_bits_prot),
		.io_sinks_0_bits_qos(m_axi_0_aw_bits_qos),
		.io_sinks_0_bits_region(m_axi_0_aw_bits_region),
		.io_sinks_1_ready(m_axi_1_aw_ready),
		.io_sinks_1_valid(m_axi_1_aw_valid),
		.io_sinks_1_bits_addr(m_axi_1_aw_bits_addr),
		.io_sinks_1_bits_len(m_axi_1_aw_bits_len),
		.io_sinks_1_bits_size(m_axi_1_aw_bits_size),
		.io_sinks_1_bits_burst(m_axi_1_aw_bits_burst),
		.io_sinks_1_bits_lock(m_axi_1_aw_bits_lock),
		.io_sinks_1_bits_cache(m_axi_1_aw_bits_cache),
		.io_sinks_1_bits_prot(m_axi_1_aw_bits_prot),
		.io_sinks_1_bits_qos(m_axi_1_aw_bits_qos),
		.io_sinks_1_bits_region(m_axi_1_aw_bits_region),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(s_axi_aw_valid & ~write_eagerFork_regs_1),
		.io_select_bits(s_axi_aw_bits_id)
	);
	elasticDemux_15 write_demux_1(
		.io_source_ready(s_axi_w_ready),
		.io_source_valid(s_axi_w_valid),
		.io_source_bits_data(s_axi_w_bits_data),
		.io_source_bits_strb(s_axi_w_bits_strb),
		.io_source_bits_last(s_axi_w_bits_last),
		.io_sinks_0_ready(m_axi_0_w_ready),
		.io_sinks_0_valid(m_axi_0_w_valid),
		.io_sinks_0_bits_data(m_axi_0_w_bits_data),
		.io_sinks_0_bits_strb(m_axi_0_w_bits_strb),
		.io_sinks_0_bits_last(m_axi_0_w_bits_last),
		.io_sinks_1_ready(m_axi_1_w_ready),
		.io_sinks_1_valid(m_axi_1_w_valid),
		.io_sinks_1_bits_data(m_axi_1_w_bits_data),
		.io_sinks_1_bits_strb(m_axi_1_w_bits_strb),
		.io_sinks_1_bits_last(m_axi_1_w_bits_last),
		.io_select_ready(_write_demux_1_io_select_ready),
		.io_select_valid(_write_portQueue_io_deq_valid),
		.io_select_bits(_write_portQueue_io_deq_bits)
	);
	elasticBasicArbiter_7 write_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(m_axi_0_b_ready),
		.io_sources_0_valid(m_axi_0_b_valid),
		.io_sources_1_ready(m_axi_1_b_ready),
		.io_sources_1_valid(m_axi_1_b_valid),
		.io_sink_ready(s_axi_b_ready),
		.io_sink_valid(s_axi_b_valid)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
endmodule
module ram_2x94 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [93:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [93:0] W0_data;
	reg [93:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadAddressChannel_9 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [93:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x94 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[0];
	assign io_deq_bits_addr = _ram_ext_R0_data[64:1];
	assign io_deq_bits_len = _ram_ext_R0_data[72:65];
	assign io_deq_bits_size = _ram_ext_R0_data[75:73];
	assign io_deq_bits_burst = _ram_ext_R0_data[77:76];
	assign io_deq_bits_lock = _ram_ext_R0_data[78];
	assign io_deq_bits_cache = _ram_ext_R0_data[82:79];
	assign io_deq_bits_prot = _ram_ext_R0_data[85:83];
	assign io_deq_bits_qos = _ram_ext_R0_data[89:86];
	assign io_deq_bits_region = _ram_ext_R0_data[93:90];
endmodule
module elasticBasicArbiter_8 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_addr,
	io_sources_0_bits_len,
	io_sources_0_bits_size,
	io_sources_0_bits_lock,
	io_sources_0_bits_cache,
	io_sources_0_bits_prot,
	io_sources_0_bits_qos,
	io_sources_0_bits_region,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_addr,
	io_sources_1_bits_len,
	io_sources_1_bits_size,
	io_sources_1_bits_lock,
	io_sources_1_bits_cache,
	io_sources_1_bits_prot,
	io_sources_1_bits_qos,
	io_sources_1_bits_region,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_addr,
	io_sink_bits_len,
	io_sink_bits_size,
	io_sink_bits_burst,
	io_sink_bits_lock,
	io_sink_bits_cache,
	io_sink_bits_prot,
	io_sink_bits_qos,
	io_sink_bits_region
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits_addr;
	input [7:0] io_sources_0_bits_len;
	input [2:0] io_sources_0_bits_size;
	input io_sources_0_bits_lock;
	input [3:0] io_sources_0_bits_cache;
	input [2:0] io_sources_0_bits_prot;
	input [3:0] io_sources_0_bits_qos;
	input [3:0] io_sources_0_bits_region;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [63:0] io_sources_1_bits_addr;
	input [7:0] io_sources_1_bits_len;
	input [2:0] io_sources_1_bits_size;
	input io_sources_1_bits_lock;
	input [3:0] io_sources_1_bits_cache;
	input [2:0] io_sources_1_bits_prot;
	input [3:0] io_sources_1_bits_qos;
	input [3:0] io_sources_1_bits_region;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire io_sink_bits_id;
	output wire [63:0] io_sink_bits_addr;
	output wire [7:0] io_sink_bits_len;
	output wire [2:0] io_sink_bits_size;
	output wire [1:0] io_sink_bits_burst;
	output wire io_sink_bits_lock;
	output wire [3:0] io_sink_bits_cache;
	output wire [2:0] io_sink_bits_prot;
	output wire [3:0] io_sink_bits_qos;
	output wire [3:0] io_sink_bits_region;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg chooser_lastChoice;
	wire _GEN = (chooser_lastChoice ? io_sources_0_valid : io_sources_1_valid);
	wire choice = (_GEN ? ~chooser_lastChoice : ~io_sources_0_valid);
	wire fire = ((choice ? io_sources_1_valid : io_sources_0_valid) & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 1'h0;
		else if (fire) begin
			if (_GEN)
				chooser_lastChoice <= ~chooser_lastChoice;
			else
				chooser_lastChoice <= ~io_sources_0_valid;
		end
	Queue2_ReadAddressChannel_9 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(choice),
		.io_enq_bits_addr((choice ? io_sources_1_bits_addr : io_sources_0_bits_addr)),
		.io_enq_bits_len((choice ? io_sources_1_bits_len : io_sources_0_bits_len)),
		.io_enq_bits_size((choice ? io_sources_1_bits_size : io_sources_0_bits_size)),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock((choice ? io_sources_1_bits_lock : io_sources_0_bits_lock)),
		.io_enq_bits_cache((choice ? io_sources_1_bits_cache : io_sources_0_bits_cache)),
		.io_enq_bits_prot((choice ? io_sources_1_bits_prot : io_sources_0_bits_prot)),
		.io_enq_bits_qos((choice ? io_sources_1_bits_qos : io_sources_0_bits_qos)),
		.io_enq_bits_region((choice ? io_sources_1_bits_region : io_sources_0_bits_region)),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_addr(io_sink_bits_addr),
		.io_deq_bits_len(io_sink_bits_len),
		.io_deq_bits_size(io_sink_bits_size),
		.io_deq_bits_burst(io_sink_bits_burst),
		.io_deq_bits_lock(io_sink_bits_lock),
		.io_deq_bits_cache(io_sink_bits_cache),
		.io_deq_bits_prot(io_sink_bits_prot),
		.io_deq_bits_qos(io_sink_bits_qos),
		.io_deq_bits_region(io_sink_bits_region)
	);
	Queue2_UInt1 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & ~choice;
	assign io_sources_1_ready = fire & choice;
endmodule
module elasticDemux_16 (
	io_source_ready,
	io_source_valid,
	io_source_bits_data,
	io_source_bits_resp,
	io_source_bits_last,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_data,
	io_sinks_0_bits_resp,
	io_sinks_0_bits_last,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_data,
	io_sinks_1_bits_resp,
	io_sinks_1_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [255:0] io_source_bits_data;
	input [1:0] io_source_bits_resp;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [255:0] io_sinks_0_bits_data;
	output wire [1:0] io_sinks_0_bits_resp;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [255:0] io_sinks_1_bits_data;
	output wire [1:0] io_sinks_1_bits_resp;
	output wire io_sinks_1_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_0_bits_last = io_source_bits_last;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_data = io_source_bits_data;
	assign io_sinks_1_bits_resp = io_source_bits_resp;
	assign io_sinks_1_bits_last = io_source_bits_last;
	assign io_select_ready = fire;
endmodule
module ram_32x1 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input [4:0] R0_addr;
	input R0_en;
	input R0_clk;
	output wire R0_data;
	input [4:0] W0_addr;
	input W0_en;
	input W0_clk;
	input W0_data;
	reg Memory [0:31];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 1'bx);
endmodule
module Queue32_UInt1 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits;
	wire io_enq_ready_0;
	wire _ram_ext_R0_data;
	reg [4:0] enq_ptr_value;
	reg [4:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire io_deq_valid_0 = io_enq_valid | ~empty;
	wire do_deq = (~empty & io_deq_ready) & io_deq_valid_0;
	wire do_enq = (~(empty & io_deq_ready) & io_enq_ready_0) & io_enq_valid;
	assign io_enq_ready_0 = io_deq_ready | ~(ptr_match & maybe_full);
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 5'h00;
			deq_ptr_value <= 5'h00;
			maybe_full <= 1'h0;
		end
		else begin
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 5'h01;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 5'h01;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_32x1 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits)
	);
	assign io_enq_ready = io_enq_ready_0;
	assign io_deq_valid = io_deq_valid_0;
	assign io_deq_bits = (empty ? io_enq_bits : _ram_ext_R0_data);
endmodule
module Queue2_WriteAddressChannel_8 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_addr,
	io_enq_bits_len,
	io_enq_bits_size,
	io_enq_bits_burst,
	io_enq_bits_lock,
	io_enq_bits_cache,
	io_enq_bits_prot,
	io_enq_bits_qos,
	io_enq_bits_region,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_addr,
	io_deq_bits_len,
	io_deq_bits_size,
	io_deq_bits_burst,
	io_deq_bits_lock,
	io_deq_bits_cache,
	io_deq_bits_prot,
	io_deq_bits_qos,
	io_deq_bits_region
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits_id;
	input [63:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_enq_bits_lock;
	input [3:0] io_enq_bits_cache;
	input [2:0] io_enq_bits_prot;
	input [3:0] io_enq_bits_qos;
	input [3:0] io_enq_bits_region;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	output wire io_deq_bits_lock;
	output wire [3:0] io_deq_bits_cache;
	output wire [2:0] io_deq_bits_prot;
	output wire [3:0] io_deq_bits_qos;
	output wire [3:0] io_deq_bits_region;
	wire [93:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x94 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_region, io_enq_bits_qos, io_enq_bits_prot, io_enq_bits_cache, io_enq_bits_lock, io_enq_bits_burst, io_enq_bits_size, io_enq_bits_len, io_enq_bits_addr, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[0];
	assign io_deq_bits_addr = _ram_ext_R0_data[64:1];
	assign io_deq_bits_len = _ram_ext_R0_data[72:65];
	assign io_deq_bits_size = _ram_ext_R0_data[75:73];
	assign io_deq_bits_burst = _ram_ext_R0_data[77:76];
	assign io_deq_bits_lock = _ram_ext_R0_data[78];
	assign io_deq_bits_cache = _ram_ext_R0_data[82:79];
	assign io_deq_bits_prot = _ram_ext_R0_data[85:83];
	assign io_deq_bits_qos = _ram_ext_R0_data[89:86];
	assign io_deq_bits_region = _ram_ext_R0_data[93:90];
endmodule
module elasticBasicArbiter_9 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_addr,
	io_sources_0_bits_len,
	io_sources_0_bits_size,
	io_sources_0_bits_lock,
	io_sources_0_bits_cache,
	io_sources_0_bits_prot,
	io_sources_0_bits_qos,
	io_sources_0_bits_region,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_addr,
	io_sources_1_bits_len,
	io_sources_1_bits_size,
	io_sources_1_bits_lock,
	io_sources_1_bits_cache,
	io_sources_1_bits_prot,
	io_sources_1_bits_qos,
	io_sources_1_bits_region,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_addr,
	io_sink_bits_len,
	io_sink_bits_size,
	io_sink_bits_burst,
	io_sink_bits_lock,
	io_sink_bits_cache,
	io_sink_bits_prot,
	io_sink_bits_qos,
	io_sink_bits_region,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [63:0] io_sources_0_bits_addr;
	input [7:0] io_sources_0_bits_len;
	input [2:0] io_sources_0_bits_size;
	input io_sources_0_bits_lock;
	input [3:0] io_sources_0_bits_cache;
	input [2:0] io_sources_0_bits_prot;
	input [3:0] io_sources_0_bits_qos;
	input [3:0] io_sources_0_bits_region;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [63:0] io_sources_1_bits_addr;
	input [7:0] io_sources_1_bits_len;
	input [2:0] io_sources_1_bits_size;
	input io_sources_1_bits_lock;
	input [3:0] io_sources_1_bits_cache;
	input [2:0] io_sources_1_bits_prot;
	input [3:0] io_sources_1_bits_qos;
	input [3:0] io_sources_1_bits_region;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire io_sink_bits_id;
	output wire [63:0] io_sink_bits_addr;
	output wire [7:0] io_sink_bits_len;
	output wire [2:0] io_sink_bits_size;
	output wire [1:0] io_sink_bits_burst;
	output wire io_sink_bits_lock;
	output wire [3:0] io_sink_bits_cache;
	output wire [2:0] io_sink_bits_prot;
	output wire [3:0] io_sink_bits_qos;
	output wire [3:0] io_sink_bits_region;
	input io_select_ready;
	output wire io_select_valid;
	output wire io_select_bits;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	reg chooser_lastChoice;
	wire _GEN = (chooser_lastChoice ? io_sources_0_valid : io_sources_1_valid);
	wire choice = (_GEN ? ~chooser_lastChoice : ~io_sources_0_valid);
	wire fire = ((choice ? io_sources_1_valid : io_sources_0_valid) & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 1'h0;
		else if (fire) begin
			if (_GEN)
				chooser_lastChoice <= ~chooser_lastChoice;
			else
				chooser_lastChoice <= ~io_sources_0_valid;
		end
	Queue2_WriteAddressChannel_8 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(choice),
		.io_enq_bits_addr((choice ? io_sources_1_bits_addr : io_sources_0_bits_addr)),
		.io_enq_bits_len((choice ? io_sources_1_bits_len : io_sources_0_bits_len)),
		.io_enq_bits_size((choice ? io_sources_1_bits_size : io_sources_0_bits_size)),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock((choice ? io_sources_1_bits_lock : io_sources_0_bits_lock)),
		.io_enq_bits_cache((choice ? io_sources_1_bits_cache : io_sources_0_bits_cache)),
		.io_enq_bits_prot((choice ? io_sources_1_bits_prot : io_sources_0_bits_prot)),
		.io_enq_bits_qos((choice ? io_sources_1_bits_qos : io_sources_0_bits_qos)),
		.io_enq_bits_region((choice ? io_sources_1_bits_region : io_sources_0_bits_region)),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_addr(io_sink_bits_addr),
		.io_deq_bits_len(io_sink_bits_len),
		.io_deq_bits_size(io_sink_bits_size),
		.io_deq_bits_burst(io_sink_bits_burst),
		.io_deq_bits_lock(io_sink_bits_lock),
		.io_deq_bits_cache(io_sink_bits_cache),
		.io_deq_bits_prot(io_sink_bits_prot),
		.io_deq_bits_qos(io_sink_bits_qos),
		.io_deq_bits_region(io_sink_bits_region)
	);
	Queue2_UInt1 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(io_select_ready),
		.io_deq_valid(io_select_valid),
		.io_deq_bits(io_select_bits)
	);
	assign io_sources_0_ready = fire & ~choice;
	assign io_sources_1_ready = fire & choice;
endmodule
module elasticMux_3 (
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_data,
	io_sources_0_bits_strb,
	io_sources_0_bits_last,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_data,
	io_sources_1_bits_strb,
	io_sources_1_bits_last,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_data,
	io_sink_bits_strb,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [255:0] io_sources_0_bits_data;
	input [31:0] io_sources_0_bits_strb;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [255:0] io_sources_1_bits_data;
	input [31:0] io_sources_1_bits_strb;
	input io_sources_1_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [255:0] io_sink_bits_data;
	output wire [31:0] io_sink_bits_strb;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & (io_select_bits ? io_sources_1_valid : io_sources_0_valid);
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & ~io_select_bits;
	assign io_sources_1_ready = fire & io_select_bits;
	assign io_sink_valid = valid;
	assign io_sink_bits_data = (io_select_bits ? io_sources_1_bits_data : io_sources_0_bits_data);
	assign io_sink_bits_strb = (io_select_bits ? io_sources_1_bits_strb : io_sources_0_bits_strb);
	assign io_select_ready = fire & (io_select_bits ? io_sources_1_bits_last : io_sources_0_bits_last);
endmodule
module elasticDemux_17 (
	io_source_ready,
	io_source_valid,
	io_source_bits_id,
	io_source_bits_resp,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_id,
	io_sinks_0_bits_resp,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_id,
	io_sinks_1_bits_resp,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input io_source_bits_id;
	input [1:0] io_source_bits_resp;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire io_sinks_0_bits_id;
	output wire [1:0] io_sinks_0_bits_resp;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire io_sinks_1_bits_id;
	output wire [1:0] io_sinks_1_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_id = io_source_bits_id;
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_id = io_source_bits_id;
	assign io_sinks_1_bits_resp = io_source_bits_resp;
	assign io_select_ready = fire;
endmodule
module IdMux_1 (
	clock,
	reset,
	s_axi_0_ar_ready,
	s_axi_0_ar_valid,
	s_axi_0_ar_bits_addr,
	s_axi_0_ar_bits_len,
	s_axi_0_ar_bits_size,
	s_axi_0_ar_bits_lock,
	s_axi_0_ar_bits_cache,
	s_axi_0_ar_bits_prot,
	s_axi_0_ar_bits_qos,
	s_axi_0_ar_bits_region,
	s_axi_0_r_ready,
	s_axi_0_r_valid,
	s_axi_0_r_bits_data,
	s_axi_0_r_bits_resp,
	s_axi_0_r_bits_last,
	s_axi_0_aw_ready,
	s_axi_0_aw_valid,
	s_axi_0_aw_bits_addr,
	s_axi_0_aw_bits_len,
	s_axi_0_aw_bits_size,
	s_axi_0_aw_bits_lock,
	s_axi_0_aw_bits_cache,
	s_axi_0_aw_bits_prot,
	s_axi_0_aw_bits_qos,
	s_axi_0_aw_bits_region,
	s_axi_0_w_ready,
	s_axi_0_w_valid,
	s_axi_0_w_bits_data,
	s_axi_0_w_bits_strb,
	s_axi_0_w_bits_last,
	s_axi_0_b_ready,
	s_axi_0_b_valid,
	s_axi_0_b_bits_resp,
	s_axi_1_ar_ready,
	s_axi_1_ar_valid,
	s_axi_1_ar_bits_addr,
	s_axi_1_ar_bits_len,
	s_axi_1_ar_bits_size,
	s_axi_1_ar_bits_lock,
	s_axi_1_ar_bits_cache,
	s_axi_1_ar_bits_prot,
	s_axi_1_ar_bits_qos,
	s_axi_1_ar_bits_region,
	s_axi_1_r_ready,
	s_axi_1_r_valid,
	s_axi_1_r_bits_data,
	s_axi_1_r_bits_resp,
	s_axi_1_r_bits_last,
	s_axi_1_aw_ready,
	s_axi_1_aw_valid,
	s_axi_1_aw_bits_addr,
	s_axi_1_aw_bits_len,
	s_axi_1_aw_bits_size,
	s_axi_1_aw_bits_lock,
	s_axi_1_aw_bits_cache,
	s_axi_1_aw_bits_prot,
	s_axi_1_aw_bits_qos,
	s_axi_1_aw_bits_region,
	s_axi_1_w_ready,
	s_axi_1_w_valid,
	s_axi_1_w_bits_data,
	s_axi_1_w_bits_strb,
	s_axi_1_w_bits_last,
	s_axi_1_b_ready,
	s_axi_1_b_valid,
	s_axi_1_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_0_ar_ready;
	input s_axi_0_ar_valid;
	input [63:0] s_axi_0_ar_bits_addr;
	input [7:0] s_axi_0_ar_bits_len;
	input [2:0] s_axi_0_ar_bits_size;
	input s_axi_0_ar_bits_lock;
	input [3:0] s_axi_0_ar_bits_cache;
	input [2:0] s_axi_0_ar_bits_prot;
	input [3:0] s_axi_0_ar_bits_qos;
	input [3:0] s_axi_0_ar_bits_region;
	input s_axi_0_r_ready;
	output wire s_axi_0_r_valid;
	output wire [255:0] s_axi_0_r_bits_data;
	output wire [1:0] s_axi_0_r_bits_resp;
	output wire s_axi_0_r_bits_last;
	output wire s_axi_0_aw_ready;
	input s_axi_0_aw_valid;
	input [63:0] s_axi_0_aw_bits_addr;
	input [7:0] s_axi_0_aw_bits_len;
	input [2:0] s_axi_0_aw_bits_size;
	input s_axi_0_aw_bits_lock;
	input [3:0] s_axi_0_aw_bits_cache;
	input [2:0] s_axi_0_aw_bits_prot;
	input [3:0] s_axi_0_aw_bits_qos;
	input [3:0] s_axi_0_aw_bits_region;
	output wire s_axi_0_w_ready;
	input s_axi_0_w_valid;
	input [255:0] s_axi_0_w_bits_data;
	input [31:0] s_axi_0_w_bits_strb;
	input s_axi_0_w_bits_last;
	input s_axi_0_b_ready;
	output wire s_axi_0_b_valid;
	output wire [1:0] s_axi_0_b_bits_resp;
	output wire s_axi_1_ar_ready;
	input s_axi_1_ar_valid;
	input [63:0] s_axi_1_ar_bits_addr;
	input [7:0] s_axi_1_ar_bits_len;
	input [2:0] s_axi_1_ar_bits_size;
	input s_axi_1_ar_bits_lock;
	input [3:0] s_axi_1_ar_bits_cache;
	input [2:0] s_axi_1_ar_bits_prot;
	input [3:0] s_axi_1_ar_bits_qos;
	input [3:0] s_axi_1_ar_bits_region;
	input s_axi_1_r_ready;
	output wire s_axi_1_r_valid;
	output wire [255:0] s_axi_1_r_bits_data;
	output wire [1:0] s_axi_1_r_bits_resp;
	output wire s_axi_1_r_bits_last;
	output wire s_axi_1_aw_ready;
	input s_axi_1_aw_valid;
	input [63:0] s_axi_1_aw_bits_addr;
	input [7:0] s_axi_1_aw_bits_len;
	input [2:0] s_axi_1_aw_bits_size;
	input s_axi_1_aw_bits_lock;
	input [3:0] s_axi_1_aw_bits_cache;
	input [2:0] s_axi_1_aw_bits_prot;
	input [3:0] s_axi_1_aw_bits_qos;
	input [3:0] s_axi_1_aw_bits_region;
	output wire s_axi_1_w_ready;
	input s_axi_1_w_valid;
	input [255:0] s_axi_1_w_bits_data;
	input [31:0] s_axi_1_w_bits_strb;
	input s_axi_1_w_bits_last;
	input s_axi_1_b_ready;
	output wire s_axi_1_b_valid;
	output wire [1:0] s_axi_1_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input m_axi_r_bits_id;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	wire _write_demux_io_source_ready;
	wire _write_demux_io_select_ready;
	wire _write_mux_io_select_ready;
	wire _write_arbiter_io_select_valid;
	wire _write_arbiter_io_select_bits;
	wire _write_portQueue_io_enq_ready;
	wire _write_portQueue_io_deq_valid;
	wire _write_portQueue_io_deq_bits;
	wire _read_demux_io_source_ready;
	wire _read_demux_io_select_ready;
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	wire read_eagerFork_m_axi_r_ready_qual1_0 = _read_demux_io_source_ready | read_eagerFork_regs_0;
	wire read_eagerFork_m_axi_r_ready_qual1_1 = _read_demux_io_select_ready | read_eagerFork_regs_1;
	wire m_axi_r_ready_0 = read_eagerFork_m_axi_r_ready_qual1_0 & read_eagerFork_m_axi_r_ready_qual1_1;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	wire write_eagerFork_m_axi_b_ready_qual1_0 = _write_demux_io_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_m_axi_b_ready_qual1_1 = _write_demux_io_select_ready | write_eagerFork_regs_1;
	wire m_axi_b_ready_0 = write_eagerFork_m_axi_b_ready_qual1_0 & write_eagerFork_m_axi_b_ready_qual1_1;
	always @(posedge clock)
		if (reset) begin
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
		end
		else begin
			read_eagerFork_regs_0 <= (read_eagerFork_m_axi_r_ready_qual1_0 & m_axi_r_valid) & ~m_axi_r_ready_0;
			read_eagerFork_regs_1 <= (read_eagerFork_m_axi_r_ready_qual1_1 & m_axi_r_valid) & ~m_axi_r_ready_0;
			write_eagerFork_regs_0 <= (write_eagerFork_m_axi_b_ready_qual1_0 & m_axi_b_valid) & ~m_axi_b_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_m_axi_b_ready_qual1_1 & m_axi_b_valid) & ~m_axi_b_ready_0;
		end
	elasticBasicArbiter_8 read_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(s_axi_0_ar_ready),
		.io_sources_0_valid(s_axi_0_ar_valid),
		.io_sources_0_bits_addr(s_axi_0_ar_bits_addr),
		.io_sources_0_bits_len(s_axi_0_ar_bits_len),
		.io_sources_0_bits_size(s_axi_0_ar_bits_size),
		.io_sources_0_bits_lock(s_axi_0_ar_bits_lock),
		.io_sources_0_bits_cache(s_axi_0_ar_bits_cache),
		.io_sources_0_bits_prot(s_axi_0_ar_bits_prot),
		.io_sources_0_bits_qos(s_axi_0_ar_bits_qos),
		.io_sources_0_bits_region(s_axi_0_ar_bits_region),
		.io_sources_1_ready(s_axi_1_ar_ready),
		.io_sources_1_valid(s_axi_1_ar_valid),
		.io_sources_1_bits_addr(s_axi_1_ar_bits_addr),
		.io_sources_1_bits_len(s_axi_1_ar_bits_len),
		.io_sources_1_bits_size(s_axi_1_ar_bits_size),
		.io_sources_1_bits_lock(s_axi_1_ar_bits_lock),
		.io_sources_1_bits_cache(s_axi_1_ar_bits_cache),
		.io_sources_1_bits_prot(s_axi_1_ar_bits_prot),
		.io_sources_1_bits_qos(s_axi_1_ar_bits_qos),
		.io_sources_1_bits_region(s_axi_1_ar_bits_region),
		.io_sink_ready(m_axi_ar_ready),
		.io_sink_valid(m_axi_ar_valid),
		.io_sink_bits_id(m_axi_ar_bits_id),
		.io_sink_bits_addr(m_axi_ar_bits_addr),
		.io_sink_bits_len(m_axi_ar_bits_len),
		.io_sink_bits_size(m_axi_ar_bits_size),
		.io_sink_bits_burst(m_axi_ar_bits_burst),
		.io_sink_bits_lock(m_axi_ar_bits_lock),
		.io_sink_bits_cache(m_axi_ar_bits_cache),
		.io_sink_bits_prot(m_axi_ar_bits_prot),
		.io_sink_bits_qos(m_axi_ar_bits_qos),
		.io_sink_bits_region(m_axi_ar_bits_region)
	);
	elasticDemux_16 read_demux(
		.io_source_ready(_read_demux_io_source_ready),
		.io_source_valid(m_axi_r_valid & ~read_eagerFork_regs_0),
		.io_source_bits_data(m_axi_r_bits_data),
		.io_source_bits_resp(m_axi_r_bits_resp),
		.io_source_bits_last(m_axi_r_bits_last),
		.io_sinks_0_ready(s_axi_0_r_ready),
		.io_sinks_0_valid(s_axi_0_r_valid),
		.io_sinks_0_bits_data(s_axi_0_r_bits_data),
		.io_sinks_0_bits_resp(s_axi_0_r_bits_resp),
		.io_sinks_0_bits_last(s_axi_0_r_bits_last),
		.io_sinks_1_ready(s_axi_1_r_ready),
		.io_sinks_1_valid(s_axi_1_r_valid),
		.io_sinks_1_bits_data(s_axi_1_r_bits_data),
		.io_sinks_1_bits_resp(s_axi_1_r_bits_resp),
		.io_sinks_1_bits_last(s_axi_1_r_bits_last),
		.io_select_ready(_read_demux_io_select_ready),
		.io_select_valid(m_axi_r_valid & ~read_eagerFork_regs_1),
		.io_select_bits(m_axi_r_bits_id)
	);
	Queue32_UInt1 write_portQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueue_io_enq_ready),
		.io_enq_valid(_write_arbiter_io_select_valid),
		.io_enq_bits(_write_arbiter_io_select_bits),
		.io_deq_ready(_write_mux_io_select_ready),
		.io_deq_valid(_write_portQueue_io_deq_valid),
		.io_deq_bits(_write_portQueue_io_deq_bits)
	);
	elasticBasicArbiter_9 write_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(s_axi_0_aw_ready),
		.io_sources_0_valid(s_axi_0_aw_valid),
		.io_sources_0_bits_addr(s_axi_0_aw_bits_addr),
		.io_sources_0_bits_len(s_axi_0_aw_bits_len),
		.io_sources_0_bits_size(s_axi_0_aw_bits_size),
		.io_sources_0_bits_lock(s_axi_0_aw_bits_lock),
		.io_sources_0_bits_cache(s_axi_0_aw_bits_cache),
		.io_sources_0_bits_prot(s_axi_0_aw_bits_prot),
		.io_sources_0_bits_qos(s_axi_0_aw_bits_qos),
		.io_sources_0_bits_region(s_axi_0_aw_bits_region),
		.io_sources_1_ready(s_axi_1_aw_ready),
		.io_sources_1_valid(s_axi_1_aw_valid),
		.io_sources_1_bits_addr(s_axi_1_aw_bits_addr),
		.io_sources_1_bits_len(s_axi_1_aw_bits_len),
		.io_sources_1_bits_size(s_axi_1_aw_bits_size),
		.io_sources_1_bits_lock(s_axi_1_aw_bits_lock),
		.io_sources_1_bits_cache(s_axi_1_aw_bits_cache),
		.io_sources_1_bits_prot(s_axi_1_aw_bits_prot),
		.io_sources_1_bits_qos(s_axi_1_aw_bits_qos),
		.io_sources_1_bits_region(s_axi_1_aw_bits_region),
		.io_sink_ready(m_axi_aw_ready),
		.io_sink_valid(m_axi_aw_valid),
		.io_sink_bits_id(m_axi_aw_bits_id),
		.io_sink_bits_addr(m_axi_aw_bits_addr),
		.io_sink_bits_len(m_axi_aw_bits_len),
		.io_sink_bits_size(m_axi_aw_bits_size),
		.io_sink_bits_burst(m_axi_aw_bits_burst),
		.io_sink_bits_lock(m_axi_aw_bits_lock),
		.io_sink_bits_cache(m_axi_aw_bits_cache),
		.io_sink_bits_prot(m_axi_aw_bits_prot),
		.io_sink_bits_qos(m_axi_aw_bits_qos),
		.io_sink_bits_region(m_axi_aw_bits_region),
		.io_select_ready(_write_portQueue_io_enq_ready),
		.io_select_valid(_write_arbiter_io_select_valid),
		.io_select_bits(_write_arbiter_io_select_bits)
	);
	elasticMux_3 write_mux(
		.io_sources_0_ready(s_axi_0_w_ready),
		.io_sources_0_valid(s_axi_0_w_valid),
		.io_sources_0_bits_data(s_axi_0_w_bits_data),
		.io_sources_0_bits_strb(s_axi_0_w_bits_strb),
		.io_sources_0_bits_last(s_axi_0_w_bits_last),
		.io_sources_1_ready(s_axi_1_w_ready),
		.io_sources_1_valid(s_axi_1_w_valid),
		.io_sources_1_bits_data(s_axi_1_w_bits_data),
		.io_sources_1_bits_strb(s_axi_1_w_bits_strb),
		.io_sources_1_bits_last(s_axi_1_w_bits_last),
		.io_sink_ready(m_axi_w_ready),
		.io_sink_valid(m_axi_w_valid),
		.io_sink_bits_data(m_axi_w_bits_data),
		.io_sink_bits_strb(m_axi_w_bits_strb),
		.io_select_ready(_write_mux_io_select_ready),
		.io_select_valid(_write_portQueue_io_deq_valid),
		.io_select_bits(_write_portQueue_io_deq_bits)
	);
	elasticDemux_17 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(m_axi_b_valid & ~write_eagerFork_regs_0),
		.io_source_bits_id(m_axi_b_bits_id),
		.io_source_bits_resp(m_axi_b_bits_resp),
		.io_sinks_0_ready(s_axi_0_b_ready),
		.io_sinks_0_valid(s_axi_0_b_valid),
		.io_sinks_0_bits_id(),
		.io_sinks_0_bits_resp(s_axi_0_b_bits_resp),
		.io_sinks_1_ready(s_axi_1_b_ready),
		.io_sinks_1_valid(s_axi_1_b_valid),
		.io_sinks_1_bits_id(),
		.io_sinks_1_bits_resp(s_axi_1_b_bits_resp),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(m_axi_b_valid & ~write_eagerFork_regs_1),
		.io_select_bits(m_axi_b_bits_id)
	);
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_b_ready = m_axi_b_ready_0;
endmodule
module ProtocolConverter_2 (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire s_axi_r_bits_id;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [1:0] m_axi_r_bits_id;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [1:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	wire _module_s_axi_0_ar_ready;
	wire _module_s_axi_0_r_valid;
	wire [255:0] _module_s_axi_0_r_bits_data;
	wire [1:0] _module_s_axi_0_r_bits_resp;
	wire _module_s_axi_0_r_bits_last;
	wire _module_s_axi_0_aw_ready;
	wire _module_s_axi_0_w_ready;
	wire _module_s_axi_0_b_valid;
	wire [1:0] _module_s_axi_0_b_bits_resp;
	wire _module_s_axi_1_ar_ready;
	wire _module_s_axi_1_r_valid;
	wire [255:0] _module_s_axi_1_r_bits_data;
	wire [1:0] _module_s_axi_1_r_bits_resp;
	wire _module_s_axi_1_r_bits_last;
	wire _module_s_axi_1_aw_ready;
	wire _module_s_axi_1_w_ready;
	wire _module_s_axi_1_b_valid;
	wire [1:0] _module_s_axi_1_b_bits_resp;
	wire _module_m_axi_ar_bits_id;
	wire _module_m_axi_aw_bits_id;
	wire _downscale_1_s_axi_ar_ready;
	wire _downscale_1_s_axi_r_valid;
	wire [511:0] _downscale_1_s_axi_r_bits_data;
	wire [1:0] _downscale_1_s_axi_r_bits_resp;
	wire _downscale_1_s_axi_r_bits_last;
	wire _downscale_1_s_axi_aw_ready;
	wire _downscale_1_s_axi_w_ready;
	wire _downscale_1_s_axi_b_valid;
	wire [1:0] _downscale_1_s_axi_b_bits_resp;
	wire _downscale_1_m_axi_ar_valid;
	wire [63:0] _downscale_1_m_axi_ar_bits_addr;
	wire [7:0] _downscale_1_m_axi_ar_bits_len;
	wire [2:0] _downscale_1_m_axi_ar_bits_size;
	wire _downscale_1_m_axi_ar_bits_lock;
	wire [3:0] _downscale_1_m_axi_ar_bits_cache;
	wire [2:0] _downscale_1_m_axi_ar_bits_prot;
	wire [3:0] _downscale_1_m_axi_ar_bits_qos;
	wire [3:0] _downscale_1_m_axi_ar_bits_region;
	wire _downscale_1_m_axi_r_ready;
	wire _downscale_1_m_axi_aw_valid;
	wire [63:0] _downscale_1_m_axi_aw_bits_addr;
	wire [7:0] _downscale_1_m_axi_aw_bits_len;
	wire [2:0] _downscale_1_m_axi_aw_bits_size;
	wire _downscale_1_m_axi_aw_bits_lock;
	wire [3:0] _downscale_1_m_axi_aw_bits_cache;
	wire [2:0] _downscale_1_m_axi_aw_bits_prot;
	wire [3:0] _downscale_1_m_axi_aw_bits_qos;
	wire [3:0] _downscale_1_m_axi_aw_bits_region;
	wire _downscale_1_m_axi_w_valid;
	wire [255:0] _downscale_1_m_axi_w_bits_data;
	wire [31:0] _downscale_1_m_axi_w_bits_strb;
	wire _downscale_1_m_axi_w_bits_last;
	wire _downscale_1_m_axi_b_ready;
	wire _downscale_0_s_axi_ar_ready;
	wire _downscale_0_s_axi_r_valid;
	wire [511:0] _downscale_0_s_axi_r_bits_data;
	wire [1:0] _downscale_0_s_axi_r_bits_resp;
	wire _downscale_0_s_axi_r_bits_last;
	wire _downscale_0_s_axi_aw_ready;
	wire _downscale_0_s_axi_w_ready;
	wire _downscale_0_s_axi_b_valid;
	wire [1:0] _downscale_0_s_axi_b_bits_resp;
	wire _downscale_0_m_axi_ar_valid;
	wire [63:0] _downscale_0_m_axi_ar_bits_addr;
	wire [7:0] _downscale_0_m_axi_ar_bits_len;
	wire [2:0] _downscale_0_m_axi_ar_bits_size;
	wire _downscale_0_m_axi_ar_bits_lock;
	wire [3:0] _downscale_0_m_axi_ar_bits_cache;
	wire [2:0] _downscale_0_m_axi_ar_bits_prot;
	wire [3:0] _downscale_0_m_axi_ar_bits_qos;
	wire [3:0] _downscale_0_m_axi_ar_bits_region;
	wire _downscale_0_m_axi_r_ready;
	wire _downscale_0_m_axi_aw_valid;
	wire [63:0] _downscale_0_m_axi_aw_bits_addr;
	wire [7:0] _downscale_0_m_axi_aw_bits_len;
	wire [2:0] _downscale_0_m_axi_aw_bits_size;
	wire _downscale_0_m_axi_aw_bits_lock;
	wire [3:0] _downscale_0_m_axi_aw_bits_cache;
	wire [2:0] _downscale_0_m_axi_aw_bits_prot;
	wire [3:0] _downscale_0_m_axi_aw_bits_qos;
	wire [3:0] _downscale_0_m_axi_aw_bits_region;
	wire _downscale_0_m_axi_w_valid;
	wire [255:0] _downscale_0_m_axi_w_bits_data;
	wire [31:0] _downscale_0_m_axi_w_bits_strb;
	wire _downscale_0_m_axi_w_bits_last;
	wire _downscale_0_m_axi_b_ready;
	wire _unburst1_1_s_axi_ar_ready;
	wire _unburst1_1_s_axi_r_valid;
	wire [511:0] _unburst1_1_s_axi_r_bits_data;
	wire [1:0] _unburst1_1_s_axi_r_bits_resp;
	wire _unburst1_1_s_axi_r_bits_last;
	wire _unburst1_1_s_axi_aw_ready;
	wire _unburst1_1_s_axi_w_ready;
	wire _unburst1_1_s_axi_b_valid;
	wire _unburst1_1_m_axi_ar_valid;
	wire [63:0] _unburst1_1_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_1_m_axi_ar_bits_size;
	wire _unburst1_1_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_1_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_1_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_1_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_1_m_axi_ar_bits_region;
	wire _unburst1_1_m_axi_r_ready;
	wire _unburst1_1_m_axi_aw_valid;
	wire [63:0] _unburst1_1_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_1_m_axi_aw_bits_size;
	wire _unburst1_1_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_1_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_1_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_1_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_1_m_axi_aw_bits_region;
	wire _unburst1_1_m_axi_w_valid;
	wire [511:0] _unburst1_1_m_axi_w_bits_data;
	wire [63:0] _unburst1_1_m_axi_w_bits_strb;
	wire _unburst1_1_m_axi_b_ready;
	wire _unburst1_0_s_axi_ar_ready;
	wire _unburst1_0_s_axi_r_valid;
	wire [511:0] _unburst1_0_s_axi_r_bits_data;
	wire [1:0] _unburst1_0_s_axi_r_bits_resp;
	wire _unburst1_0_s_axi_r_bits_last;
	wire _unburst1_0_s_axi_aw_ready;
	wire _unburst1_0_s_axi_w_ready;
	wire _unburst1_0_s_axi_b_valid;
	wire _unburst1_0_m_axi_ar_valid;
	wire [63:0] _unburst1_0_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_0_m_axi_ar_bits_size;
	wire _unburst1_0_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_0_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_0_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_0_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_0_m_axi_ar_bits_region;
	wire _unburst1_0_m_axi_r_ready;
	wire _unburst1_0_m_axi_aw_valid;
	wire [63:0] _unburst1_0_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_0_m_axi_aw_bits_size;
	wire _unburst1_0_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_0_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_0_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_0_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_0_m_axi_aw_bits_region;
	wire _unburst1_0_m_axi_w_valid;
	wire [511:0] _unburst1_0_m_axi_w_bits_data;
	wire [63:0] _unburst1_0_m_axi_w_bits_strb;
	wire _unburst1_0_m_axi_b_ready;
	wire _idDemux_m_axi_0_ar_valid;
	wire [63:0] _idDemux_m_axi_0_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_0_ar_bits_len;
	wire [2:0] _idDemux_m_axi_0_ar_bits_size;
	wire [1:0] _idDemux_m_axi_0_ar_bits_burst;
	wire _idDemux_m_axi_0_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_0_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_0_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_0_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_0_ar_bits_region;
	wire _idDemux_m_axi_0_r_ready;
	wire _idDemux_m_axi_0_aw_valid;
	wire [63:0] _idDemux_m_axi_0_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_0_aw_bits_len;
	wire [2:0] _idDemux_m_axi_0_aw_bits_size;
	wire [1:0] _idDemux_m_axi_0_aw_bits_burst;
	wire _idDemux_m_axi_0_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_0_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_0_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_0_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_0_aw_bits_region;
	wire _idDemux_m_axi_0_w_valid;
	wire [511:0] _idDemux_m_axi_0_w_bits_data;
	wire [63:0] _idDemux_m_axi_0_w_bits_strb;
	wire _idDemux_m_axi_0_w_bits_last;
	wire _idDemux_m_axi_0_b_ready;
	wire _idDemux_m_axi_1_ar_valid;
	wire [63:0] _idDemux_m_axi_1_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_1_ar_bits_len;
	wire [2:0] _idDemux_m_axi_1_ar_bits_size;
	wire [1:0] _idDemux_m_axi_1_ar_bits_burst;
	wire _idDemux_m_axi_1_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_1_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_1_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_1_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_1_ar_bits_region;
	wire _idDemux_m_axi_1_r_ready;
	wire _idDemux_m_axi_1_aw_valid;
	wire [63:0] _idDemux_m_axi_1_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_1_aw_bits_len;
	wire [2:0] _idDemux_m_axi_1_aw_bits_size;
	wire [1:0] _idDemux_m_axi_1_aw_bits_burst;
	wire _idDemux_m_axi_1_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_1_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_1_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_1_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_1_aw_bits_region;
	wire _idDemux_m_axi_1_w_valid;
	wire [511:0] _idDemux_m_axi_1_w_bits_data;
	wire [63:0] _idDemux_m_axi_1_w_bits_strb;
	wire _idDemux_m_axi_1_w_bits_last;
	wire _idDemux_m_axi_1_b_ready;
	IdDemux_1 idDemux(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(s_axi_ar_ready),
		.s_axi_ar_valid(s_axi_ar_valid),
		.s_axi_ar_bits_id(s_axi_ar_bits_id),
		.s_axi_ar_bits_addr(s_axi_ar_bits_addr),
		.s_axi_ar_bits_len(s_axi_ar_bits_len),
		.s_axi_ar_bits_size(s_axi_ar_bits_size),
		.s_axi_ar_bits_burst(s_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(s_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(s_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(s_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(s_axi_ar_bits_qos),
		.s_axi_ar_bits_region(s_axi_ar_bits_region),
		.s_axi_r_ready(s_axi_r_ready),
		.s_axi_r_valid(s_axi_r_valid),
		.s_axi_r_bits_id(s_axi_r_bits_id),
		.s_axi_r_bits_data(s_axi_r_bits_data),
		.s_axi_r_bits_resp(s_axi_r_bits_resp),
		.s_axi_r_bits_last(s_axi_r_bits_last),
		.s_axi_aw_ready(s_axi_aw_ready),
		.s_axi_aw_valid(s_axi_aw_valid),
		.s_axi_aw_bits_id(s_axi_aw_bits_id),
		.s_axi_aw_bits_addr(s_axi_aw_bits_addr),
		.s_axi_aw_bits_len(s_axi_aw_bits_len),
		.s_axi_aw_bits_size(s_axi_aw_bits_size),
		.s_axi_aw_bits_burst(s_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(s_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(s_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(s_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(s_axi_aw_bits_qos),
		.s_axi_aw_bits_region(s_axi_aw_bits_region),
		.s_axi_w_ready(s_axi_w_ready),
		.s_axi_w_valid(s_axi_w_valid),
		.s_axi_w_bits_data(s_axi_w_bits_data),
		.s_axi_w_bits_strb(s_axi_w_bits_strb),
		.s_axi_w_bits_last(s_axi_w_bits_last),
		.s_axi_b_ready(s_axi_b_ready),
		.s_axi_b_valid(s_axi_b_valid),
		.m_axi_0_ar_ready(_unburst1_0_s_axi_ar_ready),
		.m_axi_0_ar_valid(_idDemux_m_axi_0_ar_valid),
		.m_axi_0_ar_bits_addr(_idDemux_m_axi_0_ar_bits_addr),
		.m_axi_0_ar_bits_len(_idDemux_m_axi_0_ar_bits_len),
		.m_axi_0_ar_bits_size(_idDemux_m_axi_0_ar_bits_size),
		.m_axi_0_ar_bits_burst(_idDemux_m_axi_0_ar_bits_burst),
		.m_axi_0_ar_bits_lock(_idDemux_m_axi_0_ar_bits_lock),
		.m_axi_0_ar_bits_cache(_idDemux_m_axi_0_ar_bits_cache),
		.m_axi_0_ar_bits_prot(_idDemux_m_axi_0_ar_bits_prot),
		.m_axi_0_ar_bits_qos(_idDemux_m_axi_0_ar_bits_qos),
		.m_axi_0_ar_bits_region(_idDemux_m_axi_0_ar_bits_region),
		.m_axi_0_r_ready(_idDemux_m_axi_0_r_ready),
		.m_axi_0_r_valid(_unburst1_0_s_axi_r_valid),
		.m_axi_0_r_bits_data(_unburst1_0_s_axi_r_bits_data),
		.m_axi_0_r_bits_resp(_unburst1_0_s_axi_r_bits_resp),
		.m_axi_0_r_bits_last(_unburst1_0_s_axi_r_bits_last),
		.m_axi_0_aw_ready(_unburst1_0_s_axi_aw_ready),
		.m_axi_0_aw_valid(_idDemux_m_axi_0_aw_valid),
		.m_axi_0_aw_bits_addr(_idDemux_m_axi_0_aw_bits_addr),
		.m_axi_0_aw_bits_len(_idDemux_m_axi_0_aw_bits_len),
		.m_axi_0_aw_bits_size(_idDemux_m_axi_0_aw_bits_size),
		.m_axi_0_aw_bits_burst(_idDemux_m_axi_0_aw_bits_burst),
		.m_axi_0_aw_bits_lock(_idDemux_m_axi_0_aw_bits_lock),
		.m_axi_0_aw_bits_cache(_idDemux_m_axi_0_aw_bits_cache),
		.m_axi_0_aw_bits_prot(_idDemux_m_axi_0_aw_bits_prot),
		.m_axi_0_aw_bits_qos(_idDemux_m_axi_0_aw_bits_qos),
		.m_axi_0_aw_bits_region(_idDemux_m_axi_0_aw_bits_region),
		.m_axi_0_w_ready(_unburst1_0_s_axi_w_ready),
		.m_axi_0_w_valid(_idDemux_m_axi_0_w_valid),
		.m_axi_0_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.m_axi_0_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.m_axi_0_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.m_axi_0_b_ready(_idDemux_m_axi_0_b_ready),
		.m_axi_0_b_valid(_unburst1_0_s_axi_b_valid),
		.m_axi_1_ar_ready(_unburst1_1_s_axi_ar_ready),
		.m_axi_1_ar_valid(_idDemux_m_axi_1_ar_valid),
		.m_axi_1_ar_bits_addr(_idDemux_m_axi_1_ar_bits_addr),
		.m_axi_1_ar_bits_len(_idDemux_m_axi_1_ar_bits_len),
		.m_axi_1_ar_bits_size(_idDemux_m_axi_1_ar_bits_size),
		.m_axi_1_ar_bits_burst(_idDemux_m_axi_1_ar_bits_burst),
		.m_axi_1_ar_bits_lock(_idDemux_m_axi_1_ar_bits_lock),
		.m_axi_1_ar_bits_cache(_idDemux_m_axi_1_ar_bits_cache),
		.m_axi_1_ar_bits_prot(_idDemux_m_axi_1_ar_bits_prot),
		.m_axi_1_ar_bits_qos(_idDemux_m_axi_1_ar_bits_qos),
		.m_axi_1_ar_bits_region(_idDemux_m_axi_1_ar_bits_region),
		.m_axi_1_r_ready(_idDemux_m_axi_1_r_ready),
		.m_axi_1_r_valid(_unburst1_1_s_axi_r_valid),
		.m_axi_1_r_bits_data(_unburst1_1_s_axi_r_bits_data),
		.m_axi_1_r_bits_resp(_unburst1_1_s_axi_r_bits_resp),
		.m_axi_1_r_bits_last(_unburst1_1_s_axi_r_bits_last),
		.m_axi_1_aw_ready(_unburst1_1_s_axi_aw_ready),
		.m_axi_1_aw_valid(_idDemux_m_axi_1_aw_valid),
		.m_axi_1_aw_bits_addr(_idDemux_m_axi_1_aw_bits_addr),
		.m_axi_1_aw_bits_len(_idDemux_m_axi_1_aw_bits_len),
		.m_axi_1_aw_bits_size(_idDemux_m_axi_1_aw_bits_size),
		.m_axi_1_aw_bits_burst(_idDemux_m_axi_1_aw_bits_burst),
		.m_axi_1_aw_bits_lock(_idDemux_m_axi_1_aw_bits_lock),
		.m_axi_1_aw_bits_cache(_idDemux_m_axi_1_aw_bits_cache),
		.m_axi_1_aw_bits_prot(_idDemux_m_axi_1_aw_bits_prot),
		.m_axi_1_aw_bits_qos(_idDemux_m_axi_1_aw_bits_qos),
		.m_axi_1_aw_bits_region(_idDemux_m_axi_1_aw_bits_region),
		.m_axi_1_w_ready(_unburst1_1_s_axi_w_ready),
		.m_axi_1_w_valid(_idDemux_m_axi_1_w_valid),
		.m_axi_1_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.m_axi_1_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.m_axi_1_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.m_axi_1_b_ready(_idDemux_m_axi_1_b_ready),
		.m_axi_1_b_valid(_unburst1_1_s_axi_b_valid)
	);
	Unburst unburst1_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_unburst1_0_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_0_ar_valid),
		.s_axi_ar_bits_addr(_idDemux_m_axi_0_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_0_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_0_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_0_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_0_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_0_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_0_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_0_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_0_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_0_r_ready),
		.s_axi_r_valid(_unburst1_0_s_axi_r_valid),
		.s_axi_r_bits_data(_unburst1_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_unburst1_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_unburst1_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_unburst1_0_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_0_aw_valid),
		.s_axi_aw_bits_addr(_idDemux_m_axi_0_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_0_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_0_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_0_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_0_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_0_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_0_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_0_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_0_aw_bits_region),
		.s_axi_w_ready(_unburst1_0_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_0_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_0_b_ready),
		.s_axi_b_valid(_unburst1_0_s_axi_b_valid),
		.s_axi_b_bits_resp(),
		.m_axi_ar_ready(_downscale_0_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_0_m_axi_r_ready),
		.m_axi_r_valid(_downscale_0_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_0_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_0_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_0_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_0_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_0_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_0_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_0_m_axi_b_ready),
		.m_axi_b_valid(_downscale_0_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_0_s_axi_b_bits_resp)
	);
	Unburst unburst1_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_unburst1_1_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_1_ar_valid),
		.s_axi_ar_bits_addr(_idDemux_m_axi_1_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_1_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_1_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_1_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_1_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_1_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_1_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_1_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_1_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_1_r_ready),
		.s_axi_r_valid(_unburst1_1_s_axi_r_valid),
		.s_axi_r_bits_data(_unburst1_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_unburst1_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_unburst1_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_unburst1_1_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_1_aw_valid),
		.s_axi_aw_bits_addr(_idDemux_m_axi_1_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_1_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_1_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_1_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_1_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_1_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_1_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_1_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_1_aw_bits_region),
		.s_axi_w_ready(_unburst1_1_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_1_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_1_b_ready),
		.s_axi_b_valid(_unburst1_1_s_axi_b_valid),
		.s_axi_b_bits_resp(),
		.m_axi_ar_ready(_downscale_1_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_1_m_axi_r_ready),
		.m_axi_r_valid(_downscale_1_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_1_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_1_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_1_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_1_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_1_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_1_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_1_m_axi_b_ready),
		.m_axi_b_valid(_downscale_1_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_1_s_axi_b_bits_resp)
	);
	Downscale downscale_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_0_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_0_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_0_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_0_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_0_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_0_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_0_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_0_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_0_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_0_m_axi_r_ready),
		.s_axi_r_valid(_downscale_0_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_0_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_0_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_0_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_0_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_0_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_0_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_0_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_0_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_0_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_0_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_0_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_0_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_0_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_0_m_axi_b_ready),
		.s_axi_b_valid(_downscale_0_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_0_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_0_ar_ready),
		.m_axi_ar_valid(_downscale_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_downscale_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_downscale_0_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_downscale_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_downscale_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_downscale_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_downscale_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_downscale_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_downscale_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_downscale_0_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_0_r_valid),
		.m_axi_r_bits_data(_module_s_axi_0_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_0_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_0_aw_ready),
		.m_axi_aw_valid(_downscale_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_downscale_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_downscale_0_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_downscale_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_downscale_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_downscale_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_downscale_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_downscale_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_downscale_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_0_w_ready),
		.m_axi_w_valid(_downscale_0_m_axi_w_valid),
		.m_axi_w_bits_data(_downscale_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_downscale_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_downscale_0_m_axi_w_bits_last),
		.m_axi_b_ready(_downscale_0_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_0_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_0_b_bits_resp)
	);
	Downscale downscale_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_1_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_1_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_1_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_1_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_1_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_1_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_1_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_1_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_1_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_1_m_axi_r_ready),
		.s_axi_r_valid(_downscale_1_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_1_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_1_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_1_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_1_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_1_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_1_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_1_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_1_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_1_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_1_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_1_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_1_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_1_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_1_m_axi_b_ready),
		.s_axi_b_valid(_downscale_1_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_1_ar_ready),
		.m_axi_ar_valid(_downscale_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_downscale_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_downscale_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_downscale_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_downscale_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_downscale_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_downscale_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_downscale_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_downscale_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_downscale_1_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_1_r_valid),
		.m_axi_r_bits_data(_module_s_axi_1_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_1_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_1_aw_ready),
		.m_axi_aw_valid(_downscale_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_downscale_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_downscale_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_downscale_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_downscale_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_downscale_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_downscale_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_downscale_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_downscale_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_1_w_ready),
		.m_axi_w_valid(_downscale_1_m_axi_w_valid),
		.m_axi_w_bits_data(_downscale_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_downscale_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_downscale_1_m_axi_w_bits_last),
		.m_axi_b_ready(_downscale_1_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_1_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_1_b_bits_resp)
	);
	IdMux_1 module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_0_ar_ready(_module_s_axi_0_ar_ready),
		.s_axi_0_ar_valid(_downscale_0_m_axi_ar_valid),
		.s_axi_0_ar_bits_addr(_downscale_0_m_axi_ar_bits_addr),
		.s_axi_0_ar_bits_len(_downscale_0_m_axi_ar_bits_len),
		.s_axi_0_ar_bits_size(_downscale_0_m_axi_ar_bits_size),
		.s_axi_0_ar_bits_lock(_downscale_0_m_axi_ar_bits_lock),
		.s_axi_0_ar_bits_cache(_downscale_0_m_axi_ar_bits_cache),
		.s_axi_0_ar_bits_prot(_downscale_0_m_axi_ar_bits_prot),
		.s_axi_0_ar_bits_qos(_downscale_0_m_axi_ar_bits_qos),
		.s_axi_0_ar_bits_region(_downscale_0_m_axi_ar_bits_region),
		.s_axi_0_r_ready(_downscale_0_m_axi_r_ready),
		.s_axi_0_r_valid(_module_s_axi_0_r_valid),
		.s_axi_0_r_bits_data(_module_s_axi_0_r_bits_data),
		.s_axi_0_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.s_axi_0_r_bits_last(_module_s_axi_0_r_bits_last),
		.s_axi_0_aw_ready(_module_s_axi_0_aw_ready),
		.s_axi_0_aw_valid(_downscale_0_m_axi_aw_valid),
		.s_axi_0_aw_bits_addr(_downscale_0_m_axi_aw_bits_addr),
		.s_axi_0_aw_bits_len(_downscale_0_m_axi_aw_bits_len),
		.s_axi_0_aw_bits_size(_downscale_0_m_axi_aw_bits_size),
		.s_axi_0_aw_bits_lock(_downscale_0_m_axi_aw_bits_lock),
		.s_axi_0_aw_bits_cache(_downscale_0_m_axi_aw_bits_cache),
		.s_axi_0_aw_bits_prot(_downscale_0_m_axi_aw_bits_prot),
		.s_axi_0_aw_bits_qos(_downscale_0_m_axi_aw_bits_qos),
		.s_axi_0_aw_bits_region(_downscale_0_m_axi_aw_bits_region),
		.s_axi_0_w_ready(_module_s_axi_0_w_ready),
		.s_axi_0_w_valid(_downscale_0_m_axi_w_valid),
		.s_axi_0_w_bits_data(_downscale_0_m_axi_w_bits_data),
		.s_axi_0_w_bits_strb(_downscale_0_m_axi_w_bits_strb),
		.s_axi_0_w_bits_last(_downscale_0_m_axi_w_bits_last),
		.s_axi_0_b_ready(_downscale_0_m_axi_b_ready),
		.s_axi_0_b_valid(_module_s_axi_0_b_valid),
		.s_axi_0_b_bits_resp(_module_s_axi_0_b_bits_resp),
		.s_axi_1_ar_ready(_module_s_axi_1_ar_ready),
		.s_axi_1_ar_valid(_downscale_1_m_axi_ar_valid),
		.s_axi_1_ar_bits_addr(_downscale_1_m_axi_ar_bits_addr),
		.s_axi_1_ar_bits_len(_downscale_1_m_axi_ar_bits_len),
		.s_axi_1_ar_bits_size(_downscale_1_m_axi_ar_bits_size),
		.s_axi_1_ar_bits_lock(_downscale_1_m_axi_ar_bits_lock),
		.s_axi_1_ar_bits_cache(_downscale_1_m_axi_ar_bits_cache),
		.s_axi_1_ar_bits_prot(_downscale_1_m_axi_ar_bits_prot),
		.s_axi_1_ar_bits_qos(_downscale_1_m_axi_ar_bits_qos),
		.s_axi_1_ar_bits_region(_downscale_1_m_axi_ar_bits_region),
		.s_axi_1_r_ready(_downscale_1_m_axi_r_ready),
		.s_axi_1_r_valid(_module_s_axi_1_r_valid),
		.s_axi_1_r_bits_data(_module_s_axi_1_r_bits_data),
		.s_axi_1_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.s_axi_1_r_bits_last(_module_s_axi_1_r_bits_last),
		.s_axi_1_aw_ready(_module_s_axi_1_aw_ready),
		.s_axi_1_aw_valid(_downscale_1_m_axi_aw_valid),
		.s_axi_1_aw_bits_addr(_downscale_1_m_axi_aw_bits_addr),
		.s_axi_1_aw_bits_len(_downscale_1_m_axi_aw_bits_len),
		.s_axi_1_aw_bits_size(_downscale_1_m_axi_aw_bits_size),
		.s_axi_1_aw_bits_lock(_downscale_1_m_axi_aw_bits_lock),
		.s_axi_1_aw_bits_cache(_downscale_1_m_axi_aw_bits_cache),
		.s_axi_1_aw_bits_prot(_downscale_1_m_axi_aw_bits_prot),
		.s_axi_1_aw_bits_qos(_downscale_1_m_axi_aw_bits_qos),
		.s_axi_1_aw_bits_region(_downscale_1_m_axi_aw_bits_region),
		.s_axi_1_w_ready(_module_s_axi_1_w_ready),
		.s_axi_1_w_valid(_downscale_1_m_axi_w_valid),
		.s_axi_1_w_bits_data(_downscale_1_m_axi_w_bits_data),
		.s_axi_1_w_bits_strb(_downscale_1_m_axi_w_bits_strb),
		.s_axi_1_w_bits_last(_downscale_1_m_axi_w_bits_last),
		.s_axi_1_b_ready(_downscale_1_m_axi_b_ready),
		.s_axi_1_b_valid(_module_s_axi_1_b_valid),
		.s_axi_1_b_bits_resp(_module_s_axi_1_b_bits_resp),
		.m_axi_ar_ready(m_axi_ar_ready),
		.m_axi_ar_valid(m_axi_ar_valid),
		.m_axi_ar_bits_id(_module_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(m_axi_ar_bits_len),
		.m_axi_ar_bits_size(m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(m_axi_ar_bits_region),
		.m_axi_r_ready(m_axi_r_ready),
		.m_axi_r_valid(m_axi_r_valid),
		.m_axi_r_bits_id(m_axi_r_bits_id[0]),
		.m_axi_r_bits_data(m_axi_r_bits_data),
		.m_axi_r_bits_resp(m_axi_r_bits_resp),
		.m_axi_r_bits_last(m_axi_r_bits_last),
		.m_axi_aw_ready(m_axi_aw_ready),
		.m_axi_aw_valid(m_axi_aw_valid),
		.m_axi_aw_bits_id(_module_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(m_axi_aw_bits_len),
		.m_axi_aw_bits_size(m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(m_axi_aw_bits_region),
		.m_axi_w_ready(m_axi_w_ready),
		.m_axi_w_valid(m_axi_w_valid),
		.m_axi_w_bits_data(m_axi_w_bits_data),
		.m_axi_w_bits_strb(m_axi_w_bits_strb),
		.m_axi_b_ready(m_axi_b_ready),
		.m_axi_b_valid(m_axi_b_valid),
		.m_axi_b_bits_id(m_axi_b_bits_id[0]),
		.m_axi_b_bits_resp(m_axi_b_bits_resp)
	);
	assign m_axi_ar_bits_id = {1'h0, _module_m_axi_ar_bits_id};
	assign m_axi_aw_bits_id = {1'h0, _module_m_axi_aw_bits_id};
endmodule
module AxiUserYanker_2 (
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_data,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_last,
	s_axi_b_valid,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_data,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_last,
	m_axi_b_valid
);
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [511:0] s_axi_r_bits_data;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input s_axi_w_bits_last;
	output wire s_axi_b_valid;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [511:0] m_axi_r_bits_data;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [511:0] m_axi_w_bits_data;
	output wire m_axi_w_bits_last;
	input m_axi_b_valid;
	assign s_axi_ar_ready = m_axi_ar_ready;
	assign s_axi_r_valid = m_axi_r_valid;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_aw_ready = m_axi_aw_ready;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = m_axi_b_valid;
	assign m_axi_ar_valid = s_axi_ar_valid;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = s_axi_ar_bits_len;
	assign m_axi_ar_bits_size = s_axi_ar_bits_size;
	assign m_axi_ar_bits_burst = s_axi_ar_bits_burst;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
	assign m_axi_r_ready = s_axi_r_ready;
	assign m_axi_aw_valid = s_axi_aw_valid;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_len = s_axi_aw_bits_len;
	assign m_axi_aw_bits_size = s_axi_aw_bits_size;
	assign m_axi_aw_bits_burst = s_axi_aw_bits_burst;
	assign m_axi_aw_bits_lock = s_axi_aw_bits_lock;
	assign m_axi_aw_bits_cache = s_axi_aw_bits_cache;
	assign m_axi_aw_bits_prot = s_axi_aw_bits_prot;
	assign m_axi_aw_bits_qos = s_axi_aw_bits_qos;
	assign m_axi_aw_bits_region = s_axi_aw_bits_region;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
endmodule
module elasticDemux_18 (
	io_source_ready,
	io_source_valid,
	io_source_bits_addr,
	io_source_bits_len,
	io_source_bits_size,
	io_source_bits_burst,
	io_source_bits_lock,
	io_source_bits_cache,
	io_source_bits_prot,
	io_source_bits_qos,
	io_source_bits_region,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_addr,
	io_sinks_0_bits_len,
	io_sinks_0_bits_size,
	io_sinks_0_bits_burst,
	io_sinks_0_bits_lock,
	io_sinks_0_bits_cache,
	io_sinks_0_bits_prot,
	io_sinks_0_bits_qos,
	io_sinks_0_bits_region,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_addr,
	io_sinks_1_bits_len,
	io_sinks_1_bits_size,
	io_sinks_1_bits_burst,
	io_sinks_1_bits_lock,
	io_sinks_1_bits_cache,
	io_sinks_1_bits_prot,
	io_sinks_1_bits_qos,
	io_sinks_1_bits_region,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_addr,
	io_sinks_2_bits_len,
	io_sinks_2_bits_size,
	io_sinks_2_bits_burst,
	io_sinks_2_bits_lock,
	io_sinks_2_bits_cache,
	io_sinks_2_bits_prot,
	io_sinks_2_bits_qos,
	io_sinks_2_bits_region,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_addr,
	io_sinks_3_bits_len,
	io_sinks_3_bits_size,
	io_sinks_3_bits_burst,
	io_sinks_3_bits_lock,
	io_sinks_3_bits_cache,
	io_sinks_3_bits_prot,
	io_sinks_3_bits_qos,
	io_sinks_3_bits_region,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [63:0] io_source_bits_addr;
	input [7:0] io_source_bits_len;
	input [2:0] io_source_bits_size;
	input [1:0] io_source_bits_burst;
	input io_source_bits_lock;
	input [3:0] io_source_bits_cache;
	input [2:0] io_source_bits_prot;
	input [3:0] io_source_bits_qos;
	input [3:0] io_source_bits_region;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [63:0] io_sinks_0_bits_addr;
	output wire [7:0] io_sinks_0_bits_len;
	output wire [2:0] io_sinks_0_bits_size;
	output wire [1:0] io_sinks_0_bits_burst;
	output wire io_sinks_0_bits_lock;
	output wire [3:0] io_sinks_0_bits_cache;
	output wire [2:0] io_sinks_0_bits_prot;
	output wire [3:0] io_sinks_0_bits_qos;
	output wire [3:0] io_sinks_0_bits_region;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [63:0] io_sinks_1_bits_addr;
	output wire [7:0] io_sinks_1_bits_len;
	output wire [2:0] io_sinks_1_bits_size;
	output wire [1:0] io_sinks_1_bits_burst;
	output wire io_sinks_1_bits_lock;
	output wire [3:0] io_sinks_1_bits_cache;
	output wire [2:0] io_sinks_1_bits_prot;
	output wire [3:0] io_sinks_1_bits_qos;
	output wire [3:0] io_sinks_1_bits_region;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [63:0] io_sinks_2_bits_addr;
	output wire [7:0] io_sinks_2_bits_len;
	output wire [2:0] io_sinks_2_bits_size;
	output wire [1:0] io_sinks_2_bits_burst;
	output wire io_sinks_2_bits_lock;
	output wire [3:0] io_sinks_2_bits_cache;
	output wire [2:0] io_sinks_2_bits_prot;
	output wire [3:0] io_sinks_2_bits_qos;
	output wire [3:0] io_sinks_2_bits_region;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [63:0] io_sinks_3_bits_addr;
	output wire [7:0] io_sinks_3_bits_len;
	output wire [2:0] io_sinks_3_bits_size;
	output wire [1:0] io_sinks_3_bits_burst;
	output wire io_sinks_3_bits_lock;
	output wire [3:0] io_sinks_3_bits_cache;
	output wire [2:0] io_sinks_3_bits_prot;
	output wire [3:0] io_sinks_3_bits_qos;
	output wire [3:0] io_sinks_3_bits_region;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_addr = io_source_bits_addr;
	assign io_sinks_0_bits_len = io_source_bits_len;
	assign io_sinks_0_bits_size = io_source_bits_size;
	assign io_sinks_0_bits_burst = io_source_bits_burst;
	assign io_sinks_0_bits_lock = io_source_bits_lock;
	assign io_sinks_0_bits_cache = io_source_bits_cache;
	assign io_sinks_0_bits_prot = io_source_bits_prot;
	assign io_sinks_0_bits_qos = io_source_bits_qos;
	assign io_sinks_0_bits_region = io_source_bits_region;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_addr = io_source_bits_addr;
	assign io_sinks_1_bits_len = io_source_bits_len;
	assign io_sinks_1_bits_size = io_source_bits_size;
	assign io_sinks_1_bits_burst = io_source_bits_burst;
	assign io_sinks_1_bits_lock = io_source_bits_lock;
	assign io_sinks_1_bits_cache = io_source_bits_cache;
	assign io_sinks_1_bits_prot = io_source_bits_prot;
	assign io_sinks_1_bits_qos = io_source_bits_qos;
	assign io_sinks_1_bits_region = io_source_bits_region;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_addr = io_source_bits_addr;
	assign io_sinks_2_bits_len = io_source_bits_len;
	assign io_sinks_2_bits_size = io_source_bits_size;
	assign io_sinks_2_bits_burst = io_source_bits_burst;
	assign io_sinks_2_bits_lock = io_source_bits_lock;
	assign io_sinks_2_bits_cache = io_source_bits_cache;
	assign io_sinks_2_bits_prot = io_source_bits_prot;
	assign io_sinks_2_bits_qos = io_source_bits_qos;
	assign io_sinks_2_bits_region = io_source_bits_region;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_addr = io_source_bits_addr;
	assign io_sinks_3_bits_len = io_source_bits_len;
	assign io_sinks_3_bits_size = io_source_bits_size;
	assign io_sinks_3_bits_burst = io_source_bits_burst;
	assign io_sinks_3_bits_lock = io_source_bits_lock;
	assign io_sinks_3_bits_cache = io_source_bits_cache;
	assign io_sinks_3_bits_prot = io_source_bits_prot;
	assign io_sinks_3_bits_qos = io_source_bits_qos;
	assign io_sinks_3_bits_region = io_source_bits_region;
	assign io_select_ready = fire;
endmodule
module elasticBasicArbiter_10 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_data,
	io_sources_0_bits_resp,
	io_sources_0_bits_last,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_data,
	io_sources_1_bits_resp,
	io_sources_1_bits_last,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_data,
	io_sources_2_bits_resp,
	io_sources_2_bits_last,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_data,
	io_sources_3_bits_resp,
	io_sources_3_bits_last,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_data,
	io_sink_bits_resp,
	io_sink_bits_last
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [511:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [511:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	input io_sources_1_bits_last;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [511:0] io_sources_2_bits_data;
	input [1:0] io_sources_2_bits_resp;
	input io_sources_2_bits_last;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [511:0] io_sources_3_bits_data;
	input [1:0] io_sources_3_bits_resp;
	input io_sources_3_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_id;
	output wire [511:0] io_sink_bits_data;
	output wire [1:0] io_sink_bits_resp;
	output wire io_sink_bits_last;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	wire [7:0] _GEN = 8'he4;
	reg [1:0] chooser_lastChoice;
	wire _chooser_rrChoice_T_4 = (chooser_lastChoice == 2'h0) & io_sources_1_valid;
	wire [1:0] _chooser_rrChoice_T_9 = {1'h1, ~(~chooser_lastChoice[1] & io_sources_2_valid)};
	wire [1:0] chooser_rrChoice = (&chooser_lastChoice ? 2'h0 : (_chooser_rrChoice_T_4 ? 2'h1 : _chooser_rrChoice_T_9));
	wire [1:0] chooser_priorityChoice = (io_sources_0_valid ? 2'h0 : (io_sources_1_valid ? 2'h1 : {1'h1, ~io_sources_2_valid}));
	wire [3:0] _GEN_0 = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1:0] choice = (_GEN_0[chooser_rrChoice] ? chooser_rrChoice : chooser_priorityChoice);
	wire [2047:0] _GEN_1 = {io_sources_3_bits_data, io_sources_2_bits_data, io_sources_1_bits_data, io_sources_0_bits_data};
	wire [7:0] _GEN_2 = {io_sources_3_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire [3:0] _GEN_3 = {io_sources_3_bits_last, io_sources_2_bits_last, io_sources_1_bits_last, io_sources_0_bits_last};
	wire fire = (_GEN_0[choice] & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 2'h0;
		else if (fire) begin
			if (_GEN_0[chooser_rrChoice]) begin
				if (&chooser_lastChoice)
					chooser_lastChoice <= 2'h0;
				else if (_chooser_rrChoice_T_4)
					chooser_lastChoice <= 2'h1;
				else
					chooser_lastChoice <= _chooser_rrChoice_T_9;
			end
			else
				chooser_lastChoice <= chooser_priorityChoice;
		end
	Queue2_ReadDataChannel_4 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN[choice * 2+:2]),
		.io_enq_bits_data(_GEN_1[choice * 512+:512]),
		.io_enq_bits_resp(_GEN_2[choice * 2+:2]),
		.io_enq_bits_last(_GEN_3[choice]),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_data(io_sink_bits_data),
		.io_deq_bits_resp(io_sink_bits_resp),
		.io_deq_bits_last(io_sink_bits_last)
	);
	Queue2_UInt2 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & (choice == 2'h0);
	assign io_sources_1_ready = fire & (choice == 2'h1);
	assign io_sources_2_ready = fire & (choice == 2'h2);
	assign io_sources_3_ready = fire & (&choice);
endmodule
module elasticDemux_20 (
	io_source_ready,
	io_source_valid,
	io_source_bits_data,
	io_source_bits_strb,
	io_source_bits_last,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_data,
	io_sinks_0_bits_strb,
	io_sinks_0_bits_last,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_data,
	io_sinks_1_bits_strb,
	io_sinks_1_bits_last,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_data,
	io_sinks_2_bits_strb,
	io_sinks_2_bits_last,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_data,
	io_sinks_3_bits_strb,
	io_sinks_3_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [511:0] io_source_bits_data;
	input [63:0] io_source_bits_strb;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [511:0] io_sinks_0_bits_data;
	output wire [63:0] io_sinks_0_bits_strb;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [511:0] io_sinks_1_bits_data;
	output wire [63:0] io_sinks_1_bits_strb;
	output wire io_sinks_1_bits_last;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [511:0] io_sinks_2_bits_data;
	output wire [63:0] io_sinks_2_bits_strb;
	output wire io_sinks_2_bits_last;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [511:0] io_sinks_3_bits_data;
	output wire [63:0] io_sinks_3_bits_strb;
	output wire io_sinks_3_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_strb = io_source_bits_strb;
	assign io_sinks_0_bits_last = io_source_bits_last;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_data = io_source_bits_data;
	assign io_sinks_1_bits_strb = io_source_bits_strb;
	assign io_sinks_1_bits_last = io_source_bits_last;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_data = io_source_bits_data;
	assign io_sinks_2_bits_strb = io_source_bits_strb;
	assign io_sinks_2_bits_last = io_source_bits_last;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_data = io_source_bits_data;
	assign io_sinks_3_bits_strb = io_source_bits_strb;
	assign io_sinks_3_bits_last = io_source_bits_last;
	assign io_select_ready = fire & io_source_bits_last;
endmodule
module ram_2x4 (
	R0_addr,
	R0_en,
	R0_clk,
	R0_data,
	W0_addr,
	W0_en,
	W0_clk,
	W0_data
);
	input R0_addr;
	input R0_en;
	input R0_clk;
	output wire [3:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [3:0] W0_data;
	reg [3:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 4'bxxxx);
endmodule
module Queue2_WriteResponseChannel_13 (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_id,
	io_enq_bits_resp,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_id,
	io_deq_bits_resp
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [1:0] io_enq_bits_id;
	input [1:0] io_enq_bits_resp;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [1:0] io_deq_bits_resp;
	wire [3:0] _ram_ext_R0_data;
	reg wrap;
	reg wrap_1;
	reg maybe_full;
	wire ptr_match = wrap == wrap_1;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			wrap <= 1'h0;
			wrap_1 <= 1'h0;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				wrap <= wrap - 1'h1;
			if (do_deq)
				wrap_1 <= wrap_1 - 1'h1;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_2x4 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_resp, io_enq_bits_id})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_id = _ram_ext_R0_data[1:0];
	assign io_deq_bits_resp = _ram_ext_R0_data[3:2];
endmodule
module elasticBasicArbiter_11 (
	clock,
	reset,
	io_sources_0_ready,
	io_sources_0_valid,
	io_sources_0_bits_resp,
	io_sources_1_ready,
	io_sources_1_valid,
	io_sources_1_bits_resp,
	io_sources_2_ready,
	io_sources_2_valid,
	io_sources_2_bits_resp,
	io_sources_3_ready,
	io_sources_3_valid,
	io_sources_3_bits_resp,
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_resp
);
	input clock;
	input reset;
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [1:0] io_sources_0_bits_resp;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [1:0] io_sources_1_bits_resp;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [1:0] io_sources_2_bits_resp;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [1:0] io_sources_3_bits_resp;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_id;
	output wire [1:0] io_sink_bits_resp;
	wire _select_sinkBuffer_io_enq_ready;
	wire _sink_sinkBuffer_io_enq_ready;
	wire [7:0] _GEN = 8'he4;
	reg [1:0] chooser_lastChoice;
	wire _chooser_rrChoice_T_4 = (chooser_lastChoice == 2'h0) & io_sources_1_valid;
	wire [1:0] _chooser_rrChoice_T_9 = {1'h1, ~(~chooser_lastChoice[1] & io_sources_2_valid)};
	wire [1:0] chooser_rrChoice = (&chooser_lastChoice ? 2'h0 : (_chooser_rrChoice_T_4 ? 2'h1 : _chooser_rrChoice_T_9));
	wire [1:0] chooser_priorityChoice = (io_sources_0_valid ? 2'h0 : (io_sources_1_valid ? 2'h1 : {1'h1, ~io_sources_2_valid}));
	wire [3:0] _GEN_0 = {io_sources_3_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [1:0] choice = (_GEN_0[chooser_rrChoice] ? chooser_rrChoice : chooser_priorityChoice);
	wire [7:0] _GEN_1 = {io_sources_3_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire fire = (_GEN_0[choice] & _sink_sinkBuffer_io_enq_ready) & _select_sinkBuffer_io_enq_ready;
	always @(posedge clock)
		if (reset)
			chooser_lastChoice <= 2'h0;
		else if (fire) begin
			if (_GEN_0[chooser_rrChoice]) begin
				if (&chooser_lastChoice)
					chooser_lastChoice <= 2'h0;
				else if (_chooser_rrChoice_T_4)
					chooser_lastChoice <= 2'h1;
				else
					chooser_lastChoice <= _chooser_rrChoice_T_9;
			end
			else
				chooser_lastChoice <= chooser_priorityChoice;
		end
	Queue2_WriteResponseChannel_13 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN[choice * 2+:2]),
		.io_enq_bits_resp(_GEN_1[choice * 2+:2]),
		.io_deq_ready(io_sink_ready),
		.io_deq_valid(io_sink_valid),
		.io_deq_bits_id(io_sink_bits_id),
		.io_deq_bits_resp(io_sink_bits_resp)
	);
	Queue2_UInt2 select_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_select_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits(choice),
		.io_deq_ready(1'h1),
		.io_deq_valid(),
		.io_deq_bits()
	);
	assign io_sources_0_ready = fire & (choice == 2'h0);
	assign io_sources_1_ready = fire & (choice == 2'h1);
	assign io_sources_2_ready = fire & (choice == 2'h2);
	assign io_sources_3_ready = fire & (&choice);
endmodule
module IdDemux_2 (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_0_ar_ready,
	m_axi_0_ar_valid,
	m_axi_0_ar_bits_addr,
	m_axi_0_ar_bits_len,
	m_axi_0_ar_bits_size,
	m_axi_0_ar_bits_burst,
	m_axi_0_ar_bits_lock,
	m_axi_0_ar_bits_cache,
	m_axi_0_ar_bits_prot,
	m_axi_0_ar_bits_qos,
	m_axi_0_ar_bits_region,
	m_axi_0_r_ready,
	m_axi_0_r_valid,
	m_axi_0_r_bits_data,
	m_axi_0_r_bits_resp,
	m_axi_0_r_bits_last,
	m_axi_0_aw_ready,
	m_axi_0_aw_valid,
	m_axi_0_aw_bits_addr,
	m_axi_0_aw_bits_len,
	m_axi_0_aw_bits_size,
	m_axi_0_aw_bits_burst,
	m_axi_0_aw_bits_lock,
	m_axi_0_aw_bits_cache,
	m_axi_0_aw_bits_prot,
	m_axi_0_aw_bits_qos,
	m_axi_0_aw_bits_region,
	m_axi_0_w_ready,
	m_axi_0_w_valid,
	m_axi_0_w_bits_data,
	m_axi_0_w_bits_strb,
	m_axi_0_w_bits_last,
	m_axi_0_b_ready,
	m_axi_0_b_valid,
	m_axi_0_b_bits_resp,
	m_axi_1_ar_ready,
	m_axi_1_ar_valid,
	m_axi_1_ar_bits_addr,
	m_axi_1_ar_bits_len,
	m_axi_1_ar_bits_size,
	m_axi_1_ar_bits_burst,
	m_axi_1_ar_bits_lock,
	m_axi_1_ar_bits_cache,
	m_axi_1_ar_bits_prot,
	m_axi_1_ar_bits_qos,
	m_axi_1_ar_bits_region,
	m_axi_1_r_ready,
	m_axi_1_r_valid,
	m_axi_1_r_bits_data,
	m_axi_1_r_bits_resp,
	m_axi_1_r_bits_last,
	m_axi_1_aw_ready,
	m_axi_1_aw_valid,
	m_axi_1_aw_bits_addr,
	m_axi_1_aw_bits_len,
	m_axi_1_aw_bits_size,
	m_axi_1_aw_bits_burst,
	m_axi_1_aw_bits_lock,
	m_axi_1_aw_bits_cache,
	m_axi_1_aw_bits_prot,
	m_axi_1_aw_bits_qos,
	m_axi_1_aw_bits_region,
	m_axi_1_w_ready,
	m_axi_1_w_valid,
	m_axi_1_w_bits_data,
	m_axi_1_w_bits_strb,
	m_axi_1_w_bits_last,
	m_axi_1_b_ready,
	m_axi_1_b_valid,
	m_axi_1_b_bits_resp,
	m_axi_2_ar_ready,
	m_axi_2_ar_valid,
	m_axi_2_ar_bits_addr,
	m_axi_2_ar_bits_len,
	m_axi_2_ar_bits_size,
	m_axi_2_ar_bits_burst,
	m_axi_2_ar_bits_lock,
	m_axi_2_ar_bits_cache,
	m_axi_2_ar_bits_prot,
	m_axi_2_ar_bits_qos,
	m_axi_2_ar_bits_region,
	m_axi_2_r_ready,
	m_axi_2_r_valid,
	m_axi_2_r_bits_data,
	m_axi_2_r_bits_resp,
	m_axi_2_r_bits_last,
	m_axi_2_aw_ready,
	m_axi_2_aw_valid,
	m_axi_2_aw_bits_addr,
	m_axi_2_aw_bits_len,
	m_axi_2_aw_bits_size,
	m_axi_2_aw_bits_burst,
	m_axi_2_aw_bits_lock,
	m_axi_2_aw_bits_cache,
	m_axi_2_aw_bits_prot,
	m_axi_2_aw_bits_qos,
	m_axi_2_aw_bits_region,
	m_axi_2_w_ready,
	m_axi_2_w_valid,
	m_axi_2_w_bits_data,
	m_axi_2_w_bits_strb,
	m_axi_2_w_bits_last,
	m_axi_2_b_ready,
	m_axi_2_b_valid,
	m_axi_2_b_bits_resp,
	m_axi_3_ar_ready,
	m_axi_3_ar_valid,
	m_axi_3_ar_bits_addr,
	m_axi_3_ar_bits_len,
	m_axi_3_ar_bits_size,
	m_axi_3_ar_bits_burst,
	m_axi_3_ar_bits_lock,
	m_axi_3_ar_bits_cache,
	m_axi_3_ar_bits_prot,
	m_axi_3_ar_bits_qos,
	m_axi_3_ar_bits_region,
	m_axi_3_r_ready,
	m_axi_3_r_valid,
	m_axi_3_r_bits_data,
	m_axi_3_r_bits_resp,
	m_axi_3_r_bits_last,
	m_axi_3_aw_ready,
	m_axi_3_aw_valid,
	m_axi_3_aw_bits_addr,
	m_axi_3_aw_bits_len,
	m_axi_3_aw_bits_size,
	m_axi_3_aw_bits_burst,
	m_axi_3_aw_bits_lock,
	m_axi_3_aw_bits_cache,
	m_axi_3_aw_bits_prot,
	m_axi_3_aw_bits_qos,
	m_axi_3_aw_bits_region,
	m_axi_3_w_ready,
	m_axi_3_w_valid,
	m_axi_3_w_bits_data,
	m_axi_3_w_bits_strb,
	m_axi_3_w_bits_last,
	m_axi_3_b_ready,
	m_axi_3_b_valid,
	m_axi_3_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [1:0] s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [1:0] s_axi_r_bits_id;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [1:0] s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_0_ar_ready;
	output wire m_axi_0_ar_valid;
	output wire [63:0] m_axi_0_ar_bits_addr;
	output wire [7:0] m_axi_0_ar_bits_len;
	output wire [2:0] m_axi_0_ar_bits_size;
	output wire [1:0] m_axi_0_ar_bits_burst;
	output wire m_axi_0_ar_bits_lock;
	output wire [3:0] m_axi_0_ar_bits_cache;
	output wire [2:0] m_axi_0_ar_bits_prot;
	output wire [3:0] m_axi_0_ar_bits_qos;
	output wire [3:0] m_axi_0_ar_bits_region;
	output wire m_axi_0_r_ready;
	input m_axi_0_r_valid;
	input [511:0] m_axi_0_r_bits_data;
	input [1:0] m_axi_0_r_bits_resp;
	input m_axi_0_r_bits_last;
	input m_axi_0_aw_ready;
	output wire m_axi_0_aw_valid;
	output wire [63:0] m_axi_0_aw_bits_addr;
	output wire [7:0] m_axi_0_aw_bits_len;
	output wire [2:0] m_axi_0_aw_bits_size;
	output wire [1:0] m_axi_0_aw_bits_burst;
	output wire m_axi_0_aw_bits_lock;
	output wire [3:0] m_axi_0_aw_bits_cache;
	output wire [2:0] m_axi_0_aw_bits_prot;
	output wire [3:0] m_axi_0_aw_bits_qos;
	output wire [3:0] m_axi_0_aw_bits_region;
	input m_axi_0_w_ready;
	output wire m_axi_0_w_valid;
	output wire [511:0] m_axi_0_w_bits_data;
	output wire [63:0] m_axi_0_w_bits_strb;
	output wire m_axi_0_w_bits_last;
	output wire m_axi_0_b_ready;
	input m_axi_0_b_valid;
	input [1:0] m_axi_0_b_bits_resp;
	input m_axi_1_ar_ready;
	output wire m_axi_1_ar_valid;
	output wire [63:0] m_axi_1_ar_bits_addr;
	output wire [7:0] m_axi_1_ar_bits_len;
	output wire [2:0] m_axi_1_ar_bits_size;
	output wire [1:0] m_axi_1_ar_bits_burst;
	output wire m_axi_1_ar_bits_lock;
	output wire [3:0] m_axi_1_ar_bits_cache;
	output wire [2:0] m_axi_1_ar_bits_prot;
	output wire [3:0] m_axi_1_ar_bits_qos;
	output wire [3:0] m_axi_1_ar_bits_region;
	output wire m_axi_1_r_ready;
	input m_axi_1_r_valid;
	input [511:0] m_axi_1_r_bits_data;
	input [1:0] m_axi_1_r_bits_resp;
	input m_axi_1_r_bits_last;
	input m_axi_1_aw_ready;
	output wire m_axi_1_aw_valid;
	output wire [63:0] m_axi_1_aw_bits_addr;
	output wire [7:0] m_axi_1_aw_bits_len;
	output wire [2:0] m_axi_1_aw_bits_size;
	output wire [1:0] m_axi_1_aw_bits_burst;
	output wire m_axi_1_aw_bits_lock;
	output wire [3:0] m_axi_1_aw_bits_cache;
	output wire [2:0] m_axi_1_aw_bits_prot;
	output wire [3:0] m_axi_1_aw_bits_qos;
	output wire [3:0] m_axi_1_aw_bits_region;
	input m_axi_1_w_ready;
	output wire m_axi_1_w_valid;
	output wire [511:0] m_axi_1_w_bits_data;
	output wire [63:0] m_axi_1_w_bits_strb;
	output wire m_axi_1_w_bits_last;
	output wire m_axi_1_b_ready;
	input m_axi_1_b_valid;
	input [1:0] m_axi_1_b_bits_resp;
	input m_axi_2_ar_ready;
	output wire m_axi_2_ar_valid;
	output wire [63:0] m_axi_2_ar_bits_addr;
	output wire [7:0] m_axi_2_ar_bits_len;
	output wire [2:0] m_axi_2_ar_bits_size;
	output wire [1:0] m_axi_2_ar_bits_burst;
	output wire m_axi_2_ar_bits_lock;
	output wire [3:0] m_axi_2_ar_bits_cache;
	output wire [2:0] m_axi_2_ar_bits_prot;
	output wire [3:0] m_axi_2_ar_bits_qos;
	output wire [3:0] m_axi_2_ar_bits_region;
	output wire m_axi_2_r_ready;
	input m_axi_2_r_valid;
	input [511:0] m_axi_2_r_bits_data;
	input [1:0] m_axi_2_r_bits_resp;
	input m_axi_2_r_bits_last;
	input m_axi_2_aw_ready;
	output wire m_axi_2_aw_valid;
	output wire [63:0] m_axi_2_aw_bits_addr;
	output wire [7:0] m_axi_2_aw_bits_len;
	output wire [2:0] m_axi_2_aw_bits_size;
	output wire [1:0] m_axi_2_aw_bits_burst;
	output wire m_axi_2_aw_bits_lock;
	output wire [3:0] m_axi_2_aw_bits_cache;
	output wire [2:0] m_axi_2_aw_bits_prot;
	output wire [3:0] m_axi_2_aw_bits_qos;
	output wire [3:0] m_axi_2_aw_bits_region;
	input m_axi_2_w_ready;
	output wire m_axi_2_w_valid;
	output wire [511:0] m_axi_2_w_bits_data;
	output wire [63:0] m_axi_2_w_bits_strb;
	output wire m_axi_2_w_bits_last;
	output wire m_axi_2_b_ready;
	input m_axi_2_b_valid;
	input [1:0] m_axi_2_b_bits_resp;
	input m_axi_3_ar_ready;
	output wire m_axi_3_ar_valid;
	output wire [63:0] m_axi_3_ar_bits_addr;
	output wire [7:0] m_axi_3_ar_bits_len;
	output wire [2:0] m_axi_3_ar_bits_size;
	output wire [1:0] m_axi_3_ar_bits_burst;
	output wire m_axi_3_ar_bits_lock;
	output wire [3:0] m_axi_3_ar_bits_cache;
	output wire [2:0] m_axi_3_ar_bits_prot;
	output wire [3:0] m_axi_3_ar_bits_qos;
	output wire [3:0] m_axi_3_ar_bits_region;
	output wire m_axi_3_r_ready;
	input m_axi_3_r_valid;
	input [511:0] m_axi_3_r_bits_data;
	input [1:0] m_axi_3_r_bits_resp;
	input m_axi_3_r_bits_last;
	input m_axi_3_aw_ready;
	output wire m_axi_3_aw_valid;
	output wire [63:0] m_axi_3_aw_bits_addr;
	output wire [7:0] m_axi_3_aw_bits_len;
	output wire [2:0] m_axi_3_aw_bits_size;
	output wire [1:0] m_axi_3_aw_bits_burst;
	output wire m_axi_3_aw_bits_lock;
	output wire [3:0] m_axi_3_aw_bits_cache;
	output wire [2:0] m_axi_3_aw_bits_prot;
	output wire [3:0] m_axi_3_aw_bits_qos;
	output wire [3:0] m_axi_3_aw_bits_region;
	input m_axi_3_w_ready;
	output wire m_axi_3_w_valid;
	output wire [511:0] m_axi_3_w_bits_data;
	output wire [63:0] m_axi_3_w_bits_strb;
	output wire m_axi_3_w_bits_last;
	output wire m_axi_3_b_ready;
	input m_axi_3_b_valid;
	input [1:0] m_axi_3_b_bits_resp;
	wire _write_demux_1_io_select_ready;
	wire _write_demux_io_source_ready;
	wire _write_demux_io_select_ready;
	wire _write_portQueue_io_enq_ready;
	wire _write_portQueue_io_deq_valid;
	wire [1:0] _write_portQueue_io_deq_bits;
	wire _read_demux_io_source_ready;
	wire _read_demux_io_select_ready;
	reg read_eagerFork_regs_0;
	reg read_eagerFork_regs_1;
	wire read_eagerFork_s_axi_ar_ready_qual1_0 = _read_demux_io_source_ready | read_eagerFork_regs_0;
	wire read_eagerFork_s_axi_ar_ready_qual1_1 = _read_demux_io_select_ready | read_eagerFork_regs_1;
	wire s_axi_ar_ready_0 = read_eagerFork_s_axi_ar_ready_qual1_0 & read_eagerFork_s_axi_ar_ready_qual1_1;
	reg write_eagerFork_regs_0;
	reg write_eagerFork_regs_1;
	reg write_eagerFork_regs_2;
	wire write_eagerFork_s_axi_aw_ready_qual1_0 = _write_demux_io_source_ready | write_eagerFork_regs_0;
	wire write_eagerFork_s_axi_aw_ready_qual1_1 = _write_demux_io_select_ready | write_eagerFork_regs_1;
	wire write_eagerFork_s_axi_aw_ready_qual1_2 = _write_portQueue_io_enq_ready | write_eagerFork_regs_2;
	wire s_axi_aw_ready_0 = (write_eagerFork_s_axi_aw_ready_qual1_0 & write_eagerFork_s_axi_aw_ready_qual1_1) & write_eagerFork_s_axi_aw_ready_qual1_2;
	always @(posedge clock)
		if (reset) begin
			read_eagerFork_regs_0 <= 1'h0;
			read_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_0 <= 1'h0;
			write_eagerFork_regs_1 <= 1'h0;
			write_eagerFork_regs_2 <= 1'h0;
		end
		else begin
			read_eagerFork_regs_0 <= (read_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_eagerFork_regs_1 <= (read_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			write_eagerFork_regs_0 <= (write_eagerFork_s_axi_aw_ready_qual1_0 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_1 <= (write_eagerFork_s_axi_aw_ready_qual1_1 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
			write_eagerFork_regs_2 <= (write_eagerFork_s_axi_aw_ready_qual1_2 & s_axi_aw_valid) & ~s_axi_aw_ready_0;
		end
	elasticDemux_18 read_demux(
		.io_source_ready(_read_demux_io_source_ready),
		.io_source_valid(s_axi_ar_valid & ~read_eagerFork_regs_0),
		.io_source_bits_addr(s_axi_ar_bits_addr),
		.io_source_bits_len(s_axi_ar_bits_len),
		.io_source_bits_size(s_axi_ar_bits_size),
		.io_source_bits_burst(s_axi_ar_bits_burst),
		.io_source_bits_lock(s_axi_ar_bits_lock),
		.io_source_bits_cache(s_axi_ar_bits_cache),
		.io_source_bits_prot(s_axi_ar_bits_prot),
		.io_source_bits_qos(s_axi_ar_bits_qos),
		.io_source_bits_region(s_axi_ar_bits_region),
		.io_sinks_0_ready(m_axi_0_ar_ready),
		.io_sinks_0_valid(m_axi_0_ar_valid),
		.io_sinks_0_bits_addr(m_axi_0_ar_bits_addr),
		.io_sinks_0_bits_len(m_axi_0_ar_bits_len),
		.io_sinks_0_bits_size(m_axi_0_ar_bits_size),
		.io_sinks_0_bits_burst(m_axi_0_ar_bits_burst),
		.io_sinks_0_bits_lock(m_axi_0_ar_bits_lock),
		.io_sinks_0_bits_cache(m_axi_0_ar_bits_cache),
		.io_sinks_0_bits_prot(m_axi_0_ar_bits_prot),
		.io_sinks_0_bits_qos(m_axi_0_ar_bits_qos),
		.io_sinks_0_bits_region(m_axi_0_ar_bits_region),
		.io_sinks_1_ready(m_axi_1_ar_ready),
		.io_sinks_1_valid(m_axi_1_ar_valid),
		.io_sinks_1_bits_addr(m_axi_1_ar_bits_addr),
		.io_sinks_1_bits_len(m_axi_1_ar_bits_len),
		.io_sinks_1_bits_size(m_axi_1_ar_bits_size),
		.io_sinks_1_bits_burst(m_axi_1_ar_bits_burst),
		.io_sinks_1_bits_lock(m_axi_1_ar_bits_lock),
		.io_sinks_1_bits_cache(m_axi_1_ar_bits_cache),
		.io_sinks_1_bits_prot(m_axi_1_ar_bits_prot),
		.io_sinks_1_bits_qos(m_axi_1_ar_bits_qos),
		.io_sinks_1_bits_region(m_axi_1_ar_bits_region),
		.io_sinks_2_ready(m_axi_2_ar_ready),
		.io_sinks_2_valid(m_axi_2_ar_valid),
		.io_sinks_2_bits_addr(m_axi_2_ar_bits_addr),
		.io_sinks_2_bits_len(m_axi_2_ar_bits_len),
		.io_sinks_2_bits_size(m_axi_2_ar_bits_size),
		.io_sinks_2_bits_burst(m_axi_2_ar_bits_burst),
		.io_sinks_2_bits_lock(m_axi_2_ar_bits_lock),
		.io_sinks_2_bits_cache(m_axi_2_ar_bits_cache),
		.io_sinks_2_bits_prot(m_axi_2_ar_bits_prot),
		.io_sinks_2_bits_qos(m_axi_2_ar_bits_qos),
		.io_sinks_2_bits_region(m_axi_2_ar_bits_region),
		.io_sinks_3_ready(m_axi_3_ar_ready),
		.io_sinks_3_valid(m_axi_3_ar_valid),
		.io_sinks_3_bits_addr(m_axi_3_ar_bits_addr),
		.io_sinks_3_bits_len(m_axi_3_ar_bits_len),
		.io_sinks_3_bits_size(m_axi_3_ar_bits_size),
		.io_sinks_3_bits_burst(m_axi_3_ar_bits_burst),
		.io_sinks_3_bits_lock(m_axi_3_ar_bits_lock),
		.io_sinks_3_bits_cache(m_axi_3_ar_bits_cache),
		.io_sinks_3_bits_prot(m_axi_3_ar_bits_prot),
		.io_sinks_3_bits_qos(m_axi_3_ar_bits_qos),
		.io_sinks_3_bits_region(m_axi_3_ar_bits_region),
		.io_select_ready(_read_demux_io_select_ready),
		.io_select_valid(s_axi_ar_valid & ~read_eagerFork_regs_1),
		.io_select_bits(s_axi_ar_bits_id)
	);
	elasticBasicArbiter_10 read_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(m_axi_0_r_ready),
		.io_sources_0_valid(m_axi_0_r_valid),
		.io_sources_0_bits_data(m_axi_0_r_bits_data),
		.io_sources_0_bits_resp(m_axi_0_r_bits_resp),
		.io_sources_0_bits_last(m_axi_0_r_bits_last),
		.io_sources_1_ready(m_axi_1_r_ready),
		.io_sources_1_valid(m_axi_1_r_valid),
		.io_sources_1_bits_data(m_axi_1_r_bits_data),
		.io_sources_1_bits_resp(m_axi_1_r_bits_resp),
		.io_sources_1_bits_last(m_axi_1_r_bits_last),
		.io_sources_2_ready(m_axi_2_r_ready),
		.io_sources_2_valid(m_axi_2_r_valid),
		.io_sources_2_bits_data(m_axi_2_r_bits_data),
		.io_sources_2_bits_resp(m_axi_2_r_bits_resp),
		.io_sources_2_bits_last(m_axi_2_r_bits_last),
		.io_sources_3_ready(m_axi_3_r_ready),
		.io_sources_3_valid(m_axi_3_r_valid),
		.io_sources_3_bits_data(m_axi_3_r_bits_data),
		.io_sources_3_bits_resp(m_axi_3_r_bits_resp),
		.io_sources_3_bits_last(m_axi_3_r_bits_last),
		.io_sink_ready(s_axi_r_ready),
		.io_sink_valid(s_axi_r_valid),
		.io_sink_bits_id(s_axi_r_bits_id),
		.io_sink_bits_data(s_axi_r_bits_data),
		.io_sink_bits_resp(s_axi_r_bits_resp),
		.io_sink_bits_last(s_axi_r_bits_last)
	);
	Queue8_UInt2 write_portQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_portQueue_io_enq_ready),
		.io_enq_valid(s_axi_aw_valid & ~write_eagerFork_regs_2),
		.io_enq_bits(s_axi_aw_bits_id),
		.io_deq_ready(_write_demux_1_io_select_ready),
		.io_deq_valid(_write_portQueue_io_deq_valid),
		.io_deq_bits(_write_portQueue_io_deq_bits)
	);
	elasticDemux_18 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(s_axi_aw_valid & ~write_eagerFork_regs_0),
		.io_source_bits_addr(s_axi_aw_bits_addr),
		.io_source_bits_len(s_axi_aw_bits_len),
		.io_source_bits_size(s_axi_aw_bits_size),
		.io_source_bits_burst(s_axi_aw_bits_burst),
		.io_source_bits_lock(s_axi_aw_bits_lock),
		.io_source_bits_cache(s_axi_aw_bits_cache),
		.io_source_bits_prot(s_axi_aw_bits_prot),
		.io_source_bits_qos(s_axi_aw_bits_qos),
		.io_source_bits_region(s_axi_aw_bits_region),
		.io_sinks_0_ready(m_axi_0_aw_ready),
		.io_sinks_0_valid(m_axi_0_aw_valid),
		.io_sinks_0_bits_addr(m_axi_0_aw_bits_addr),
		.io_sinks_0_bits_len(m_axi_0_aw_bits_len),
		.io_sinks_0_bits_size(m_axi_0_aw_bits_size),
		.io_sinks_0_bits_burst(m_axi_0_aw_bits_burst),
		.io_sinks_0_bits_lock(m_axi_0_aw_bits_lock),
		.io_sinks_0_bits_cache(m_axi_0_aw_bits_cache),
		.io_sinks_0_bits_prot(m_axi_0_aw_bits_prot),
		.io_sinks_0_bits_qos(m_axi_0_aw_bits_qos),
		.io_sinks_0_bits_region(m_axi_0_aw_bits_region),
		.io_sinks_1_ready(m_axi_1_aw_ready),
		.io_sinks_1_valid(m_axi_1_aw_valid),
		.io_sinks_1_bits_addr(m_axi_1_aw_bits_addr),
		.io_sinks_1_bits_len(m_axi_1_aw_bits_len),
		.io_sinks_1_bits_size(m_axi_1_aw_bits_size),
		.io_sinks_1_bits_burst(m_axi_1_aw_bits_burst),
		.io_sinks_1_bits_lock(m_axi_1_aw_bits_lock),
		.io_sinks_1_bits_cache(m_axi_1_aw_bits_cache),
		.io_sinks_1_bits_prot(m_axi_1_aw_bits_prot),
		.io_sinks_1_bits_qos(m_axi_1_aw_bits_qos),
		.io_sinks_1_bits_region(m_axi_1_aw_bits_region),
		.io_sinks_2_ready(m_axi_2_aw_ready),
		.io_sinks_2_valid(m_axi_2_aw_valid),
		.io_sinks_2_bits_addr(m_axi_2_aw_bits_addr),
		.io_sinks_2_bits_len(m_axi_2_aw_bits_len),
		.io_sinks_2_bits_size(m_axi_2_aw_bits_size),
		.io_sinks_2_bits_burst(m_axi_2_aw_bits_burst),
		.io_sinks_2_bits_lock(m_axi_2_aw_bits_lock),
		.io_sinks_2_bits_cache(m_axi_2_aw_bits_cache),
		.io_sinks_2_bits_prot(m_axi_2_aw_bits_prot),
		.io_sinks_2_bits_qos(m_axi_2_aw_bits_qos),
		.io_sinks_2_bits_region(m_axi_2_aw_bits_region),
		.io_sinks_3_ready(m_axi_3_aw_ready),
		.io_sinks_3_valid(m_axi_3_aw_valid),
		.io_sinks_3_bits_addr(m_axi_3_aw_bits_addr),
		.io_sinks_3_bits_len(m_axi_3_aw_bits_len),
		.io_sinks_3_bits_size(m_axi_3_aw_bits_size),
		.io_sinks_3_bits_burst(m_axi_3_aw_bits_burst),
		.io_sinks_3_bits_lock(m_axi_3_aw_bits_lock),
		.io_sinks_3_bits_cache(m_axi_3_aw_bits_cache),
		.io_sinks_3_bits_prot(m_axi_3_aw_bits_prot),
		.io_sinks_3_bits_qos(m_axi_3_aw_bits_qos),
		.io_sinks_3_bits_region(m_axi_3_aw_bits_region),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(s_axi_aw_valid & ~write_eagerFork_regs_1),
		.io_select_bits(s_axi_aw_bits_id)
	);
	elasticDemux_20 write_demux_1(
		.io_source_ready(s_axi_w_ready),
		.io_source_valid(s_axi_w_valid),
		.io_source_bits_data(s_axi_w_bits_data),
		.io_source_bits_strb(s_axi_w_bits_strb),
		.io_source_bits_last(s_axi_w_bits_last),
		.io_sinks_0_ready(m_axi_0_w_ready),
		.io_sinks_0_valid(m_axi_0_w_valid),
		.io_sinks_0_bits_data(m_axi_0_w_bits_data),
		.io_sinks_0_bits_strb(m_axi_0_w_bits_strb),
		.io_sinks_0_bits_last(m_axi_0_w_bits_last),
		.io_sinks_1_ready(m_axi_1_w_ready),
		.io_sinks_1_valid(m_axi_1_w_valid),
		.io_sinks_1_bits_data(m_axi_1_w_bits_data),
		.io_sinks_1_bits_strb(m_axi_1_w_bits_strb),
		.io_sinks_1_bits_last(m_axi_1_w_bits_last),
		.io_sinks_2_ready(m_axi_2_w_ready),
		.io_sinks_2_valid(m_axi_2_w_valid),
		.io_sinks_2_bits_data(m_axi_2_w_bits_data),
		.io_sinks_2_bits_strb(m_axi_2_w_bits_strb),
		.io_sinks_2_bits_last(m_axi_2_w_bits_last),
		.io_sinks_3_ready(m_axi_3_w_ready),
		.io_sinks_3_valid(m_axi_3_w_valid),
		.io_sinks_3_bits_data(m_axi_3_w_bits_data),
		.io_sinks_3_bits_strb(m_axi_3_w_bits_strb),
		.io_sinks_3_bits_last(m_axi_3_w_bits_last),
		.io_select_ready(_write_demux_1_io_select_ready),
		.io_select_valid(_write_portQueue_io_deq_valid),
		.io_select_bits(_write_portQueue_io_deq_bits)
	);
	elasticBasicArbiter_11 write_arbiter(
		.clock(clock),
		.reset(reset),
		.io_sources_0_ready(m_axi_0_b_ready),
		.io_sources_0_valid(m_axi_0_b_valid),
		.io_sources_0_bits_resp(m_axi_0_b_bits_resp),
		.io_sources_1_ready(m_axi_1_b_ready),
		.io_sources_1_valid(m_axi_1_b_valid),
		.io_sources_1_bits_resp(m_axi_1_b_bits_resp),
		.io_sources_2_ready(m_axi_2_b_ready),
		.io_sources_2_valid(m_axi_2_b_valid),
		.io_sources_2_bits_resp(m_axi_2_b_bits_resp),
		.io_sources_3_ready(m_axi_3_b_ready),
		.io_sources_3_valid(m_axi_3_b_valid),
		.io_sources_3_bits_resp(m_axi_3_b_bits_resp),
		.io_sink_ready(s_axi_b_ready),
		.io_sink_valid(s_axi_b_valid),
		.io_sink_bits_id(s_axi_b_bits_id),
		.io_sink_bits_resp(s_axi_b_bits_resp)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
endmodule
module ProtocolConverter_3 (
	clock,
	reset,
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_len,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_aw_bits_lock,
	s_axi_aw_bits_cache,
	s_axi_aw_bits_prot,
	s_axi_aw_bits_qos,
	s_axi_aw_bits_region,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_len,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_aw_bits_lock,
	m_axi_aw_bits_cache,
	m_axi_aw_bits_prot,
	m_axi_aw_bits_qos,
	m_axi_aw_bits_region,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id,
	m_axi_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [1:0] s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [1:0] s_axi_r_bits_id;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [1:0] s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	input s_axi_aw_bits_lock;
	input [3:0] s_axi_aw_bits_cache;
	input [2:0] s_axi_aw_bits_prot;
	input [3:0] s_axi_aw_bits_qos;
	input [3:0] s_axi_aw_bits_region;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [1:0] m_axi_r_bits_id;
	input [255:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [1:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	output wire m_axi_aw_bits_lock;
	output wire [3:0] m_axi_aw_bits_cache;
	output wire [2:0] m_axi_aw_bits_prot;
	output wire [3:0] m_axi_aw_bits_qos;
	output wire [3:0] m_axi_aw_bits_region;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [255:0] m_axi_w_bits_data;
	output wire [31:0] m_axi_w_bits_strb;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_id;
	input [1:0] m_axi_b_bits_resp;
	wire _module_s_axi_0_ar_ready;
	wire _module_s_axi_0_r_valid;
	wire [255:0] _module_s_axi_0_r_bits_data;
	wire [1:0] _module_s_axi_0_r_bits_resp;
	wire _module_s_axi_0_r_bits_last;
	wire _module_s_axi_0_aw_ready;
	wire _module_s_axi_0_w_ready;
	wire _module_s_axi_0_b_valid;
	wire [1:0] _module_s_axi_0_b_bits_resp;
	wire _module_s_axi_1_ar_ready;
	wire _module_s_axi_1_r_valid;
	wire [255:0] _module_s_axi_1_r_bits_data;
	wire [1:0] _module_s_axi_1_r_bits_resp;
	wire _module_s_axi_1_r_bits_last;
	wire _module_s_axi_1_aw_ready;
	wire _module_s_axi_1_w_ready;
	wire _module_s_axi_1_b_valid;
	wire [1:0] _module_s_axi_1_b_bits_resp;
	wire _module_s_axi_2_ar_ready;
	wire _module_s_axi_2_r_valid;
	wire [255:0] _module_s_axi_2_r_bits_data;
	wire [1:0] _module_s_axi_2_r_bits_resp;
	wire _module_s_axi_2_r_bits_last;
	wire _module_s_axi_2_aw_ready;
	wire _module_s_axi_2_w_ready;
	wire _module_s_axi_2_b_valid;
	wire [1:0] _module_s_axi_2_b_bits_resp;
	wire _module_s_axi_3_ar_ready;
	wire _module_s_axi_3_r_valid;
	wire [255:0] _module_s_axi_3_r_bits_data;
	wire [1:0] _module_s_axi_3_r_bits_resp;
	wire _module_s_axi_3_r_bits_last;
	wire _module_s_axi_3_aw_ready;
	wire _module_s_axi_3_w_ready;
	wire _module_s_axi_3_b_valid;
	wire [1:0] _module_s_axi_3_b_bits_resp;
	wire _downscale_3_s_axi_ar_ready;
	wire _downscale_3_s_axi_r_valid;
	wire [511:0] _downscale_3_s_axi_r_bits_data;
	wire [1:0] _downscale_3_s_axi_r_bits_resp;
	wire _downscale_3_s_axi_r_bits_last;
	wire _downscale_3_s_axi_aw_ready;
	wire _downscale_3_s_axi_w_ready;
	wire _downscale_3_s_axi_b_valid;
	wire [1:0] _downscale_3_s_axi_b_bits_resp;
	wire _downscale_3_m_axi_ar_valid;
	wire [63:0] _downscale_3_m_axi_ar_bits_addr;
	wire [7:0] _downscale_3_m_axi_ar_bits_len;
	wire [2:0] _downscale_3_m_axi_ar_bits_size;
	wire _downscale_3_m_axi_ar_bits_lock;
	wire [3:0] _downscale_3_m_axi_ar_bits_cache;
	wire [2:0] _downscale_3_m_axi_ar_bits_prot;
	wire [3:0] _downscale_3_m_axi_ar_bits_qos;
	wire [3:0] _downscale_3_m_axi_ar_bits_region;
	wire _downscale_3_m_axi_r_ready;
	wire _downscale_3_m_axi_aw_valid;
	wire [63:0] _downscale_3_m_axi_aw_bits_addr;
	wire [7:0] _downscale_3_m_axi_aw_bits_len;
	wire [2:0] _downscale_3_m_axi_aw_bits_size;
	wire _downscale_3_m_axi_aw_bits_lock;
	wire [3:0] _downscale_3_m_axi_aw_bits_cache;
	wire [2:0] _downscale_3_m_axi_aw_bits_prot;
	wire [3:0] _downscale_3_m_axi_aw_bits_qos;
	wire [3:0] _downscale_3_m_axi_aw_bits_region;
	wire _downscale_3_m_axi_w_valid;
	wire [255:0] _downscale_3_m_axi_w_bits_data;
	wire [31:0] _downscale_3_m_axi_w_bits_strb;
	wire _downscale_3_m_axi_w_bits_last;
	wire _downscale_3_m_axi_b_ready;
	wire _downscale_2_s_axi_ar_ready;
	wire _downscale_2_s_axi_r_valid;
	wire [511:0] _downscale_2_s_axi_r_bits_data;
	wire [1:0] _downscale_2_s_axi_r_bits_resp;
	wire _downscale_2_s_axi_r_bits_last;
	wire _downscale_2_s_axi_aw_ready;
	wire _downscale_2_s_axi_w_ready;
	wire _downscale_2_s_axi_b_valid;
	wire [1:0] _downscale_2_s_axi_b_bits_resp;
	wire _downscale_2_m_axi_ar_valid;
	wire [63:0] _downscale_2_m_axi_ar_bits_addr;
	wire [7:0] _downscale_2_m_axi_ar_bits_len;
	wire [2:0] _downscale_2_m_axi_ar_bits_size;
	wire _downscale_2_m_axi_ar_bits_lock;
	wire [3:0] _downscale_2_m_axi_ar_bits_cache;
	wire [2:0] _downscale_2_m_axi_ar_bits_prot;
	wire [3:0] _downscale_2_m_axi_ar_bits_qos;
	wire [3:0] _downscale_2_m_axi_ar_bits_region;
	wire _downscale_2_m_axi_r_ready;
	wire _downscale_2_m_axi_aw_valid;
	wire [63:0] _downscale_2_m_axi_aw_bits_addr;
	wire [7:0] _downscale_2_m_axi_aw_bits_len;
	wire [2:0] _downscale_2_m_axi_aw_bits_size;
	wire _downscale_2_m_axi_aw_bits_lock;
	wire [3:0] _downscale_2_m_axi_aw_bits_cache;
	wire [2:0] _downscale_2_m_axi_aw_bits_prot;
	wire [3:0] _downscale_2_m_axi_aw_bits_qos;
	wire [3:0] _downscale_2_m_axi_aw_bits_region;
	wire _downscale_2_m_axi_w_valid;
	wire [255:0] _downscale_2_m_axi_w_bits_data;
	wire [31:0] _downscale_2_m_axi_w_bits_strb;
	wire _downscale_2_m_axi_w_bits_last;
	wire _downscale_2_m_axi_b_ready;
	wire _downscale_1_s_axi_ar_ready;
	wire _downscale_1_s_axi_r_valid;
	wire [511:0] _downscale_1_s_axi_r_bits_data;
	wire [1:0] _downscale_1_s_axi_r_bits_resp;
	wire _downscale_1_s_axi_r_bits_last;
	wire _downscale_1_s_axi_aw_ready;
	wire _downscale_1_s_axi_w_ready;
	wire _downscale_1_s_axi_b_valid;
	wire [1:0] _downscale_1_s_axi_b_bits_resp;
	wire _downscale_1_m_axi_ar_valid;
	wire [63:0] _downscale_1_m_axi_ar_bits_addr;
	wire [7:0] _downscale_1_m_axi_ar_bits_len;
	wire [2:0] _downscale_1_m_axi_ar_bits_size;
	wire _downscale_1_m_axi_ar_bits_lock;
	wire [3:0] _downscale_1_m_axi_ar_bits_cache;
	wire [2:0] _downscale_1_m_axi_ar_bits_prot;
	wire [3:0] _downscale_1_m_axi_ar_bits_qos;
	wire [3:0] _downscale_1_m_axi_ar_bits_region;
	wire _downscale_1_m_axi_r_ready;
	wire _downscale_1_m_axi_aw_valid;
	wire [63:0] _downscale_1_m_axi_aw_bits_addr;
	wire [7:0] _downscale_1_m_axi_aw_bits_len;
	wire [2:0] _downscale_1_m_axi_aw_bits_size;
	wire _downscale_1_m_axi_aw_bits_lock;
	wire [3:0] _downscale_1_m_axi_aw_bits_cache;
	wire [2:0] _downscale_1_m_axi_aw_bits_prot;
	wire [3:0] _downscale_1_m_axi_aw_bits_qos;
	wire [3:0] _downscale_1_m_axi_aw_bits_region;
	wire _downscale_1_m_axi_w_valid;
	wire [255:0] _downscale_1_m_axi_w_bits_data;
	wire [31:0] _downscale_1_m_axi_w_bits_strb;
	wire _downscale_1_m_axi_w_bits_last;
	wire _downscale_1_m_axi_b_ready;
	wire _downscale_0_s_axi_ar_ready;
	wire _downscale_0_s_axi_r_valid;
	wire [511:0] _downscale_0_s_axi_r_bits_data;
	wire [1:0] _downscale_0_s_axi_r_bits_resp;
	wire _downscale_0_s_axi_r_bits_last;
	wire _downscale_0_s_axi_aw_ready;
	wire _downscale_0_s_axi_w_ready;
	wire _downscale_0_s_axi_b_valid;
	wire [1:0] _downscale_0_s_axi_b_bits_resp;
	wire _downscale_0_m_axi_ar_valid;
	wire [63:0] _downscale_0_m_axi_ar_bits_addr;
	wire [7:0] _downscale_0_m_axi_ar_bits_len;
	wire [2:0] _downscale_0_m_axi_ar_bits_size;
	wire _downscale_0_m_axi_ar_bits_lock;
	wire [3:0] _downscale_0_m_axi_ar_bits_cache;
	wire [2:0] _downscale_0_m_axi_ar_bits_prot;
	wire [3:0] _downscale_0_m_axi_ar_bits_qos;
	wire [3:0] _downscale_0_m_axi_ar_bits_region;
	wire _downscale_0_m_axi_r_ready;
	wire _downscale_0_m_axi_aw_valid;
	wire [63:0] _downscale_0_m_axi_aw_bits_addr;
	wire [7:0] _downscale_0_m_axi_aw_bits_len;
	wire [2:0] _downscale_0_m_axi_aw_bits_size;
	wire _downscale_0_m_axi_aw_bits_lock;
	wire [3:0] _downscale_0_m_axi_aw_bits_cache;
	wire [2:0] _downscale_0_m_axi_aw_bits_prot;
	wire [3:0] _downscale_0_m_axi_aw_bits_qos;
	wire [3:0] _downscale_0_m_axi_aw_bits_region;
	wire _downscale_0_m_axi_w_valid;
	wire [255:0] _downscale_0_m_axi_w_bits_data;
	wire [31:0] _downscale_0_m_axi_w_bits_strb;
	wire _downscale_0_m_axi_w_bits_last;
	wire _downscale_0_m_axi_b_ready;
	wire _unburst1_3_s_axi_ar_ready;
	wire _unburst1_3_s_axi_r_valid;
	wire [511:0] _unburst1_3_s_axi_r_bits_data;
	wire [1:0] _unburst1_3_s_axi_r_bits_resp;
	wire _unburst1_3_s_axi_r_bits_last;
	wire _unburst1_3_s_axi_aw_ready;
	wire _unburst1_3_s_axi_w_ready;
	wire _unburst1_3_s_axi_b_valid;
	wire [1:0] _unburst1_3_s_axi_b_bits_resp;
	wire _unburst1_3_m_axi_ar_valid;
	wire [63:0] _unburst1_3_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_3_m_axi_ar_bits_size;
	wire _unburst1_3_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_3_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_3_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_3_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_3_m_axi_ar_bits_region;
	wire _unburst1_3_m_axi_r_ready;
	wire _unburst1_3_m_axi_aw_valid;
	wire [63:0] _unburst1_3_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_3_m_axi_aw_bits_size;
	wire _unburst1_3_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_3_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_3_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_3_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_3_m_axi_aw_bits_region;
	wire _unburst1_3_m_axi_w_valid;
	wire [511:0] _unburst1_3_m_axi_w_bits_data;
	wire [63:0] _unburst1_3_m_axi_w_bits_strb;
	wire _unburst1_3_m_axi_b_ready;
	wire _unburst1_2_s_axi_ar_ready;
	wire _unburst1_2_s_axi_r_valid;
	wire [511:0] _unburst1_2_s_axi_r_bits_data;
	wire [1:0] _unburst1_2_s_axi_r_bits_resp;
	wire _unburst1_2_s_axi_r_bits_last;
	wire _unburst1_2_s_axi_aw_ready;
	wire _unburst1_2_s_axi_w_ready;
	wire _unburst1_2_s_axi_b_valid;
	wire [1:0] _unburst1_2_s_axi_b_bits_resp;
	wire _unburst1_2_m_axi_ar_valid;
	wire [63:0] _unburst1_2_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_2_m_axi_ar_bits_size;
	wire _unburst1_2_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_2_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_2_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_2_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_2_m_axi_ar_bits_region;
	wire _unburst1_2_m_axi_r_ready;
	wire _unburst1_2_m_axi_aw_valid;
	wire [63:0] _unburst1_2_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_2_m_axi_aw_bits_size;
	wire _unburst1_2_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_2_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_2_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_2_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_2_m_axi_aw_bits_region;
	wire _unburst1_2_m_axi_w_valid;
	wire [511:0] _unburst1_2_m_axi_w_bits_data;
	wire [63:0] _unburst1_2_m_axi_w_bits_strb;
	wire _unburst1_2_m_axi_b_ready;
	wire _unburst1_1_s_axi_ar_ready;
	wire _unburst1_1_s_axi_r_valid;
	wire [511:0] _unburst1_1_s_axi_r_bits_data;
	wire [1:0] _unburst1_1_s_axi_r_bits_resp;
	wire _unburst1_1_s_axi_r_bits_last;
	wire _unburst1_1_s_axi_aw_ready;
	wire _unburst1_1_s_axi_w_ready;
	wire _unburst1_1_s_axi_b_valid;
	wire [1:0] _unburst1_1_s_axi_b_bits_resp;
	wire _unburst1_1_m_axi_ar_valid;
	wire [63:0] _unburst1_1_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_1_m_axi_ar_bits_size;
	wire _unburst1_1_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_1_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_1_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_1_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_1_m_axi_ar_bits_region;
	wire _unburst1_1_m_axi_r_ready;
	wire _unburst1_1_m_axi_aw_valid;
	wire [63:0] _unburst1_1_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_1_m_axi_aw_bits_size;
	wire _unburst1_1_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_1_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_1_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_1_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_1_m_axi_aw_bits_region;
	wire _unburst1_1_m_axi_w_valid;
	wire [511:0] _unburst1_1_m_axi_w_bits_data;
	wire [63:0] _unburst1_1_m_axi_w_bits_strb;
	wire _unburst1_1_m_axi_b_ready;
	wire _unburst1_0_s_axi_ar_ready;
	wire _unburst1_0_s_axi_r_valid;
	wire [511:0] _unburst1_0_s_axi_r_bits_data;
	wire [1:0] _unburst1_0_s_axi_r_bits_resp;
	wire _unburst1_0_s_axi_r_bits_last;
	wire _unburst1_0_s_axi_aw_ready;
	wire _unburst1_0_s_axi_w_ready;
	wire _unburst1_0_s_axi_b_valid;
	wire [1:0] _unburst1_0_s_axi_b_bits_resp;
	wire _unburst1_0_m_axi_ar_valid;
	wire [63:0] _unburst1_0_m_axi_ar_bits_addr;
	wire [2:0] _unburst1_0_m_axi_ar_bits_size;
	wire _unburst1_0_m_axi_ar_bits_lock;
	wire [3:0] _unburst1_0_m_axi_ar_bits_cache;
	wire [2:0] _unburst1_0_m_axi_ar_bits_prot;
	wire [3:0] _unburst1_0_m_axi_ar_bits_qos;
	wire [3:0] _unburst1_0_m_axi_ar_bits_region;
	wire _unburst1_0_m_axi_r_ready;
	wire _unburst1_0_m_axi_aw_valid;
	wire [63:0] _unburst1_0_m_axi_aw_bits_addr;
	wire [2:0] _unburst1_0_m_axi_aw_bits_size;
	wire _unburst1_0_m_axi_aw_bits_lock;
	wire [3:0] _unburst1_0_m_axi_aw_bits_cache;
	wire [2:0] _unburst1_0_m_axi_aw_bits_prot;
	wire [3:0] _unburst1_0_m_axi_aw_bits_qos;
	wire [3:0] _unburst1_0_m_axi_aw_bits_region;
	wire _unburst1_0_m_axi_w_valid;
	wire [511:0] _unburst1_0_m_axi_w_bits_data;
	wire [63:0] _unburst1_0_m_axi_w_bits_strb;
	wire _unburst1_0_m_axi_b_ready;
	wire _idDemux_m_axi_0_ar_valid;
	wire [63:0] _idDemux_m_axi_0_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_0_ar_bits_len;
	wire [2:0] _idDemux_m_axi_0_ar_bits_size;
	wire [1:0] _idDemux_m_axi_0_ar_bits_burst;
	wire _idDemux_m_axi_0_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_0_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_0_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_0_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_0_ar_bits_region;
	wire _idDemux_m_axi_0_r_ready;
	wire _idDemux_m_axi_0_aw_valid;
	wire [63:0] _idDemux_m_axi_0_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_0_aw_bits_len;
	wire [2:0] _idDemux_m_axi_0_aw_bits_size;
	wire [1:0] _idDemux_m_axi_0_aw_bits_burst;
	wire _idDemux_m_axi_0_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_0_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_0_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_0_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_0_aw_bits_region;
	wire _idDemux_m_axi_0_w_valid;
	wire [511:0] _idDemux_m_axi_0_w_bits_data;
	wire [63:0] _idDemux_m_axi_0_w_bits_strb;
	wire _idDemux_m_axi_0_w_bits_last;
	wire _idDemux_m_axi_0_b_ready;
	wire _idDemux_m_axi_1_ar_valid;
	wire [63:0] _idDemux_m_axi_1_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_1_ar_bits_len;
	wire [2:0] _idDemux_m_axi_1_ar_bits_size;
	wire [1:0] _idDemux_m_axi_1_ar_bits_burst;
	wire _idDemux_m_axi_1_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_1_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_1_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_1_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_1_ar_bits_region;
	wire _idDemux_m_axi_1_r_ready;
	wire _idDemux_m_axi_1_aw_valid;
	wire [63:0] _idDemux_m_axi_1_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_1_aw_bits_len;
	wire [2:0] _idDemux_m_axi_1_aw_bits_size;
	wire [1:0] _idDemux_m_axi_1_aw_bits_burst;
	wire _idDemux_m_axi_1_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_1_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_1_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_1_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_1_aw_bits_region;
	wire _idDemux_m_axi_1_w_valid;
	wire [511:0] _idDemux_m_axi_1_w_bits_data;
	wire [63:0] _idDemux_m_axi_1_w_bits_strb;
	wire _idDemux_m_axi_1_w_bits_last;
	wire _idDemux_m_axi_1_b_ready;
	wire _idDemux_m_axi_2_ar_valid;
	wire [63:0] _idDemux_m_axi_2_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_2_ar_bits_len;
	wire [2:0] _idDemux_m_axi_2_ar_bits_size;
	wire [1:0] _idDemux_m_axi_2_ar_bits_burst;
	wire _idDemux_m_axi_2_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_2_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_2_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_2_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_2_ar_bits_region;
	wire _idDemux_m_axi_2_r_ready;
	wire _idDemux_m_axi_2_aw_valid;
	wire [63:0] _idDemux_m_axi_2_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_2_aw_bits_len;
	wire [2:0] _idDemux_m_axi_2_aw_bits_size;
	wire [1:0] _idDemux_m_axi_2_aw_bits_burst;
	wire _idDemux_m_axi_2_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_2_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_2_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_2_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_2_aw_bits_region;
	wire _idDemux_m_axi_2_w_valid;
	wire [511:0] _idDemux_m_axi_2_w_bits_data;
	wire [63:0] _idDemux_m_axi_2_w_bits_strb;
	wire _idDemux_m_axi_2_w_bits_last;
	wire _idDemux_m_axi_2_b_ready;
	wire _idDemux_m_axi_3_ar_valid;
	wire [63:0] _idDemux_m_axi_3_ar_bits_addr;
	wire [7:0] _idDemux_m_axi_3_ar_bits_len;
	wire [2:0] _idDemux_m_axi_3_ar_bits_size;
	wire [1:0] _idDemux_m_axi_3_ar_bits_burst;
	wire _idDemux_m_axi_3_ar_bits_lock;
	wire [3:0] _idDemux_m_axi_3_ar_bits_cache;
	wire [2:0] _idDemux_m_axi_3_ar_bits_prot;
	wire [3:0] _idDemux_m_axi_3_ar_bits_qos;
	wire [3:0] _idDemux_m_axi_3_ar_bits_region;
	wire _idDemux_m_axi_3_r_ready;
	wire _idDemux_m_axi_3_aw_valid;
	wire [63:0] _idDemux_m_axi_3_aw_bits_addr;
	wire [7:0] _idDemux_m_axi_3_aw_bits_len;
	wire [2:0] _idDemux_m_axi_3_aw_bits_size;
	wire [1:0] _idDemux_m_axi_3_aw_bits_burst;
	wire _idDemux_m_axi_3_aw_bits_lock;
	wire [3:0] _idDemux_m_axi_3_aw_bits_cache;
	wire [2:0] _idDemux_m_axi_3_aw_bits_prot;
	wire [3:0] _idDemux_m_axi_3_aw_bits_qos;
	wire [3:0] _idDemux_m_axi_3_aw_bits_region;
	wire _idDemux_m_axi_3_w_valid;
	wire [511:0] _idDemux_m_axi_3_w_bits_data;
	wire [63:0] _idDemux_m_axi_3_w_bits_strb;
	wire _idDemux_m_axi_3_w_bits_last;
	wire _idDemux_m_axi_3_b_ready;
	IdDemux_2 idDemux(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(s_axi_ar_ready),
		.s_axi_ar_valid(s_axi_ar_valid),
		.s_axi_ar_bits_id(s_axi_ar_bits_id),
		.s_axi_ar_bits_addr(s_axi_ar_bits_addr),
		.s_axi_ar_bits_len(s_axi_ar_bits_len),
		.s_axi_ar_bits_size(s_axi_ar_bits_size),
		.s_axi_ar_bits_burst(s_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(s_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(s_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(s_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(s_axi_ar_bits_qos),
		.s_axi_ar_bits_region(s_axi_ar_bits_region),
		.s_axi_r_ready(s_axi_r_ready),
		.s_axi_r_valid(s_axi_r_valid),
		.s_axi_r_bits_id(s_axi_r_bits_id),
		.s_axi_r_bits_data(s_axi_r_bits_data),
		.s_axi_r_bits_resp(s_axi_r_bits_resp),
		.s_axi_r_bits_last(s_axi_r_bits_last),
		.s_axi_aw_ready(s_axi_aw_ready),
		.s_axi_aw_valid(s_axi_aw_valid),
		.s_axi_aw_bits_id(s_axi_aw_bits_id),
		.s_axi_aw_bits_addr(s_axi_aw_bits_addr),
		.s_axi_aw_bits_len(s_axi_aw_bits_len),
		.s_axi_aw_bits_size(s_axi_aw_bits_size),
		.s_axi_aw_bits_burst(s_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(s_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(s_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(s_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(s_axi_aw_bits_qos),
		.s_axi_aw_bits_region(s_axi_aw_bits_region),
		.s_axi_w_ready(s_axi_w_ready),
		.s_axi_w_valid(s_axi_w_valid),
		.s_axi_w_bits_data(s_axi_w_bits_data),
		.s_axi_w_bits_strb(s_axi_w_bits_strb),
		.s_axi_w_bits_last(s_axi_w_bits_last),
		.s_axi_b_ready(s_axi_b_ready),
		.s_axi_b_valid(s_axi_b_valid),
		.s_axi_b_bits_id(s_axi_b_bits_id),
		.s_axi_b_bits_resp(s_axi_b_bits_resp),
		.m_axi_0_ar_ready(_unburst1_0_s_axi_ar_ready),
		.m_axi_0_ar_valid(_idDemux_m_axi_0_ar_valid),
		.m_axi_0_ar_bits_addr(_idDemux_m_axi_0_ar_bits_addr),
		.m_axi_0_ar_bits_len(_idDemux_m_axi_0_ar_bits_len),
		.m_axi_0_ar_bits_size(_idDemux_m_axi_0_ar_bits_size),
		.m_axi_0_ar_bits_burst(_idDemux_m_axi_0_ar_bits_burst),
		.m_axi_0_ar_bits_lock(_idDemux_m_axi_0_ar_bits_lock),
		.m_axi_0_ar_bits_cache(_idDemux_m_axi_0_ar_bits_cache),
		.m_axi_0_ar_bits_prot(_idDemux_m_axi_0_ar_bits_prot),
		.m_axi_0_ar_bits_qos(_idDemux_m_axi_0_ar_bits_qos),
		.m_axi_0_ar_bits_region(_idDemux_m_axi_0_ar_bits_region),
		.m_axi_0_r_ready(_idDemux_m_axi_0_r_ready),
		.m_axi_0_r_valid(_unburst1_0_s_axi_r_valid),
		.m_axi_0_r_bits_data(_unburst1_0_s_axi_r_bits_data),
		.m_axi_0_r_bits_resp(_unburst1_0_s_axi_r_bits_resp),
		.m_axi_0_r_bits_last(_unburst1_0_s_axi_r_bits_last),
		.m_axi_0_aw_ready(_unburst1_0_s_axi_aw_ready),
		.m_axi_0_aw_valid(_idDemux_m_axi_0_aw_valid),
		.m_axi_0_aw_bits_addr(_idDemux_m_axi_0_aw_bits_addr),
		.m_axi_0_aw_bits_len(_idDemux_m_axi_0_aw_bits_len),
		.m_axi_0_aw_bits_size(_idDemux_m_axi_0_aw_bits_size),
		.m_axi_0_aw_bits_burst(_idDemux_m_axi_0_aw_bits_burst),
		.m_axi_0_aw_bits_lock(_idDemux_m_axi_0_aw_bits_lock),
		.m_axi_0_aw_bits_cache(_idDemux_m_axi_0_aw_bits_cache),
		.m_axi_0_aw_bits_prot(_idDemux_m_axi_0_aw_bits_prot),
		.m_axi_0_aw_bits_qos(_idDemux_m_axi_0_aw_bits_qos),
		.m_axi_0_aw_bits_region(_idDemux_m_axi_0_aw_bits_region),
		.m_axi_0_w_ready(_unburst1_0_s_axi_w_ready),
		.m_axi_0_w_valid(_idDemux_m_axi_0_w_valid),
		.m_axi_0_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.m_axi_0_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.m_axi_0_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.m_axi_0_b_ready(_idDemux_m_axi_0_b_ready),
		.m_axi_0_b_valid(_unburst1_0_s_axi_b_valid),
		.m_axi_0_b_bits_resp(_unburst1_0_s_axi_b_bits_resp),
		.m_axi_1_ar_ready(_unburst1_1_s_axi_ar_ready),
		.m_axi_1_ar_valid(_idDemux_m_axi_1_ar_valid),
		.m_axi_1_ar_bits_addr(_idDemux_m_axi_1_ar_bits_addr),
		.m_axi_1_ar_bits_len(_idDemux_m_axi_1_ar_bits_len),
		.m_axi_1_ar_bits_size(_idDemux_m_axi_1_ar_bits_size),
		.m_axi_1_ar_bits_burst(_idDemux_m_axi_1_ar_bits_burst),
		.m_axi_1_ar_bits_lock(_idDemux_m_axi_1_ar_bits_lock),
		.m_axi_1_ar_bits_cache(_idDemux_m_axi_1_ar_bits_cache),
		.m_axi_1_ar_bits_prot(_idDemux_m_axi_1_ar_bits_prot),
		.m_axi_1_ar_bits_qos(_idDemux_m_axi_1_ar_bits_qos),
		.m_axi_1_ar_bits_region(_idDemux_m_axi_1_ar_bits_region),
		.m_axi_1_r_ready(_idDemux_m_axi_1_r_ready),
		.m_axi_1_r_valid(_unburst1_1_s_axi_r_valid),
		.m_axi_1_r_bits_data(_unburst1_1_s_axi_r_bits_data),
		.m_axi_1_r_bits_resp(_unburst1_1_s_axi_r_bits_resp),
		.m_axi_1_r_bits_last(_unburst1_1_s_axi_r_bits_last),
		.m_axi_1_aw_ready(_unburst1_1_s_axi_aw_ready),
		.m_axi_1_aw_valid(_idDemux_m_axi_1_aw_valid),
		.m_axi_1_aw_bits_addr(_idDemux_m_axi_1_aw_bits_addr),
		.m_axi_1_aw_bits_len(_idDemux_m_axi_1_aw_bits_len),
		.m_axi_1_aw_bits_size(_idDemux_m_axi_1_aw_bits_size),
		.m_axi_1_aw_bits_burst(_idDemux_m_axi_1_aw_bits_burst),
		.m_axi_1_aw_bits_lock(_idDemux_m_axi_1_aw_bits_lock),
		.m_axi_1_aw_bits_cache(_idDemux_m_axi_1_aw_bits_cache),
		.m_axi_1_aw_bits_prot(_idDemux_m_axi_1_aw_bits_prot),
		.m_axi_1_aw_bits_qos(_idDemux_m_axi_1_aw_bits_qos),
		.m_axi_1_aw_bits_region(_idDemux_m_axi_1_aw_bits_region),
		.m_axi_1_w_ready(_unburst1_1_s_axi_w_ready),
		.m_axi_1_w_valid(_idDemux_m_axi_1_w_valid),
		.m_axi_1_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.m_axi_1_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.m_axi_1_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.m_axi_1_b_ready(_idDemux_m_axi_1_b_ready),
		.m_axi_1_b_valid(_unburst1_1_s_axi_b_valid),
		.m_axi_1_b_bits_resp(_unburst1_1_s_axi_b_bits_resp),
		.m_axi_2_ar_ready(_unburst1_2_s_axi_ar_ready),
		.m_axi_2_ar_valid(_idDemux_m_axi_2_ar_valid),
		.m_axi_2_ar_bits_addr(_idDemux_m_axi_2_ar_bits_addr),
		.m_axi_2_ar_bits_len(_idDemux_m_axi_2_ar_bits_len),
		.m_axi_2_ar_bits_size(_idDemux_m_axi_2_ar_bits_size),
		.m_axi_2_ar_bits_burst(_idDemux_m_axi_2_ar_bits_burst),
		.m_axi_2_ar_bits_lock(_idDemux_m_axi_2_ar_bits_lock),
		.m_axi_2_ar_bits_cache(_idDemux_m_axi_2_ar_bits_cache),
		.m_axi_2_ar_bits_prot(_idDemux_m_axi_2_ar_bits_prot),
		.m_axi_2_ar_bits_qos(_idDemux_m_axi_2_ar_bits_qos),
		.m_axi_2_ar_bits_region(_idDemux_m_axi_2_ar_bits_region),
		.m_axi_2_r_ready(_idDemux_m_axi_2_r_ready),
		.m_axi_2_r_valid(_unburst1_2_s_axi_r_valid),
		.m_axi_2_r_bits_data(_unburst1_2_s_axi_r_bits_data),
		.m_axi_2_r_bits_resp(_unburst1_2_s_axi_r_bits_resp),
		.m_axi_2_r_bits_last(_unburst1_2_s_axi_r_bits_last),
		.m_axi_2_aw_ready(_unburst1_2_s_axi_aw_ready),
		.m_axi_2_aw_valid(_idDemux_m_axi_2_aw_valid),
		.m_axi_2_aw_bits_addr(_idDemux_m_axi_2_aw_bits_addr),
		.m_axi_2_aw_bits_len(_idDemux_m_axi_2_aw_bits_len),
		.m_axi_2_aw_bits_size(_idDemux_m_axi_2_aw_bits_size),
		.m_axi_2_aw_bits_burst(_idDemux_m_axi_2_aw_bits_burst),
		.m_axi_2_aw_bits_lock(_idDemux_m_axi_2_aw_bits_lock),
		.m_axi_2_aw_bits_cache(_idDemux_m_axi_2_aw_bits_cache),
		.m_axi_2_aw_bits_prot(_idDemux_m_axi_2_aw_bits_prot),
		.m_axi_2_aw_bits_qos(_idDemux_m_axi_2_aw_bits_qos),
		.m_axi_2_aw_bits_region(_idDemux_m_axi_2_aw_bits_region),
		.m_axi_2_w_ready(_unburst1_2_s_axi_w_ready),
		.m_axi_2_w_valid(_idDemux_m_axi_2_w_valid),
		.m_axi_2_w_bits_data(_idDemux_m_axi_2_w_bits_data),
		.m_axi_2_w_bits_strb(_idDemux_m_axi_2_w_bits_strb),
		.m_axi_2_w_bits_last(_idDemux_m_axi_2_w_bits_last),
		.m_axi_2_b_ready(_idDemux_m_axi_2_b_ready),
		.m_axi_2_b_valid(_unburst1_2_s_axi_b_valid),
		.m_axi_2_b_bits_resp(_unburst1_2_s_axi_b_bits_resp),
		.m_axi_3_ar_ready(_unburst1_3_s_axi_ar_ready),
		.m_axi_3_ar_valid(_idDemux_m_axi_3_ar_valid),
		.m_axi_3_ar_bits_addr(_idDemux_m_axi_3_ar_bits_addr),
		.m_axi_3_ar_bits_len(_idDemux_m_axi_3_ar_bits_len),
		.m_axi_3_ar_bits_size(_idDemux_m_axi_3_ar_bits_size),
		.m_axi_3_ar_bits_burst(_idDemux_m_axi_3_ar_bits_burst),
		.m_axi_3_ar_bits_lock(_idDemux_m_axi_3_ar_bits_lock),
		.m_axi_3_ar_bits_cache(_idDemux_m_axi_3_ar_bits_cache),
		.m_axi_3_ar_bits_prot(_idDemux_m_axi_3_ar_bits_prot),
		.m_axi_3_ar_bits_qos(_idDemux_m_axi_3_ar_bits_qos),
		.m_axi_3_ar_bits_region(_idDemux_m_axi_3_ar_bits_region),
		.m_axi_3_r_ready(_idDemux_m_axi_3_r_ready),
		.m_axi_3_r_valid(_unburst1_3_s_axi_r_valid),
		.m_axi_3_r_bits_data(_unburst1_3_s_axi_r_bits_data),
		.m_axi_3_r_bits_resp(_unburst1_3_s_axi_r_bits_resp),
		.m_axi_3_r_bits_last(_unburst1_3_s_axi_r_bits_last),
		.m_axi_3_aw_ready(_unburst1_3_s_axi_aw_ready),
		.m_axi_3_aw_valid(_idDemux_m_axi_3_aw_valid),
		.m_axi_3_aw_bits_addr(_idDemux_m_axi_3_aw_bits_addr),
		.m_axi_3_aw_bits_len(_idDemux_m_axi_3_aw_bits_len),
		.m_axi_3_aw_bits_size(_idDemux_m_axi_3_aw_bits_size),
		.m_axi_3_aw_bits_burst(_idDemux_m_axi_3_aw_bits_burst),
		.m_axi_3_aw_bits_lock(_idDemux_m_axi_3_aw_bits_lock),
		.m_axi_3_aw_bits_cache(_idDemux_m_axi_3_aw_bits_cache),
		.m_axi_3_aw_bits_prot(_idDemux_m_axi_3_aw_bits_prot),
		.m_axi_3_aw_bits_qos(_idDemux_m_axi_3_aw_bits_qos),
		.m_axi_3_aw_bits_region(_idDemux_m_axi_3_aw_bits_region),
		.m_axi_3_w_ready(_unburst1_3_s_axi_w_ready),
		.m_axi_3_w_valid(_idDemux_m_axi_3_w_valid),
		.m_axi_3_w_bits_data(_idDemux_m_axi_3_w_bits_data),
		.m_axi_3_w_bits_strb(_idDemux_m_axi_3_w_bits_strb),
		.m_axi_3_w_bits_last(_idDemux_m_axi_3_w_bits_last),
		.m_axi_3_b_ready(_idDemux_m_axi_3_b_ready),
		.m_axi_3_b_valid(_unburst1_3_s_axi_b_valid),
		.m_axi_3_b_bits_resp(_unburst1_3_s_axi_b_bits_resp)
	);
	Unburst unburst1_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_unburst1_0_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_0_ar_valid),
		.s_axi_ar_bits_addr(_idDemux_m_axi_0_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_0_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_0_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_0_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_0_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_0_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_0_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_0_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_0_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_0_r_ready),
		.s_axi_r_valid(_unburst1_0_s_axi_r_valid),
		.s_axi_r_bits_data(_unburst1_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_unburst1_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_unburst1_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_unburst1_0_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_0_aw_valid),
		.s_axi_aw_bits_addr(_idDemux_m_axi_0_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_0_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_0_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_0_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_0_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_0_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_0_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_0_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_0_aw_bits_region),
		.s_axi_w_ready(_unburst1_0_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_0_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_0_b_ready),
		.s_axi_b_valid(_unburst1_0_s_axi_b_valid),
		.s_axi_b_bits_resp(_unburst1_0_s_axi_b_bits_resp),
		.m_axi_ar_ready(_downscale_0_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_0_m_axi_r_ready),
		.m_axi_r_valid(_downscale_0_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_0_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_0_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_0_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_0_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_0_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_0_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_0_m_axi_b_ready),
		.m_axi_b_valid(_downscale_0_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_0_s_axi_b_bits_resp)
	);
	Unburst unburst1_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_unburst1_1_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_1_ar_valid),
		.s_axi_ar_bits_addr(_idDemux_m_axi_1_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_1_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_1_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_1_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_1_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_1_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_1_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_1_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_1_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_1_r_ready),
		.s_axi_r_valid(_unburst1_1_s_axi_r_valid),
		.s_axi_r_bits_data(_unburst1_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_unburst1_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_unburst1_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_unburst1_1_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_1_aw_valid),
		.s_axi_aw_bits_addr(_idDemux_m_axi_1_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_1_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_1_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_1_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_1_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_1_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_1_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_1_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_1_aw_bits_region),
		.s_axi_w_ready(_unburst1_1_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_1_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_1_b_ready),
		.s_axi_b_valid(_unburst1_1_s_axi_b_valid),
		.s_axi_b_bits_resp(_unburst1_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_downscale_1_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_1_m_axi_r_ready),
		.m_axi_r_valid(_downscale_1_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_1_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_1_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_1_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_1_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_1_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_1_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_1_m_axi_b_ready),
		.m_axi_b_valid(_downscale_1_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_1_s_axi_b_bits_resp)
	);
	Unburst unburst1_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_unburst1_2_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_2_ar_valid),
		.s_axi_ar_bits_addr(_idDemux_m_axi_2_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_2_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_2_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_2_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_2_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_2_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_2_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_2_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_2_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_2_r_ready),
		.s_axi_r_valid(_unburst1_2_s_axi_r_valid),
		.s_axi_r_bits_data(_unburst1_2_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_unburst1_2_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_unburst1_2_s_axi_r_bits_last),
		.s_axi_aw_ready(_unburst1_2_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_2_aw_valid),
		.s_axi_aw_bits_addr(_idDemux_m_axi_2_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_2_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_2_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_2_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_2_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_2_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_2_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_2_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_2_aw_bits_region),
		.s_axi_w_ready(_unburst1_2_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_2_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_2_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_2_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_2_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_2_b_ready),
		.s_axi_b_valid(_unburst1_2_s_axi_b_valid),
		.s_axi_b_bits_resp(_unburst1_2_s_axi_b_bits_resp),
		.m_axi_ar_ready(_downscale_2_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_2_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_2_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_2_m_axi_r_ready),
		.m_axi_r_valid(_downscale_2_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_2_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_2_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_2_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_2_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_2_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_2_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_2_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_2_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_2_m_axi_b_ready),
		.m_axi_b_valid(_downscale_2_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_2_s_axi_b_bits_resp)
	);
	Unburst unburst1_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_unburst1_3_s_axi_ar_ready),
		.s_axi_ar_valid(_idDemux_m_axi_3_ar_valid),
		.s_axi_ar_bits_addr(_idDemux_m_axi_3_ar_bits_addr),
		.s_axi_ar_bits_len(_idDemux_m_axi_3_ar_bits_len),
		.s_axi_ar_bits_size(_idDemux_m_axi_3_ar_bits_size),
		.s_axi_ar_bits_burst(_idDemux_m_axi_3_ar_bits_burst),
		.s_axi_ar_bits_lock(_idDemux_m_axi_3_ar_bits_lock),
		.s_axi_ar_bits_cache(_idDemux_m_axi_3_ar_bits_cache),
		.s_axi_ar_bits_prot(_idDemux_m_axi_3_ar_bits_prot),
		.s_axi_ar_bits_qos(_idDemux_m_axi_3_ar_bits_qos),
		.s_axi_ar_bits_region(_idDemux_m_axi_3_ar_bits_region),
		.s_axi_r_ready(_idDemux_m_axi_3_r_ready),
		.s_axi_r_valid(_unburst1_3_s_axi_r_valid),
		.s_axi_r_bits_data(_unburst1_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_unburst1_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_unburst1_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_unburst1_3_s_axi_aw_ready),
		.s_axi_aw_valid(_idDemux_m_axi_3_aw_valid),
		.s_axi_aw_bits_addr(_idDemux_m_axi_3_aw_bits_addr),
		.s_axi_aw_bits_len(_idDemux_m_axi_3_aw_bits_len),
		.s_axi_aw_bits_size(_idDemux_m_axi_3_aw_bits_size),
		.s_axi_aw_bits_burst(_idDemux_m_axi_3_aw_bits_burst),
		.s_axi_aw_bits_lock(_idDemux_m_axi_3_aw_bits_lock),
		.s_axi_aw_bits_cache(_idDemux_m_axi_3_aw_bits_cache),
		.s_axi_aw_bits_prot(_idDemux_m_axi_3_aw_bits_prot),
		.s_axi_aw_bits_qos(_idDemux_m_axi_3_aw_bits_qos),
		.s_axi_aw_bits_region(_idDemux_m_axi_3_aw_bits_region),
		.s_axi_w_ready(_unburst1_3_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_3_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_3_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_3_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_3_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_3_b_ready),
		.s_axi_b_valid(_unburst1_3_s_axi_b_valid),
		.s_axi_b_bits_resp(_unburst1_3_s_axi_b_bits_resp),
		.m_axi_ar_ready(_downscale_3_s_axi_ar_ready),
		.m_axi_ar_valid(_unburst1_3_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_unburst1_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(),
		.m_axi_ar_bits_size(_unburst1_3_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(),
		.m_axi_ar_bits_lock(_unburst1_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_unburst1_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_unburst1_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_unburst1_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_unburst1_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_unburst1_3_m_axi_r_ready),
		.m_axi_r_valid(_downscale_3_s_axi_r_valid),
		.m_axi_r_bits_data(_downscale_3_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_downscale_3_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_downscale_3_s_axi_r_bits_last),
		.m_axi_aw_ready(_downscale_3_s_axi_aw_ready),
		.m_axi_aw_valid(_unburst1_3_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_unburst1_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(),
		.m_axi_aw_bits_size(_unburst1_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(),
		.m_axi_aw_bits_lock(_unburst1_3_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_unburst1_3_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_unburst1_3_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_unburst1_3_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_unburst1_3_m_axi_aw_bits_region),
		.m_axi_w_ready(_downscale_3_s_axi_w_ready),
		.m_axi_w_valid(_unburst1_3_m_axi_w_valid),
		.m_axi_w_bits_data(_unburst1_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_unburst1_3_m_axi_w_bits_strb),
		.m_axi_w_bits_last(),
		.m_axi_b_ready(_unburst1_3_m_axi_b_ready),
		.m_axi_b_valid(_downscale_3_s_axi_b_valid),
		.m_axi_b_bits_resp(_downscale_3_s_axi_b_bits_resp)
	);
	Downscale downscale_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_0_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_0_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_0_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_0_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_0_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_0_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_0_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_0_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_0_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_0_m_axi_r_ready),
		.s_axi_r_valid(_downscale_0_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_0_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_0_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_0_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_0_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_0_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_0_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_0_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_0_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_0_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_0_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_0_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_0_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_0_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_0_m_axi_b_ready),
		.s_axi_b_valid(_downscale_0_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_0_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_0_ar_ready),
		.m_axi_ar_valid(_downscale_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_downscale_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_downscale_0_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_downscale_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_downscale_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_downscale_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_downscale_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_downscale_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_downscale_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_downscale_0_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_0_r_valid),
		.m_axi_r_bits_data(_module_s_axi_0_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_0_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_0_aw_ready),
		.m_axi_aw_valid(_downscale_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_downscale_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_downscale_0_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_downscale_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_downscale_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_downscale_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_downscale_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_downscale_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_downscale_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_0_w_ready),
		.m_axi_w_valid(_downscale_0_m_axi_w_valid),
		.m_axi_w_bits_data(_downscale_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_downscale_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_downscale_0_m_axi_w_bits_last),
		.m_axi_b_ready(_downscale_0_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_0_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_0_b_bits_resp)
	);
	Downscale downscale_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_1_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_1_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_1_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_1_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_1_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_1_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_1_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_1_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_1_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_1_m_axi_r_ready),
		.s_axi_r_valid(_downscale_1_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_1_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_1_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_1_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_1_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_1_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_1_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_1_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_1_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_1_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_1_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_1_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_1_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_1_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_1_m_axi_b_ready),
		.s_axi_b_valid(_downscale_1_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_1_ar_ready),
		.m_axi_ar_valid(_downscale_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_downscale_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_downscale_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_downscale_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_downscale_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_downscale_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_downscale_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_downscale_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_downscale_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_downscale_1_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_1_r_valid),
		.m_axi_r_bits_data(_module_s_axi_1_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_1_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_1_aw_ready),
		.m_axi_aw_valid(_downscale_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_downscale_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_downscale_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_downscale_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_downscale_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_downscale_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_downscale_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_downscale_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_downscale_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_1_w_ready),
		.m_axi_w_valid(_downscale_1_m_axi_w_valid),
		.m_axi_w_bits_data(_downscale_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_downscale_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_downscale_1_m_axi_w_bits_last),
		.m_axi_b_ready(_downscale_1_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_1_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_1_b_bits_resp)
	);
	Downscale downscale_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_2_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_2_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_2_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_2_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_2_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_2_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_2_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_2_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_2_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_2_m_axi_r_ready),
		.s_axi_r_valid(_downscale_2_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_2_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_2_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_2_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_2_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_2_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_2_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_2_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_2_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_2_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_2_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_2_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_2_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_2_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_2_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_2_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_2_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_2_m_axi_b_ready),
		.s_axi_b_valid(_downscale_2_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_2_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_2_ar_ready),
		.m_axi_ar_valid(_downscale_2_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_downscale_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_downscale_2_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_downscale_2_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_downscale_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_downscale_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_downscale_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_downscale_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_downscale_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_downscale_2_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_2_r_valid),
		.m_axi_r_bits_data(_module_s_axi_2_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_2_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_2_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_2_aw_ready),
		.m_axi_aw_valid(_downscale_2_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_downscale_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_downscale_2_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_downscale_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_downscale_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_downscale_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_downscale_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_downscale_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_downscale_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_2_w_ready),
		.m_axi_w_valid(_downscale_2_m_axi_w_valid),
		.m_axi_w_bits_data(_downscale_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_downscale_2_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_downscale_2_m_axi_w_bits_last),
		.m_axi_b_ready(_downscale_2_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_2_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_2_b_bits_resp)
	);
	Downscale downscale_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_downscale_3_s_axi_ar_ready),
		.s_axi_ar_valid(_unburst1_3_m_axi_ar_valid),
		.s_axi_ar_bits_addr(_unburst1_3_m_axi_ar_bits_addr),
		.s_axi_ar_bits_size(_unburst1_3_m_axi_ar_bits_size),
		.s_axi_ar_bits_lock(_unburst1_3_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_unburst1_3_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_unburst1_3_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_unburst1_3_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_unburst1_3_m_axi_ar_bits_region),
		.s_axi_r_ready(_unburst1_3_m_axi_r_ready),
		.s_axi_r_valid(_downscale_3_s_axi_r_valid),
		.s_axi_r_bits_data(_downscale_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_downscale_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_downscale_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_downscale_3_s_axi_aw_ready),
		.s_axi_aw_valid(_unburst1_3_m_axi_aw_valid),
		.s_axi_aw_bits_addr(_unburst1_3_m_axi_aw_bits_addr),
		.s_axi_aw_bits_size(_unburst1_3_m_axi_aw_bits_size),
		.s_axi_aw_bits_lock(_unburst1_3_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_unburst1_3_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_unburst1_3_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_unburst1_3_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_unburst1_3_m_axi_aw_bits_region),
		.s_axi_w_ready(_downscale_3_s_axi_w_ready),
		.s_axi_w_valid(_unburst1_3_m_axi_w_valid),
		.s_axi_w_bits_data(_unburst1_3_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_unburst1_3_m_axi_w_bits_strb),
		.s_axi_b_ready(_unburst1_3_m_axi_b_ready),
		.s_axi_b_valid(_downscale_3_s_axi_b_valid),
		.s_axi_b_bits_resp(_downscale_3_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_3_ar_ready),
		.m_axi_ar_valid(_downscale_3_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_downscale_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_downscale_3_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_downscale_3_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_downscale_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_downscale_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_downscale_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_downscale_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_downscale_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_downscale_3_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_3_r_valid),
		.m_axi_r_bits_data(_module_s_axi_3_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_3_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_3_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_3_aw_ready),
		.m_axi_aw_valid(_downscale_3_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_downscale_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_downscale_3_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_downscale_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_downscale_3_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_downscale_3_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_downscale_3_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_downscale_3_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_downscale_3_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_3_w_ready),
		.m_axi_w_valid(_downscale_3_m_axi_w_valid),
		.m_axi_w_bits_data(_downscale_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_downscale_3_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_downscale_3_m_axi_w_bits_last),
		.m_axi_b_ready(_downscale_3_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_3_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_3_b_bits_resp)
	);
	IdMux module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_0_ar_ready(_module_s_axi_0_ar_ready),
		.s_axi_0_ar_valid(_downscale_0_m_axi_ar_valid),
		.s_axi_0_ar_bits_addr(_downscale_0_m_axi_ar_bits_addr),
		.s_axi_0_ar_bits_len(_downscale_0_m_axi_ar_bits_len),
		.s_axi_0_ar_bits_size(_downscale_0_m_axi_ar_bits_size),
		.s_axi_0_ar_bits_burst(2'h1),
		.s_axi_0_ar_bits_lock(_downscale_0_m_axi_ar_bits_lock),
		.s_axi_0_ar_bits_cache(_downscale_0_m_axi_ar_bits_cache),
		.s_axi_0_ar_bits_prot(_downscale_0_m_axi_ar_bits_prot),
		.s_axi_0_ar_bits_qos(_downscale_0_m_axi_ar_bits_qos),
		.s_axi_0_ar_bits_region(_downscale_0_m_axi_ar_bits_region),
		.s_axi_0_r_ready(_downscale_0_m_axi_r_ready),
		.s_axi_0_r_valid(_module_s_axi_0_r_valid),
		.s_axi_0_r_bits_data(_module_s_axi_0_r_bits_data),
		.s_axi_0_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.s_axi_0_r_bits_last(_module_s_axi_0_r_bits_last),
		.s_axi_0_aw_ready(_module_s_axi_0_aw_ready),
		.s_axi_0_aw_valid(_downscale_0_m_axi_aw_valid),
		.s_axi_0_aw_bits_addr(_downscale_0_m_axi_aw_bits_addr),
		.s_axi_0_aw_bits_len(_downscale_0_m_axi_aw_bits_len),
		.s_axi_0_aw_bits_size(_downscale_0_m_axi_aw_bits_size),
		.s_axi_0_aw_bits_burst(2'h1),
		.s_axi_0_aw_bits_lock(_downscale_0_m_axi_aw_bits_lock),
		.s_axi_0_aw_bits_cache(_downscale_0_m_axi_aw_bits_cache),
		.s_axi_0_aw_bits_prot(_downscale_0_m_axi_aw_bits_prot),
		.s_axi_0_aw_bits_qos(_downscale_0_m_axi_aw_bits_qos),
		.s_axi_0_aw_bits_region(_downscale_0_m_axi_aw_bits_region),
		.s_axi_0_w_ready(_module_s_axi_0_w_ready),
		.s_axi_0_w_valid(_downscale_0_m_axi_w_valid),
		.s_axi_0_w_bits_data(_downscale_0_m_axi_w_bits_data),
		.s_axi_0_w_bits_strb(_downscale_0_m_axi_w_bits_strb),
		.s_axi_0_w_bits_last(_downscale_0_m_axi_w_bits_last),
		.s_axi_0_b_ready(_downscale_0_m_axi_b_ready),
		.s_axi_0_b_valid(_module_s_axi_0_b_valid),
		.s_axi_0_b_bits_resp(_module_s_axi_0_b_bits_resp),
		.s_axi_1_ar_ready(_module_s_axi_1_ar_ready),
		.s_axi_1_ar_valid(_downscale_1_m_axi_ar_valid),
		.s_axi_1_ar_bits_addr(_downscale_1_m_axi_ar_bits_addr),
		.s_axi_1_ar_bits_len(_downscale_1_m_axi_ar_bits_len),
		.s_axi_1_ar_bits_size(_downscale_1_m_axi_ar_bits_size),
		.s_axi_1_ar_bits_burst(2'h1),
		.s_axi_1_ar_bits_lock(_downscale_1_m_axi_ar_bits_lock),
		.s_axi_1_ar_bits_cache(_downscale_1_m_axi_ar_bits_cache),
		.s_axi_1_ar_bits_prot(_downscale_1_m_axi_ar_bits_prot),
		.s_axi_1_ar_bits_qos(_downscale_1_m_axi_ar_bits_qos),
		.s_axi_1_ar_bits_region(_downscale_1_m_axi_ar_bits_region),
		.s_axi_1_r_ready(_downscale_1_m_axi_r_ready),
		.s_axi_1_r_valid(_module_s_axi_1_r_valid),
		.s_axi_1_r_bits_data(_module_s_axi_1_r_bits_data),
		.s_axi_1_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.s_axi_1_r_bits_last(_module_s_axi_1_r_bits_last),
		.s_axi_1_aw_ready(_module_s_axi_1_aw_ready),
		.s_axi_1_aw_valid(_downscale_1_m_axi_aw_valid),
		.s_axi_1_aw_bits_addr(_downscale_1_m_axi_aw_bits_addr),
		.s_axi_1_aw_bits_len(_downscale_1_m_axi_aw_bits_len),
		.s_axi_1_aw_bits_size(_downscale_1_m_axi_aw_bits_size),
		.s_axi_1_aw_bits_burst(2'h1),
		.s_axi_1_aw_bits_lock(_downscale_1_m_axi_aw_bits_lock),
		.s_axi_1_aw_bits_cache(_downscale_1_m_axi_aw_bits_cache),
		.s_axi_1_aw_bits_prot(_downscale_1_m_axi_aw_bits_prot),
		.s_axi_1_aw_bits_qos(_downscale_1_m_axi_aw_bits_qos),
		.s_axi_1_aw_bits_region(_downscale_1_m_axi_aw_bits_region),
		.s_axi_1_w_ready(_module_s_axi_1_w_ready),
		.s_axi_1_w_valid(_downscale_1_m_axi_w_valid),
		.s_axi_1_w_bits_data(_downscale_1_m_axi_w_bits_data),
		.s_axi_1_w_bits_strb(_downscale_1_m_axi_w_bits_strb),
		.s_axi_1_w_bits_last(_downscale_1_m_axi_w_bits_last),
		.s_axi_1_b_ready(_downscale_1_m_axi_b_ready),
		.s_axi_1_b_valid(_module_s_axi_1_b_valid),
		.s_axi_1_b_bits_resp(_module_s_axi_1_b_bits_resp),
		.s_axi_2_ar_ready(_module_s_axi_2_ar_ready),
		.s_axi_2_ar_valid(_downscale_2_m_axi_ar_valid),
		.s_axi_2_ar_bits_addr(_downscale_2_m_axi_ar_bits_addr),
		.s_axi_2_ar_bits_len(_downscale_2_m_axi_ar_bits_len),
		.s_axi_2_ar_bits_size(_downscale_2_m_axi_ar_bits_size),
		.s_axi_2_ar_bits_burst(2'h1),
		.s_axi_2_ar_bits_lock(_downscale_2_m_axi_ar_bits_lock),
		.s_axi_2_ar_bits_cache(_downscale_2_m_axi_ar_bits_cache),
		.s_axi_2_ar_bits_prot(_downscale_2_m_axi_ar_bits_prot),
		.s_axi_2_ar_bits_qos(_downscale_2_m_axi_ar_bits_qos),
		.s_axi_2_ar_bits_region(_downscale_2_m_axi_ar_bits_region),
		.s_axi_2_r_ready(_downscale_2_m_axi_r_ready),
		.s_axi_2_r_valid(_module_s_axi_2_r_valid),
		.s_axi_2_r_bits_data(_module_s_axi_2_r_bits_data),
		.s_axi_2_r_bits_resp(_module_s_axi_2_r_bits_resp),
		.s_axi_2_r_bits_last(_module_s_axi_2_r_bits_last),
		.s_axi_2_aw_ready(_module_s_axi_2_aw_ready),
		.s_axi_2_aw_valid(_downscale_2_m_axi_aw_valid),
		.s_axi_2_aw_bits_addr(_downscale_2_m_axi_aw_bits_addr),
		.s_axi_2_aw_bits_len(_downscale_2_m_axi_aw_bits_len),
		.s_axi_2_aw_bits_size(_downscale_2_m_axi_aw_bits_size),
		.s_axi_2_aw_bits_burst(2'h1),
		.s_axi_2_aw_bits_lock(_downscale_2_m_axi_aw_bits_lock),
		.s_axi_2_aw_bits_cache(_downscale_2_m_axi_aw_bits_cache),
		.s_axi_2_aw_bits_prot(_downscale_2_m_axi_aw_bits_prot),
		.s_axi_2_aw_bits_qos(_downscale_2_m_axi_aw_bits_qos),
		.s_axi_2_aw_bits_region(_downscale_2_m_axi_aw_bits_region),
		.s_axi_2_w_ready(_module_s_axi_2_w_ready),
		.s_axi_2_w_valid(_downscale_2_m_axi_w_valid),
		.s_axi_2_w_bits_data(_downscale_2_m_axi_w_bits_data),
		.s_axi_2_w_bits_strb(_downscale_2_m_axi_w_bits_strb),
		.s_axi_2_w_bits_last(_downscale_2_m_axi_w_bits_last),
		.s_axi_2_b_ready(_downscale_2_m_axi_b_ready),
		.s_axi_2_b_valid(_module_s_axi_2_b_valid),
		.s_axi_2_b_bits_resp(_module_s_axi_2_b_bits_resp),
		.s_axi_3_ar_ready(_module_s_axi_3_ar_ready),
		.s_axi_3_ar_valid(_downscale_3_m_axi_ar_valid),
		.s_axi_3_ar_bits_addr(_downscale_3_m_axi_ar_bits_addr),
		.s_axi_3_ar_bits_len(_downscale_3_m_axi_ar_bits_len),
		.s_axi_3_ar_bits_size(_downscale_3_m_axi_ar_bits_size),
		.s_axi_3_ar_bits_burst(2'h1),
		.s_axi_3_ar_bits_lock(_downscale_3_m_axi_ar_bits_lock),
		.s_axi_3_ar_bits_cache(_downscale_3_m_axi_ar_bits_cache),
		.s_axi_3_ar_bits_prot(_downscale_3_m_axi_ar_bits_prot),
		.s_axi_3_ar_bits_qos(_downscale_3_m_axi_ar_bits_qos),
		.s_axi_3_ar_bits_region(_downscale_3_m_axi_ar_bits_region),
		.s_axi_3_r_ready(_downscale_3_m_axi_r_ready),
		.s_axi_3_r_valid(_module_s_axi_3_r_valid),
		.s_axi_3_r_bits_data(_module_s_axi_3_r_bits_data),
		.s_axi_3_r_bits_resp(_module_s_axi_3_r_bits_resp),
		.s_axi_3_r_bits_last(_module_s_axi_3_r_bits_last),
		.s_axi_3_aw_ready(_module_s_axi_3_aw_ready),
		.s_axi_3_aw_valid(_downscale_3_m_axi_aw_valid),
		.s_axi_3_aw_bits_addr(_downscale_3_m_axi_aw_bits_addr),
		.s_axi_3_aw_bits_len(_downscale_3_m_axi_aw_bits_len),
		.s_axi_3_aw_bits_size(_downscale_3_m_axi_aw_bits_size),
		.s_axi_3_aw_bits_burst(2'h1),
		.s_axi_3_aw_bits_lock(_downscale_3_m_axi_aw_bits_lock),
		.s_axi_3_aw_bits_cache(_downscale_3_m_axi_aw_bits_cache),
		.s_axi_3_aw_bits_prot(_downscale_3_m_axi_aw_bits_prot),
		.s_axi_3_aw_bits_qos(_downscale_3_m_axi_aw_bits_qos),
		.s_axi_3_aw_bits_region(_downscale_3_m_axi_aw_bits_region),
		.s_axi_3_w_ready(_module_s_axi_3_w_ready),
		.s_axi_3_w_valid(_downscale_3_m_axi_w_valid),
		.s_axi_3_w_bits_data(_downscale_3_m_axi_w_bits_data),
		.s_axi_3_w_bits_strb(_downscale_3_m_axi_w_bits_strb),
		.s_axi_3_w_bits_last(_downscale_3_m_axi_w_bits_last),
		.s_axi_3_b_ready(_downscale_3_m_axi_b_ready),
		.s_axi_3_b_valid(_module_s_axi_3_b_valid),
		.s_axi_3_b_bits_resp(_module_s_axi_3_b_bits_resp),
		.m_axi_ar_ready(m_axi_ar_ready),
		.m_axi_ar_valid(m_axi_ar_valid),
		.m_axi_ar_bits_id(m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(m_axi_ar_bits_len),
		.m_axi_ar_bits_size(m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(m_axi_ar_bits_region),
		.m_axi_r_ready(m_axi_r_ready),
		.m_axi_r_valid(m_axi_r_valid),
		.m_axi_r_bits_id(m_axi_r_bits_id),
		.m_axi_r_bits_data(m_axi_r_bits_data),
		.m_axi_r_bits_resp(m_axi_r_bits_resp),
		.m_axi_r_bits_last(m_axi_r_bits_last),
		.m_axi_aw_ready(m_axi_aw_ready),
		.m_axi_aw_valid(m_axi_aw_valid),
		.m_axi_aw_bits_id(m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(m_axi_aw_bits_len),
		.m_axi_aw_bits_size(m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(m_axi_aw_bits_region),
		.m_axi_w_ready(m_axi_w_ready),
		.m_axi_w_valid(m_axi_w_valid),
		.m_axi_w_bits_data(m_axi_w_bits_data),
		.m_axi_w_bits_strb(m_axi_w_bits_strb),
		.m_axi_b_ready(m_axi_b_ready),
		.m_axi_b_valid(m_axi_b_valid),
		.m_axi_b_bits_id(m_axi_b_bits_id),
		.m_axi_b_bits_resp(m_axi_b_bits_resp)
	);
endmodule
module AxiUserYanker_3 (
	s_axi_ar_ready,
	s_axi_ar_valid,
	s_axi_ar_bits_id,
	s_axi_ar_bits_addr,
	s_axi_ar_bits_len,
	s_axi_ar_bits_size,
	s_axi_ar_bits_burst,
	s_axi_ar_bits_lock,
	s_axi_ar_bits_cache,
	s_axi_ar_bits_prot,
	s_axi_ar_bits_qos,
	s_axi_ar_bits_region,
	s_axi_r_ready,
	s_axi_r_valid,
	s_axi_r_bits_id,
	s_axi_r_bits_data,
	s_axi_r_bits_resp,
	s_axi_r_bits_last,
	s_axi_aw_ready,
	s_axi_aw_valid,
	s_axi_aw_bits_id,
	s_axi_aw_bits_addr,
	s_axi_aw_bits_size,
	s_axi_aw_bits_burst,
	s_axi_w_ready,
	s_axi_w_valid,
	s_axi_w_bits_data,
	s_axi_w_bits_strb,
	s_axi_w_bits_last,
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
	m_axi_ar_bits_size,
	m_axi_ar_bits_burst,
	m_axi_ar_bits_lock,
	m_axi_ar_bits_cache,
	m_axi_ar_bits_prot,
	m_axi_ar_bits_qos,
	m_axi_ar_bits_region,
	m_axi_r_ready,
	m_axi_r_valid,
	m_axi_r_bits_id,
	m_axi_r_bits_data,
	m_axi_r_bits_resp,
	m_axi_r_bits_last,
	m_axi_aw_ready,
	m_axi_aw_valid,
	m_axi_aw_bits_id,
	m_axi_aw_bits_addr,
	m_axi_aw_bits_size,
	m_axi_aw_bits_burst,
	m_axi_w_ready,
	m_axi_w_valid,
	m_axi_w_bits_data,
	m_axi_w_bits_strb,
	m_axi_w_bits_last,
	m_axi_b_ready,
	m_axi_b_valid,
	m_axi_b_bits_id
);
	output wire s_axi_ar_ready;
	input s_axi_ar_valid;
	input [1:0] s_axi_ar_bits_id;
	input [63:0] s_axi_ar_bits_addr;
	input [7:0] s_axi_ar_bits_len;
	input [2:0] s_axi_ar_bits_size;
	input [1:0] s_axi_ar_bits_burst;
	input s_axi_ar_bits_lock;
	input [3:0] s_axi_ar_bits_cache;
	input [2:0] s_axi_ar_bits_prot;
	input [3:0] s_axi_ar_bits_qos;
	input [3:0] s_axi_ar_bits_region;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [1:0] s_axi_r_bits_id;
	output wire [511:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [1:0] s_axi_aw_bits_id;
	input [63:0] s_axi_aw_bits_addr;
	input [2:0] s_axi_aw_bits_size;
	input [1:0] s_axi_aw_bits_burst;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [511:0] s_axi_w_bits_data;
	input [63:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_id;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire [2:0] m_axi_ar_bits_size;
	output wire [1:0] m_axi_ar_bits_burst;
	output wire m_axi_ar_bits_lock;
	output wire [3:0] m_axi_ar_bits_cache;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire [3:0] m_axi_ar_bits_qos;
	output wire [3:0] m_axi_ar_bits_region;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [1:0] m_axi_r_bits_id;
	input [511:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [1:0] m_axi_aw_bits_id;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [2:0] m_axi_aw_bits_size;
	output wire [1:0] m_axi_aw_bits_burst;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [511:0] m_axi_w_bits_data;
	output wire [63:0] m_axi_w_bits_strb;
	output wire m_axi_w_bits_last;
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_id;
	assign s_axi_ar_ready = m_axi_ar_ready;
	assign s_axi_r_valid = m_axi_r_valid;
	assign s_axi_r_bits_id = m_axi_r_bits_id;
	assign s_axi_r_bits_data = m_axi_r_bits_data;
	assign s_axi_r_bits_resp = m_axi_r_bits_resp;
	assign s_axi_r_bits_last = m_axi_r_bits_last;
	assign s_axi_aw_ready = m_axi_aw_ready;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = m_axi_b_valid;
	assign s_axi_b_bits_id = m_axi_b_bits_id;
	assign m_axi_ar_valid = s_axi_ar_valid;
	assign m_axi_ar_bits_id = s_axi_ar_bits_id;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = s_axi_ar_bits_len;
	assign m_axi_ar_bits_size = s_axi_ar_bits_size;
	assign m_axi_ar_bits_burst = s_axi_ar_bits_burst;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
	assign m_axi_r_ready = s_axi_r_ready;
	assign m_axi_aw_valid = s_axi_aw_valid;
	assign m_axi_aw_bits_id = s_axi_aw_bits_id;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_size = s_axi_aw_bits_size;
	assign m_axi_aw_bits_burst = s_axi_aw_bits_burst;
	assign m_axi_w_valid = s_axi_w_valid;
	assign m_axi_w_bits_data = s_axi_w_bits_data;
	assign m_axi_w_bits_strb = s_axi_w_bits_strb;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
	assign m_axi_b_ready = s_axi_b_ready;
endmodule
module pageRankv2 (
	clock,
	reset_n,
	paused,
	done,
	s_axil_mgmt_hardcilk_ARREADY,
	s_axil_mgmt_hardcilk_ARVALID,
	s_axil_mgmt_hardcilk_ARADDR,
	s_axil_mgmt_hardcilk_ARPROT,
	s_axil_mgmt_hardcilk_RREADY,
	s_axil_mgmt_hardcilk_RVALID,
	s_axil_mgmt_hardcilk_RDATA,
	s_axil_mgmt_hardcilk_RRESP,
	s_axil_mgmt_hardcilk_AWREADY,
	s_axil_mgmt_hardcilk_AWVALID,
	s_axil_mgmt_hardcilk_AWADDR,
	s_axil_mgmt_hardcilk_AWPROT,
	s_axil_mgmt_hardcilk_WREADY,
	s_axil_mgmt_hardcilk_WVALID,
	s_axil_mgmt_hardcilk_WDATA,
	s_axil_mgmt_hardcilk_WSTRB,
	s_axil_mgmt_hardcilk_BREADY,
	s_axil_mgmt_hardcilk_BVALID,
	s_axil_mgmt_hardcilk_BRESP,
	m_axi_00_ARREADY,
	m_axi_00_ARVALID,
	m_axi_00_ARID,
	m_axi_00_ARADDR,
	m_axi_00_ARLEN,
	m_axi_00_ARSIZE,
	m_axi_00_ARBURST,
	m_axi_00_ARLOCK,
	m_axi_00_ARCACHE,
	m_axi_00_ARPROT,
	m_axi_00_ARQOS,
	m_axi_00_ARREGION,
	m_axi_00_RREADY,
	m_axi_00_RVALID,
	m_axi_00_RID,
	m_axi_00_RDATA,
	m_axi_00_RRESP,
	m_axi_00_RLAST,
	m_axi_00_AWREADY,
	m_axi_00_AWVALID,
	m_axi_00_AWID,
	m_axi_00_AWADDR,
	m_axi_00_AWLEN,
	m_axi_00_AWSIZE,
	m_axi_00_AWBURST,
	m_axi_00_AWLOCK,
	m_axi_00_AWCACHE,
	m_axi_00_AWPROT,
	m_axi_00_AWQOS,
	m_axi_00_AWREGION,
	m_axi_00_WREADY,
	m_axi_00_WVALID,
	m_axi_00_WDATA,
	m_axi_00_WSTRB,
	m_axi_00_WLAST,
	m_axi_00_BREADY,
	m_axi_00_BVALID,
	m_axi_00_BID,
	m_axi_00_BRESP,
	m_axi_01_ARREADY,
	m_axi_01_ARVALID,
	m_axi_01_ARID,
	m_axi_01_ARADDR,
	m_axi_01_ARLEN,
	m_axi_01_ARSIZE,
	m_axi_01_ARBURST,
	m_axi_01_ARLOCK,
	m_axi_01_ARCACHE,
	m_axi_01_ARPROT,
	m_axi_01_ARQOS,
	m_axi_01_ARREGION,
	m_axi_01_RREADY,
	m_axi_01_RVALID,
	m_axi_01_RID,
	m_axi_01_RDATA,
	m_axi_01_RRESP,
	m_axi_01_RLAST,
	m_axi_01_AWREADY,
	m_axi_01_AWVALID,
	m_axi_01_AWID,
	m_axi_01_AWADDR,
	m_axi_01_AWLEN,
	m_axi_01_AWSIZE,
	m_axi_01_AWBURST,
	m_axi_01_AWLOCK,
	m_axi_01_AWCACHE,
	m_axi_01_AWPROT,
	m_axi_01_AWQOS,
	m_axi_01_AWREGION,
	m_axi_01_WREADY,
	m_axi_01_WVALID,
	m_axi_01_WDATA,
	m_axi_01_WSTRB,
	m_axi_01_WLAST,
	m_axi_01_BREADY,
	m_axi_01_BVALID,
	m_axi_01_BID,
	m_axi_01_BRESP,
	m_axi_02_ARREADY,
	m_axi_02_ARVALID,
	m_axi_02_ARID,
	m_axi_02_ARADDR,
	m_axi_02_ARLEN,
	m_axi_02_ARSIZE,
	m_axi_02_ARBURST,
	m_axi_02_ARLOCK,
	m_axi_02_ARCACHE,
	m_axi_02_ARPROT,
	m_axi_02_ARQOS,
	m_axi_02_ARREGION,
	m_axi_02_RREADY,
	m_axi_02_RVALID,
	m_axi_02_RID,
	m_axi_02_RDATA,
	m_axi_02_RRESP,
	m_axi_02_RLAST,
	m_axi_02_AWREADY,
	m_axi_02_AWVALID,
	m_axi_02_AWID,
	m_axi_02_AWADDR,
	m_axi_02_AWLEN,
	m_axi_02_AWSIZE,
	m_axi_02_AWBURST,
	m_axi_02_AWLOCK,
	m_axi_02_AWCACHE,
	m_axi_02_AWPROT,
	m_axi_02_AWQOS,
	m_axi_02_AWREGION,
	m_axi_02_WREADY,
	m_axi_02_WVALID,
	m_axi_02_WDATA,
	m_axi_02_WSTRB,
	m_axi_02_WLAST,
	m_axi_02_BREADY,
	m_axi_02_BVALID,
	m_axi_02_BID,
	m_axi_02_BRESP,
	m_axi_03_ARREADY,
	m_axi_03_ARVALID,
	m_axi_03_ARID,
	m_axi_03_ARADDR,
	m_axi_03_ARLEN,
	m_axi_03_ARSIZE,
	m_axi_03_ARBURST,
	m_axi_03_ARLOCK,
	m_axi_03_ARCACHE,
	m_axi_03_ARPROT,
	m_axi_03_ARQOS,
	m_axi_03_ARREGION,
	m_axi_03_RREADY,
	m_axi_03_RVALID,
	m_axi_03_RID,
	m_axi_03_RDATA,
	m_axi_03_RRESP,
	m_axi_03_RLAST,
	m_axi_03_AWREADY,
	m_axi_03_AWVALID,
	m_axi_03_AWID,
	m_axi_03_AWADDR,
	m_axi_03_AWLEN,
	m_axi_03_AWSIZE,
	m_axi_03_AWBURST,
	m_axi_03_AWLOCK,
	m_axi_03_AWCACHE,
	m_axi_03_AWPROT,
	m_axi_03_AWQOS,
	m_axi_03_AWREGION,
	m_axi_03_WREADY,
	m_axi_03_WVALID,
	m_axi_03_WDATA,
	m_axi_03_WSTRB,
	m_axi_03_WLAST,
	m_axi_03_BREADY,
	m_axi_03_BVALID,
	m_axi_03_BID,
	m_axi_03_BRESP,
	m_axi_04_ARREADY,
	m_axi_04_ARVALID,
	m_axi_04_ARID,
	m_axi_04_ARADDR,
	m_axi_04_ARLEN,
	m_axi_04_ARSIZE,
	m_axi_04_ARBURST,
	m_axi_04_ARLOCK,
	m_axi_04_ARCACHE,
	m_axi_04_ARPROT,
	m_axi_04_ARQOS,
	m_axi_04_ARREGION,
	m_axi_04_RREADY,
	m_axi_04_RVALID,
	m_axi_04_RID,
	m_axi_04_RDATA,
	m_axi_04_RRESP,
	m_axi_04_RLAST,
	m_axi_04_AWREADY,
	m_axi_04_AWVALID,
	m_axi_04_AWID,
	m_axi_04_AWADDR,
	m_axi_04_AWLEN,
	m_axi_04_AWSIZE,
	m_axi_04_AWBURST,
	m_axi_04_AWLOCK,
	m_axi_04_AWCACHE,
	m_axi_04_AWPROT,
	m_axi_04_AWQOS,
	m_axi_04_AWREGION,
	m_axi_04_WREADY,
	m_axi_04_WVALID,
	m_axi_04_WDATA,
	m_axi_04_WSTRB,
	m_axi_04_WLAST,
	m_axi_04_BREADY,
	m_axi_04_BVALID,
	m_axi_04_BID,
	m_axi_04_BRESP,
	m_axi_05_ARREADY,
	m_axi_05_ARVALID,
	m_axi_05_ARID,
	m_axi_05_ARADDR,
	m_axi_05_ARLEN,
	m_axi_05_ARSIZE,
	m_axi_05_ARBURST,
	m_axi_05_ARLOCK,
	m_axi_05_ARCACHE,
	m_axi_05_ARPROT,
	m_axi_05_ARQOS,
	m_axi_05_ARREGION,
	m_axi_05_RREADY,
	m_axi_05_RVALID,
	m_axi_05_RID,
	m_axi_05_RDATA,
	m_axi_05_RRESP,
	m_axi_05_RLAST,
	m_axi_05_AWREADY,
	m_axi_05_AWVALID,
	m_axi_05_AWID,
	m_axi_05_AWADDR,
	m_axi_05_AWLEN,
	m_axi_05_AWSIZE,
	m_axi_05_AWBURST,
	m_axi_05_AWLOCK,
	m_axi_05_AWCACHE,
	m_axi_05_AWPROT,
	m_axi_05_AWQOS,
	m_axi_05_AWREGION,
	m_axi_05_WREADY,
	m_axi_05_WVALID,
	m_axi_05_WDATA,
	m_axi_05_WSTRB,
	m_axi_05_WLAST,
	m_axi_05_BREADY,
	m_axi_05_BVALID,
	m_axi_05_BID,
	m_axi_05_BRESP,
	m_axi_06_ARREADY,
	m_axi_06_ARVALID,
	m_axi_06_ARID,
	m_axi_06_ARADDR,
	m_axi_06_ARLEN,
	m_axi_06_ARSIZE,
	m_axi_06_ARBURST,
	m_axi_06_ARLOCK,
	m_axi_06_ARCACHE,
	m_axi_06_ARPROT,
	m_axi_06_ARQOS,
	m_axi_06_ARREGION,
	m_axi_06_RREADY,
	m_axi_06_RVALID,
	m_axi_06_RID,
	m_axi_06_RDATA,
	m_axi_06_RRESP,
	m_axi_06_RLAST,
	m_axi_06_AWREADY,
	m_axi_06_AWVALID,
	m_axi_06_AWID,
	m_axi_06_AWADDR,
	m_axi_06_AWLEN,
	m_axi_06_AWSIZE,
	m_axi_06_AWBURST,
	m_axi_06_AWLOCK,
	m_axi_06_AWCACHE,
	m_axi_06_AWPROT,
	m_axi_06_AWQOS,
	m_axi_06_AWREGION,
	m_axi_06_WREADY,
	m_axi_06_WVALID,
	m_axi_06_WDATA,
	m_axi_06_WSTRB,
	m_axi_06_WLAST,
	m_axi_06_BREADY,
	m_axi_06_BVALID,
	m_axi_06_BID,
	m_axi_06_BRESP,
	vertex_map_0_s_axi_control_ARREADY,
	vertex_map_0_s_axi_control_ARVALID,
	vertex_map_0_s_axi_control_ARADDR,
	vertex_map_0_s_axi_control_RREADY,
	vertex_map_0_s_axi_control_RVALID,
	vertex_map_0_s_axi_control_RDATA,
	vertex_map_0_s_axi_control_RRESP,
	vertex_map_0_s_axi_control_AWREADY,
	vertex_map_0_s_axi_control_AWVALID,
	vertex_map_0_s_axi_control_AWADDR,
	vertex_map_0_s_axi_control_WREADY,
	vertex_map_0_s_axi_control_WVALID,
	vertex_map_0_s_axi_control_WDATA,
	vertex_map_0_s_axi_control_WSTRB,
	vertex_map_0_s_axi_control_BREADY,
	vertex_map_0_s_axi_control_BVALID,
	vertex_map_0_s_axi_control_BRESP
);
	input clock;
	input reset_n;
	wire reset = ~reset_n;
	output wire paused;
	output wire done;
	output wire s_axil_mgmt_hardcilk_ARREADY;
	input s_axil_mgmt_hardcilk_ARVALID;
	input [9:0] s_axil_mgmt_hardcilk_ARADDR;
	input [2:0] s_axil_mgmt_hardcilk_ARPROT;
	input s_axil_mgmt_hardcilk_RREADY;
	output wire s_axil_mgmt_hardcilk_RVALID;
	output wire [31:0] s_axil_mgmt_hardcilk_RDATA;
	output wire [1:0] s_axil_mgmt_hardcilk_RRESP;
	output wire s_axil_mgmt_hardcilk_AWREADY;
	input s_axil_mgmt_hardcilk_AWVALID;
	input [9:0] s_axil_mgmt_hardcilk_AWADDR;
	input [2:0] s_axil_mgmt_hardcilk_AWPROT;
	output wire s_axil_mgmt_hardcilk_WREADY;
	input s_axil_mgmt_hardcilk_WVALID;
	input [31:0] s_axil_mgmt_hardcilk_WDATA;
	input [3:0] s_axil_mgmt_hardcilk_WSTRB;
	input s_axil_mgmt_hardcilk_BREADY;
	output wire s_axil_mgmt_hardcilk_BVALID;
	output wire [1:0] s_axil_mgmt_hardcilk_BRESP;
	input m_axi_00_ARREADY;
	output wire m_axi_00_ARVALID;
	output wire [1:0] m_axi_00_ARID;
	output wire [63:0] m_axi_00_ARADDR;
	output wire [7:0] m_axi_00_ARLEN;
	output wire [2:0] m_axi_00_ARSIZE;
	output wire [1:0] m_axi_00_ARBURST;
	output wire m_axi_00_ARLOCK;
	output wire [3:0] m_axi_00_ARCACHE;
	output wire [2:0] m_axi_00_ARPROT;
	output wire [3:0] m_axi_00_ARQOS;
	output wire [3:0] m_axi_00_ARREGION;
	output wire m_axi_00_RREADY;
	input m_axi_00_RVALID;
	input [1:0] m_axi_00_RID;
	input [255:0] m_axi_00_RDATA;
	input [1:0] m_axi_00_RRESP;
	input m_axi_00_RLAST;
	input m_axi_00_AWREADY;
	output wire m_axi_00_AWVALID;
	output wire [1:0] m_axi_00_AWID;
	output wire [63:0] m_axi_00_AWADDR;
	output wire [7:0] m_axi_00_AWLEN;
	output wire [2:0] m_axi_00_AWSIZE;
	output wire [1:0] m_axi_00_AWBURST;
	output wire m_axi_00_AWLOCK;
	output wire [3:0] m_axi_00_AWCACHE;
	output wire [2:0] m_axi_00_AWPROT;
	output wire [3:0] m_axi_00_AWQOS;
	output wire [3:0] m_axi_00_AWREGION;
	input m_axi_00_WREADY;
	output wire m_axi_00_WVALID;
	output wire [255:0] m_axi_00_WDATA;
	output wire [31:0] m_axi_00_WSTRB;
	output wire m_axi_00_WLAST;
	output wire m_axi_00_BREADY;
	input m_axi_00_BVALID;
	input [1:0] m_axi_00_BID;
	input [1:0] m_axi_00_BRESP;
	input m_axi_01_ARREADY;
	output wire m_axi_01_ARVALID;
	output wire [1:0] m_axi_01_ARID;
	output wire [63:0] m_axi_01_ARADDR;
	output wire [7:0] m_axi_01_ARLEN;
	output wire [2:0] m_axi_01_ARSIZE;
	output wire [1:0] m_axi_01_ARBURST;
	output wire m_axi_01_ARLOCK;
	output wire [3:0] m_axi_01_ARCACHE;
	output wire [2:0] m_axi_01_ARPROT;
	output wire [3:0] m_axi_01_ARQOS;
	output wire [3:0] m_axi_01_ARREGION;
	output wire m_axi_01_RREADY;
	input m_axi_01_RVALID;
	input [1:0] m_axi_01_RID;
	input [255:0] m_axi_01_RDATA;
	input [1:0] m_axi_01_RRESP;
	input m_axi_01_RLAST;
	input m_axi_01_AWREADY;
	output wire m_axi_01_AWVALID;
	output wire [1:0] m_axi_01_AWID;
	output wire [63:0] m_axi_01_AWADDR;
	output wire [7:0] m_axi_01_AWLEN;
	output wire [2:0] m_axi_01_AWSIZE;
	output wire [1:0] m_axi_01_AWBURST;
	output wire m_axi_01_AWLOCK;
	output wire [3:0] m_axi_01_AWCACHE;
	output wire [2:0] m_axi_01_AWPROT;
	output wire [3:0] m_axi_01_AWQOS;
	output wire [3:0] m_axi_01_AWREGION;
	input m_axi_01_WREADY;
	output wire m_axi_01_WVALID;
	output wire [255:0] m_axi_01_WDATA;
	output wire [31:0] m_axi_01_WSTRB;
	output wire m_axi_01_WLAST;
	output wire m_axi_01_BREADY;
	input m_axi_01_BVALID;
	input [1:0] m_axi_01_BID;
	input [1:0] m_axi_01_BRESP;
	input m_axi_02_ARREADY;
	output wire m_axi_02_ARVALID;
	output wire [1:0] m_axi_02_ARID;
	output wire [63:0] m_axi_02_ARADDR;
	output wire [7:0] m_axi_02_ARLEN;
	output wire [2:0] m_axi_02_ARSIZE;
	output wire [1:0] m_axi_02_ARBURST;
	output wire m_axi_02_ARLOCK;
	output wire [3:0] m_axi_02_ARCACHE;
	output wire [2:0] m_axi_02_ARPROT;
	output wire [3:0] m_axi_02_ARQOS;
	output wire [3:0] m_axi_02_ARREGION;
	output wire m_axi_02_RREADY;
	input m_axi_02_RVALID;
	input [1:0] m_axi_02_RID;
	input [255:0] m_axi_02_RDATA;
	input [1:0] m_axi_02_RRESP;
	input m_axi_02_RLAST;
	input m_axi_02_AWREADY;
	output wire m_axi_02_AWVALID;
	output wire [1:0] m_axi_02_AWID;
	output wire [63:0] m_axi_02_AWADDR;
	output wire [7:0] m_axi_02_AWLEN;
	output wire [2:0] m_axi_02_AWSIZE;
	output wire [1:0] m_axi_02_AWBURST;
	output wire m_axi_02_AWLOCK;
	output wire [3:0] m_axi_02_AWCACHE;
	output wire [2:0] m_axi_02_AWPROT;
	output wire [3:0] m_axi_02_AWQOS;
	output wire [3:0] m_axi_02_AWREGION;
	input m_axi_02_WREADY;
	output wire m_axi_02_WVALID;
	output wire [255:0] m_axi_02_WDATA;
	output wire [31:0] m_axi_02_WSTRB;
	output wire m_axi_02_WLAST;
	output wire m_axi_02_BREADY;
	input m_axi_02_BVALID;
	input [1:0] m_axi_02_BID;
	input [1:0] m_axi_02_BRESP;
	input m_axi_03_ARREADY;
	output wire m_axi_03_ARVALID;
	output wire [1:0] m_axi_03_ARID;
	output wire [63:0] m_axi_03_ARADDR;
	output wire [7:0] m_axi_03_ARLEN;
	output wire [2:0] m_axi_03_ARSIZE;
	output wire [1:0] m_axi_03_ARBURST;
	output wire m_axi_03_ARLOCK;
	output wire [3:0] m_axi_03_ARCACHE;
	output wire [2:0] m_axi_03_ARPROT;
	output wire [3:0] m_axi_03_ARQOS;
	output wire [3:0] m_axi_03_ARREGION;
	output wire m_axi_03_RREADY;
	input m_axi_03_RVALID;
	input [1:0] m_axi_03_RID;
	input [255:0] m_axi_03_RDATA;
	input [1:0] m_axi_03_RRESP;
	input m_axi_03_RLAST;
	input m_axi_03_AWREADY;
	output wire m_axi_03_AWVALID;
	output wire [1:0] m_axi_03_AWID;
	output wire [63:0] m_axi_03_AWADDR;
	output wire [7:0] m_axi_03_AWLEN;
	output wire [2:0] m_axi_03_AWSIZE;
	output wire [1:0] m_axi_03_AWBURST;
	output wire m_axi_03_AWLOCK;
	output wire [3:0] m_axi_03_AWCACHE;
	output wire [2:0] m_axi_03_AWPROT;
	output wire [3:0] m_axi_03_AWQOS;
	output wire [3:0] m_axi_03_AWREGION;
	input m_axi_03_WREADY;
	output wire m_axi_03_WVALID;
	output wire [255:0] m_axi_03_WDATA;
	output wire [31:0] m_axi_03_WSTRB;
	output wire m_axi_03_WLAST;
	output wire m_axi_03_BREADY;
	input m_axi_03_BVALID;
	input [1:0] m_axi_03_BID;
	input [1:0] m_axi_03_BRESP;
	input m_axi_04_ARREADY;
	output wire m_axi_04_ARVALID;
	output wire [1:0] m_axi_04_ARID;
	output wire [63:0] m_axi_04_ARADDR;
	output wire [7:0] m_axi_04_ARLEN;
	output wire [2:0] m_axi_04_ARSIZE;
	output wire [1:0] m_axi_04_ARBURST;
	output wire m_axi_04_ARLOCK;
	output wire [3:0] m_axi_04_ARCACHE;
	output wire [2:0] m_axi_04_ARPROT;
	output wire [3:0] m_axi_04_ARQOS;
	output wire [3:0] m_axi_04_ARREGION;
	output wire m_axi_04_RREADY;
	input m_axi_04_RVALID;
	input [1:0] m_axi_04_RID;
	input [255:0] m_axi_04_RDATA;
	input [1:0] m_axi_04_RRESP;
	input m_axi_04_RLAST;
	input m_axi_04_AWREADY;
	output wire m_axi_04_AWVALID;
	output wire [1:0] m_axi_04_AWID;
	output wire [63:0] m_axi_04_AWADDR;
	output wire [7:0] m_axi_04_AWLEN;
	output wire [2:0] m_axi_04_AWSIZE;
	output wire [1:0] m_axi_04_AWBURST;
	output wire m_axi_04_AWLOCK;
	output wire [3:0] m_axi_04_AWCACHE;
	output wire [2:0] m_axi_04_AWPROT;
	output wire [3:0] m_axi_04_AWQOS;
	output wire [3:0] m_axi_04_AWREGION;
	input m_axi_04_WREADY;
	output wire m_axi_04_WVALID;
	output wire [255:0] m_axi_04_WDATA;
	output wire [31:0] m_axi_04_WSTRB;
	output wire m_axi_04_WLAST;
	output wire m_axi_04_BREADY;
	input m_axi_04_BVALID;
	input [1:0] m_axi_04_BID;
	input [1:0] m_axi_04_BRESP;
	input m_axi_05_ARREADY;
	output wire m_axi_05_ARVALID;
	output wire [1:0] m_axi_05_ARID;
	output wire [63:0] m_axi_05_ARADDR;
	output wire [7:0] m_axi_05_ARLEN;
	output wire [2:0] m_axi_05_ARSIZE;
	output wire [1:0] m_axi_05_ARBURST;
	output wire m_axi_05_ARLOCK;
	output wire [3:0] m_axi_05_ARCACHE;
	output wire [2:0] m_axi_05_ARPROT;
	output wire [3:0] m_axi_05_ARQOS;
	output wire [3:0] m_axi_05_ARREGION;
	output wire m_axi_05_RREADY;
	input m_axi_05_RVALID;
	input [1:0] m_axi_05_RID;
	input [255:0] m_axi_05_RDATA;
	input [1:0] m_axi_05_RRESP;
	input m_axi_05_RLAST;
	input m_axi_05_AWREADY;
	output wire m_axi_05_AWVALID;
	output wire [1:0] m_axi_05_AWID;
	output wire [63:0] m_axi_05_AWADDR;
	output wire [7:0] m_axi_05_AWLEN;
	output wire [2:0] m_axi_05_AWSIZE;
	output wire [1:0] m_axi_05_AWBURST;
	output wire m_axi_05_AWLOCK;
	output wire [3:0] m_axi_05_AWCACHE;
	output wire [2:0] m_axi_05_AWPROT;
	output wire [3:0] m_axi_05_AWQOS;
	output wire [3:0] m_axi_05_AWREGION;
	input m_axi_05_WREADY;
	output wire m_axi_05_WVALID;
	output wire [255:0] m_axi_05_WDATA;
	output wire [31:0] m_axi_05_WSTRB;
	output wire m_axi_05_WLAST;
	output wire m_axi_05_BREADY;
	input m_axi_05_BVALID;
	input [1:0] m_axi_05_BID;
	input [1:0] m_axi_05_BRESP;
	input m_axi_06_ARREADY;
	output wire m_axi_06_ARVALID;
	output wire [1:0] m_axi_06_ARID;
	output wire [63:0] m_axi_06_ARADDR;
	output wire [7:0] m_axi_06_ARLEN;
	output wire [2:0] m_axi_06_ARSIZE;
	output wire [1:0] m_axi_06_ARBURST;
	output wire m_axi_06_ARLOCK;
	output wire [3:0] m_axi_06_ARCACHE;
	output wire [2:0] m_axi_06_ARPROT;
	output wire [3:0] m_axi_06_ARQOS;
	output wire [3:0] m_axi_06_ARREGION;
	output wire m_axi_06_RREADY;
	input m_axi_06_RVALID;
	input [1:0] m_axi_06_RID;
	input [255:0] m_axi_06_RDATA;
	input [1:0] m_axi_06_RRESP;
	input m_axi_06_RLAST;
	input m_axi_06_AWREADY;
	output wire m_axi_06_AWVALID;
	output wire [1:0] m_axi_06_AWID;
	output wire [63:0] m_axi_06_AWADDR;
	output wire [7:0] m_axi_06_AWLEN;
	output wire [2:0] m_axi_06_AWSIZE;
	output wire [1:0] m_axi_06_AWBURST;
	output wire m_axi_06_AWLOCK;
	output wire [3:0] m_axi_06_AWCACHE;
	output wire [2:0] m_axi_06_AWPROT;
	output wire [3:0] m_axi_06_AWQOS;
	output wire [3:0] m_axi_06_AWREGION;
	input m_axi_06_WREADY;
	output wire m_axi_06_WVALID;
	output wire [255:0] m_axi_06_WDATA;
	output wire [31:0] m_axi_06_WSTRB;
	output wire m_axi_06_WLAST;
	output wire m_axi_06_BREADY;
	input m_axi_06_BVALID;
	input [1:0] m_axi_06_BID;
	input [1:0] m_axi_06_BRESP;
	output wire vertex_map_0_s_axi_control_ARREADY;
	input vertex_map_0_s_axi_control_ARVALID;
	input [3:0] vertex_map_0_s_axi_control_ARADDR;
	input vertex_map_0_s_axi_control_RREADY;
	output wire vertex_map_0_s_axi_control_RVALID;
	output wire [31:0] vertex_map_0_s_axi_control_RDATA;
	output wire [1:0] vertex_map_0_s_axi_control_RRESP;
	output wire vertex_map_0_s_axi_control_AWREADY;
	input vertex_map_0_s_axi_control_AWVALID;
	input [3:0] vertex_map_0_s_axi_control_AWADDR;
	output wire vertex_map_0_s_axi_control_WREADY;
	input vertex_map_0_s_axi_control_WVALID;
	input [31:0] vertex_map_0_s_axi_control_WDATA;
	input [3:0] vertex_map_0_s_axi_control_WSTRB;
	input vertex_map_0_s_axi_control_BREADY;
	output wire vertex_map_0_s_axi_control_BVALID;
	output wire [1:0] vertex_map_0_s_axi_control_BRESP;
	wire _axpbs_6_s_axi_ARREADY;
	wire _axpbs_6_s_axi_RVALID;
	wire [255:0] _axpbs_6_s_axi_RDATA;
	wire [1:0] _axpbs_6_s_axi_RRESP;
	wire _axpbs_6_s_axi_RLAST;
	wire _axpbs_6_s_axi_AWREADY;
	wire _axpbs_6_s_axi_WREADY;
	wire _axpbs_6_s_axi_BVALID;
	wire [1:0] _axpbs_6_s_axi_BID;
	wire [1:0] _axpbs_6_s_axi_BRESP;
	wire _sinkBuffer_13_io_enq_ready;
	wire _sinkBuffer_13_io_deq_valid;
	wire _sourceBuffer_20_io_enq_ready;
	wire _sourceBuffer_20_io_deq_valid;
	wire [511:0] _sourceBuffer_20_io_deq_bits_data;
	wire [63:0] _sourceBuffer_20_io_deq_bits_strb;
	wire _sourceBuffer_20_io_deq_bits_last;
	wire _sourceBuffer_19_io_enq_ready;
	wire _sourceBuffer_19_io_deq_valid;
	wire [63:0] _sourceBuffer_19_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_19_io_deq_bits_len;
	wire [2:0] _sourceBuffer_19_io_deq_bits_size;
	wire [1:0] _sourceBuffer_19_io_deq_bits_burst;
	wire _sourceBuffer_19_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_19_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_19_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_19_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_19_io_deq_bits_region;
	wire _sinkBuffer_12_io_enq_ready;
	wire _sinkBuffer_12_io_deq_valid;
	wire [511:0] _sinkBuffer_12_io_deq_bits_data;
	wire _sinkBuffer_12_io_deq_bits_last;
	wire _sourceBuffer_18_io_enq_ready;
	wire _sourceBuffer_18_io_deq_valid;
	wire [63:0] _sourceBuffer_18_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_18_io_deq_bits_len;
	wire [2:0] _sourceBuffer_18_io_deq_bits_size;
	wire [1:0] _sourceBuffer_18_io_deq_bits_burst;
	wire _sourceBuffer_18_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_18_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_18_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_18_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_18_io_deq_bits_region;
	wire _AxiUserYanker_6_s_axi_ar_ready;
	wire _AxiUserYanker_6_s_axi_r_valid;
	wire [511:0] _AxiUserYanker_6_s_axi_r_bits_data;
	wire _AxiUserYanker_6_s_axi_r_bits_last;
	wire _AxiUserYanker_6_s_axi_aw_ready;
	wire _AxiUserYanker_6_s_axi_w_ready;
	wire _AxiUserYanker_6_s_axi_b_valid;
	wire _AxiUserYanker_6_m_axi_ar_valid;
	wire [63:0] _AxiUserYanker_6_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_6_m_axi_ar_bits_len;
	wire _AxiUserYanker_6_m_axi_r_ready;
	wire _AxiUserYanker_6_m_axi_aw_valid;
	wire [63:0] _AxiUserYanker_6_m_axi_aw_bits_addr;
	wire [7:0] _AxiUserYanker_6_m_axi_aw_bits_len;
	wire _AxiUserYanker_6_m_axi_w_valid;
	wire [511:0] _AxiUserYanker_6_m_axi_w_bits_data;
	wire _AxiUserYanker_6_m_axi_w_bits_last;
	wire _AxiUserYanker_6_m_axi_b_ready;
	wire _protocolConverter_6_s_axi_ar_ready;
	wire _protocolConverter_6_s_axi_r_valid;
	wire [511:0] _protocolConverter_6_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_6_s_axi_r_bits_resp;
	wire _protocolConverter_6_s_axi_r_bits_last;
	wire _protocolConverter_6_s_axi_aw_ready;
	wire _protocolConverter_6_s_axi_w_ready;
	wire _protocolConverter_6_s_axi_b_valid;
	wire [1:0] _protocolConverter_6_s_axi_b_bits_resp;
	wire _protocolConverter_6_m_axi_ar_valid;
	wire [1:0] _protocolConverter_6_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_6_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_6_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_6_m_axi_ar_bits_size;
	wire _protocolConverter_6_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_6_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_6_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_6_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_6_m_axi_ar_bits_region;
	wire _protocolConverter_6_m_axi_r_ready;
	wire _protocolConverter_6_m_axi_aw_valid;
	wire [1:0] _protocolConverter_6_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_6_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_6_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_6_m_axi_aw_bits_size;
	wire _protocolConverter_6_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_6_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_6_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_6_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_6_m_axi_aw_bits_region;
	wire _protocolConverter_6_m_axi_w_valid;
	wire [255:0] _protocolConverter_6_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_6_m_axi_w_bits_strb;
	wire _protocolConverter_6_m_axi_b_ready;
	wire _axpbs_5_s_axi_ARREADY;
	wire _axpbs_5_s_axi_RVALID;
	wire [1:0] _axpbs_5_s_axi_RID;
	wire [255:0] _axpbs_5_s_axi_RDATA;
	wire [1:0] _axpbs_5_s_axi_RRESP;
	wire _axpbs_5_s_axi_RLAST;
	wire _axpbs_5_s_axi_AWREADY;
	wire _axpbs_5_s_axi_WREADY;
	wire _axpbs_5_s_axi_BVALID;
	wire [1:0] _axpbs_5_s_axi_BID;
	wire [1:0] _axpbs_5_s_axi_BRESP;
	wire _sinkBuffer_11_io_enq_ready;
	wire _sinkBuffer_11_io_deq_valid;
	wire [1:0] _sinkBuffer_11_io_deq_bits_id;
	wire _sourceBuffer_17_io_enq_ready;
	wire _sourceBuffer_17_io_deq_valid;
	wire [511:0] _sourceBuffer_17_io_deq_bits_data;
	wire [63:0] _sourceBuffer_17_io_deq_bits_strb;
	wire _sourceBuffer_17_io_deq_bits_last;
	wire _sourceBuffer_16_io_enq_ready;
	wire _sourceBuffer_16_io_deq_valid;
	wire [1:0] _sourceBuffer_16_io_deq_bits_id;
	wire [63:0] _sourceBuffer_16_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_16_io_deq_bits_len;
	wire [2:0] _sourceBuffer_16_io_deq_bits_size;
	wire [1:0] _sourceBuffer_16_io_deq_bits_burst;
	wire _sourceBuffer_16_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_16_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_16_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_16_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_16_io_deq_bits_region;
	wire _sinkBuffer_10_io_enq_ready;
	wire _sinkBuffer_10_io_deq_valid;
	wire [1:0] _sinkBuffer_10_io_deq_bits_id;
	wire [511:0] _sinkBuffer_10_io_deq_bits_data;
	wire [1:0] _sinkBuffer_10_io_deq_bits_resp;
	wire _sinkBuffer_10_io_deq_bits_last;
	wire _sourceBuffer_15_io_enq_ready;
	wire _sourceBuffer_15_io_deq_valid;
	wire [1:0] _sourceBuffer_15_io_deq_bits_id;
	wire [63:0] _sourceBuffer_15_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_15_io_deq_bits_len;
	wire [2:0] _sourceBuffer_15_io_deq_bits_size;
	wire [1:0] _sourceBuffer_15_io_deq_bits_burst;
	wire _sourceBuffer_15_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_15_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_15_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_15_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_15_io_deq_bits_region;
	wire _AxiUserYanker_5_s_axi_ar_ready;
	wire _AxiUserYanker_5_s_axi_r_valid;
	wire [511:0] _AxiUserYanker_5_s_axi_r_bits_data;
	wire _AxiUserYanker_5_m_axi_ar_valid;
	wire [1:0] _AxiUserYanker_5_m_axi_ar_bits_id;
	wire [63:0] _AxiUserYanker_5_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_5_m_axi_ar_bits_len;
	wire [2:0] _AxiUserYanker_5_m_axi_ar_bits_size;
	wire [1:0] _AxiUserYanker_5_m_axi_ar_bits_burst;
	wire _AxiUserYanker_5_m_axi_ar_bits_lock;
	wire [3:0] _AxiUserYanker_5_m_axi_ar_bits_cache;
	wire [2:0] _AxiUserYanker_5_m_axi_ar_bits_prot;
	wire [3:0] _AxiUserYanker_5_m_axi_ar_bits_qos;
	wire [3:0] _AxiUserYanker_5_m_axi_ar_bits_region;
	wire _AxiUserYanker_5_m_axi_r_ready;
	wire _AxiUserYanker_5_m_axi_aw_valid;
	wire [1:0] _AxiUserYanker_5_m_axi_aw_bits_id;
	wire [63:0] _AxiUserYanker_5_m_axi_aw_bits_addr;
	wire [2:0] _AxiUserYanker_5_m_axi_aw_bits_size;
	wire [1:0] _AxiUserYanker_5_m_axi_aw_bits_burst;
	wire _AxiUserYanker_5_m_axi_w_valid;
	wire [511:0] _AxiUserYanker_5_m_axi_w_bits_data;
	wire [63:0] _AxiUserYanker_5_m_axi_w_bits_strb;
	wire _AxiUserYanker_5_m_axi_w_bits_last;
	wire _AxiUserYanker_5_m_axi_b_ready;
	wire _protocolConverter_5_s_axi_ar_ready;
	wire _protocolConverter_5_s_axi_r_valid;
	wire [1:0] _protocolConverter_5_s_axi_r_bits_id;
	wire [511:0] _protocolConverter_5_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_5_s_axi_r_bits_resp;
	wire _protocolConverter_5_s_axi_r_bits_last;
	wire _protocolConverter_5_s_axi_aw_ready;
	wire _protocolConverter_5_s_axi_w_ready;
	wire _protocolConverter_5_s_axi_b_valid;
	wire [1:0] _protocolConverter_5_s_axi_b_bits_id;
	wire [1:0] _protocolConverter_5_s_axi_b_bits_resp;
	wire _protocolConverter_5_m_axi_ar_valid;
	wire [1:0] _protocolConverter_5_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_5_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_5_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_5_m_axi_ar_bits_size;
	wire [1:0] _protocolConverter_5_m_axi_ar_bits_burst;
	wire _protocolConverter_5_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_5_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_5_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_5_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_5_m_axi_ar_bits_region;
	wire _protocolConverter_5_m_axi_r_ready;
	wire _protocolConverter_5_m_axi_aw_valid;
	wire [1:0] _protocolConverter_5_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_5_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_5_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_5_m_axi_aw_bits_size;
	wire [1:0] _protocolConverter_5_m_axi_aw_bits_burst;
	wire _protocolConverter_5_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_5_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_5_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_5_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_5_m_axi_aw_bits_region;
	wire _protocolConverter_5_m_axi_w_valid;
	wire [255:0] _protocolConverter_5_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_5_m_axi_w_bits_strb;
	wire _protocolConverter_5_m_axi_b_ready;
	wire _axpbs_4_s_axi_ARREADY;
	wire _axpbs_4_s_axi_RVALID;
	wire [1:0] _axpbs_4_s_axi_RID;
	wire [255:0] _axpbs_4_s_axi_RDATA;
	wire [1:0] _axpbs_4_s_axi_RRESP;
	wire _axpbs_4_s_axi_RLAST;
	wire _axpbs_4_s_axi_AWREADY;
	wire _axpbs_4_s_axi_WREADY;
	wire _axpbs_4_s_axi_BVALID;
	wire [1:0] _axpbs_4_s_axi_BID;
	wire [1:0] _axpbs_4_s_axi_BRESP;
	wire _sinkBuffer_9_io_enq_ready;
	wire _sinkBuffer_9_io_deq_valid;
	wire _sourceBuffer_14_io_enq_ready;
	wire _sourceBuffer_14_io_deq_valid;
	wire [511:0] _sourceBuffer_14_io_deq_bits_data;
	wire [63:0] _sourceBuffer_14_io_deq_bits_strb;
	wire _sourceBuffer_14_io_deq_bits_last;
	wire _sourceBuffer_13_io_enq_ready;
	wire _sourceBuffer_13_io_deq_valid;
	wire _sourceBuffer_13_io_deq_bits_id;
	wire [63:0] _sourceBuffer_13_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_13_io_deq_bits_len;
	wire [2:0] _sourceBuffer_13_io_deq_bits_size;
	wire [1:0] _sourceBuffer_13_io_deq_bits_burst;
	wire _sourceBuffer_13_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_13_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_13_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_13_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_13_io_deq_bits_region;
	wire _sinkBuffer_8_io_enq_ready;
	wire _sinkBuffer_8_io_deq_valid;
	wire [511:0] _sinkBuffer_8_io_deq_bits_data;
	wire _sourceBuffer_12_io_enq_ready;
	wire _sourceBuffer_12_io_deq_valid;
	wire _sourceBuffer_12_io_deq_bits_id;
	wire [63:0] _sourceBuffer_12_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_12_io_deq_bits_len;
	wire [2:0] _sourceBuffer_12_io_deq_bits_size;
	wire [1:0] _sourceBuffer_12_io_deq_bits_burst;
	wire _sourceBuffer_12_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_12_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_12_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_12_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_12_io_deq_bits_region;
	wire _AxiUserYanker_4_s_axi_ar_ready;
	wire _AxiUserYanker_4_s_axi_r_valid;
	wire [511:0] _AxiUserYanker_4_s_axi_r_bits_data;
	wire _AxiUserYanker_4_s_axi_aw_ready;
	wire _AxiUserYanker_4_s_axi_w_ready;
	wire _AxiUserYanker_4_s_axi_b_valid;
	wire _AxiUserYanker_4_m_axi_ar_valid;
	wire [63:0] _AxiUserYanker_4_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_4_m_axi_ar_bits_len;
	wire [2:0] _AxiUserYanker_4_m_axi_ar_bits_size;
	wire [1:0] _AxiUserYanker_4_m_axi_ar_bits_burst;
	wire _AxiUserYanker_4_m_axi_ar_bits_lock;
	wire [3:0] _AxiUserYanker_4_m_axi_ar_bits_cache;
	wire [2:0] _AxiUserYanker_4_m_axi_ar_bits_prot;
	wire [3:0] _AxiUserYanker_4_m_axi_ar_bits_qos;
	wire [3:0] _AxiUserYanker_4_m_axi_ar_bits_region;
	wire _AxiUserYanker_4_m_axi_r_ready;
	wire _AxiUserYanker_4_m_axi_aw_valid;
	wire [63:0] _AxiUserYanker_4_m_axi_aw_bits_addr;
	wire [7:0] _AxiUserYanker_4_m_axi_aw_bits_len;
	wire [2:0] _AxiUserYanker_4_m_axi_aw_bits_size;
	wire [1:0] _AxiUserYanker_4_m_axi_aw_bits_burst;
	wire _AxiUserYanker_4_m_axi_aw_bits_lock;
	wire [3:0] _AxiUserYanker_4_m_axi_aw_bits_cache;
	wire [2:0] _AxiUserYanker_4_m_axi_aw_bits_prot;
	wire [3:0] _AxiUserYanker_4_m_axi_aw_bits_qos;
	wire [3:0] _AxiUserYanker_4_m_axi_aw_bits_region;
	wire _AxiUserYanker_4_m_axi_w_valid;
	wire [511:0] _AxiUserYanker_4_m_axi_w_bits_data;
	wire _AxiUserYanker_4_m_axi_w_bits_last;
	wire _protocolConverter_4_s_axi_ar_ready;
	wire _protocolConverter_4_s_axi_r_valid;
	wire _protocolConverter_4_s_axi_r_bits_id;
	wire [511:0] _protocolConverter_4_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_4_s_axi_r_bits_resp;
	wire _protocolConverter_4_s_axi_r_bits_last;
	wire _protocolConverter_4_s_axi_aw_ready;
	wire _protocolConverter_4_s_axi_w_ready;
	wire _protocolConverter_4_s_axi_b_valid;
	wire _protocolConverter_4_m_axi_ar_valid;
	wire [1:0] _protocolConverter_4_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_4_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_4_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_4_m_axi_ar_bits_size;
	wire [1:0] _protocolConverter_4_m_axi_ar_bits_burst;
	wire _protocolConverter_4_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_4_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_4_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_4_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_4_m_axi_ar_bits_region;
	wire _protocolConverter_4_m_axi_r_ready;
	wire _protocolConverter_4_m_axi_aw_valid;
	wire [1:0] _protocolConverter_4_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_4_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_4_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_4_m_axi_aw_bits_size;
	wire [1:0] _protocolConverter_4_m_axi_aw_bits_burst;
	wire _protocolConverter_4_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_4_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_4_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_4_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_4_m_axi_aw_bits_region;
	wire _protocolConverter_4_m_axi_w_valid;
	wire [255:0] _protocolConverter_4_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_4_m_axi_w_bits_strb;
	wire _protocolConverter_4_m_axi_b_ready;
	wire _axpbs_3_s_axi_ARREADY;
	wire _axpbs_3_s_axi_RVALID;
	wire [1:0] _axpbs_3_s_axi_RID;
	wire [255:0] _axpbs_3_s_axi_RDATA;
	wire [1:0] _axpbs_3_s_axi_RRESP;
	wire _axpbs_3_s_axi_RLAST;
	wire _axpbs_3_s_axi_AWREADY;
	wire _axpbs_3_s_axi_WREADY;
	wire _axpbs_3_s_axi_BVALID;
	wire [1:0] _axpbs_3_s_axi_BID;
	wire [1:0] _axpbs_3_s_axi_BRESP;
	wire _sinkBuffer_7_io_enq_ready;
	wire _sinkBuffer_7_io_deq_valid;
	wire [1:0] _sinkBuffer_7_io_deq_bits_id;
	wire _sourceBuffer_11_io_enq_ready;
	wire _sourceBuffer_11_io_deq_valid;
	wire [511:0] _sourceBuffer_11_io_deq_bits_data;
	wire [63:0] _sourceBuffer_11_io_deq_bits_strb;
	wire _sourceBuffer_11_io_deq_bits_last;
	wire _sourceBuffer_10_io_enq_ready;
	wire _sourceBuffer_10_io_deq_valid;
	wire [1:0] _sourceBuffer_10_io_deq_bits_id;
	wire [63:0] _sourceBuffer_10_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_10_io_deq_bits_len;
	wire [2:0] _sourceBuffer_10_io_deq_bits_size;
	wire [1:0] _sourceBuffer_10_io_deq_bits_burst;
	wire _sourceBuffer_10_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_10_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_10_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_10_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_10_io_deq_bits_region;
	wire _sinkBuffer_6_io_enq_ready;
	wire _sinkBuffer_6_io_deq_valid;
	wire [1:0] _sinkBuffer_6_io_deq_bits_id;
	wire [511:0] _sinkBuffer_6_io_deq_bits_data;
	wire [1:0] _sinkBuffer_6_io_deq_bits_resp;
	wire _sinkBuffer_6_io_deq_bits_last;
	wire _sourceBuffer_9_io_enq_ready;
	wire _sourceBuffer_9_io_deq_valid;
	wire [1:0] _sourceBuffer_9_io_deq_bits_id;
	wire [63:0] _sourceBuffer_9_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_9_io_deq_bits_len;
	wire [2:0] _sourceBuffer_9_io_deq_bits_size;
	wire [1:0] _sourceBuffer_9_io_deq_bits_burst;
	wire _sourceBuffer_9_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_9_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_9_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_9_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_9_io_deq_bits_region;
	wire _AxiUserYanker_3_s_axi_ar_ready;
	wire _AxiUserYanker_3_s_axi_r_valid;
	wire [1:0] _AxiUserYanker_3_s_axi_r_bits_id;
	wire [511:0] _AxiUserYanker_3_s_axi_r_bits_data;
	wire [1:0] _AxiUserYanker_3_s_axi_r_bits_resp;
	wire _AxiUserYanker_3_s_axi_r_bits_last;
	wire _AxiUserYanker_3_s_axi_aw_ready;
	wire _AxiUserYanker_3_s_axi_w_ready;
	wire _AxiUserYanker_3_s_axi_b_valid;
	wire [1:0] _AxiUserYanker_3_s_axi_b_bits_id;
	wire _AxiUserYanker_3_m_axi_ar_valid;
	wire [1:0] _AxiUserYanker_3_m_axi_ar_bits_id;
	wire [63:0] _AxiUserYanker_3_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_3_m_axi_ar_bits_len;
	wire [2:0] _AxiUserYanker_3_m_axi_ar_bits_size;
	wire [1:0] _AxiUserYanker_3_m_axi_ar_bits_burst;
	wire _AxiUserYanker_3_m_axi_ar_bits_lock;
	wire [3:0] _AxiUserYanker_3_m_axi_ar_bits_cache;
	wire [2:0] _AxiUserYanker_3_m_axi_ar_bits_prot;
	wire [3:0] _AxiUserYanker_3_m_axi_ar_bits_qos;
	wire [3:0] _AxiUserYanker_3_m_axi_ar_bits_region;
	wire _AxiUserYanker_3_m_axi_r_ready;
	wire _AxiUserYanker_3_m_axi_aw_valid;
	wire [1:0] _AxiUserYanker_3_m_axi_aw_bits_id;
	wire [63:0] _AxiUserYanker_3_m_axi_aw_bits_addr;
	wire [2:0] _AxiUserYanker_3_m_axi_aw_bits_size;
	wire [1:0] _AxiUserYanker_3_m_axi_aw_bits_burst;
	wire _AxiUserYanker_3_m_axi_w_valid;
	wire [511:0] _AxiUserYanker_3_m_axi_w_bits_data;
	wire [63:0] _AxiUserYanker_3_m_axi_w_bits_strb;
	wire _AxiUserYanker_3_m_axi_w_bits_last;
	wire _AxiUserYanker_3_m_axi_b_ready;
	wire _protocolConverter_3_s_axi_ar_ready;
	wire _protocolConverter_3_s_axi_r_valid;
	wire [1:0] _protocolConverter_3_s_axi_r_bits_id;
	wire [511:0] _protocolConverter_3_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_3_s_axi_r_bits_resp;
	wire _protocolConverter_3_s_axi_r_bits_last;
	wire _protocolConverter_3_s_axi_aw_ready;
	wire _protocolConverter_3_s_axi_w_ready;
	wire _protocolConverter_3_s_axi_b_valid;
	wire [1:0] _protocolConverter_3_s_axi_b_bits_id;
	wire [1:0] _protocolConverter_3_s_axi_b_bits_resp;
	wire _protocolConverter_3_m_axi_ar_valid;
	wire [1:0] _protocolConverter_3_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_3_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_3_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_3_m_axi_ar_bits_size;
	wire [1:0] _protocolConverter_3_m_axi_ar_bits_burst;
	wire _protocolConverter_3_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_3_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_3_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_3_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_3_m_axi_ar_bits_region;
	wire _protocolConverter_3_m_axi_r_ready;
	wire _protocolConverter_3_m_axi_aw_valid;
	wire [1:0] _protocolConverter_3_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_3_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_3_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_3_m_axi_aw_bits_size;
	wire [1:0] _protocolConverter_3_m_axi_aw_bits_burst;
	wire _protocolConverter_3_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_3_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_3_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_3_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_3_m_axi_aw_bits_region;
	wire _protocolConverter_3_m_axi_w_valid;
	wire [255:0] _protocolConverter_3_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_3_m_axi_w_bits_strb;
	wire _protocolConverter_3_m_axi_b_ready;
	wire _axpbs_2_s_axi_ARREADY;
	wire _axpbs_2_s_axi_RVALID;
	wire [1:0] _axpbs_2_s_axi_RID;
	wire [255:0] _axpbs_2_s_axi_RDATA;
	wire [1:0] _axpbs_2_s_axi_RRESP;
	wire _axpbs_2_s_axi_RLAST;
	wire _axpbs_2_s_axi_AWREADY;
	wire _axpbs_2_s_axi_WREADY;
	wire _axpbs_2_s_axi_BVALID;
	wire [1:0] _axpbs_2_s_axi_BID;
	wire [1:0] _axpbs_2_s_axi_BRESP;
	wire _sinkBuffer_5_io_enq_ready;
	wire _sinkBuffer_5_io_deq_valid;
	wire _sourceBuffer_8_io_enq_ready;
	wire _sourceBuffer_8_io_deq_valid;
	wire [511:0] _sourceBuffer_8_io_deq_bits_data;
	wire [63:0] _sourceBuffer_8_io_deq_bits_strb;
	wire _sourceBuffer_8_io_deq_bits_last;
	wire _sourceBuffer_7_io_enq_ready;
	wire _sourceBuffer_7_io_deq_valid;
	wire _sourceBuffer_7_io_deq_bits_id;
	wire [63:0] _sourceBuffer_7_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_7_io_deq_bits_len;
	wire [2:0] _sourceBuffer_7_io_deq_bits_size;
	wire [1:0] _sourceBuffer_7_io_deq_bits_burst;
	wire _sourceBuffer_7_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_7_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_7_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_7_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_7_io_deq_bits_region;
	wire _sinkBuffer_4_io_enq_ready;
	wire _sinkBuffer_4_io_deq_valid;
	wire [511:0] _sinkBuffer_4_io_deq_bits_data;
	wire _sourceBuffer_6_io_enq_ready;
	wire _sourceBuffer_6_io_deq_valid;
	wire _sourceBuffer_6_io_deq_bits_id;
	wire [63:0] _sourceBuffer_6_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_6_io_deq_bits_len;
	wire [2:0] _sourceBuffer_6_io_deq_bits_size;
	wire [1:0] _sourceBuffer_6_io_deq_bits_burst;
	wire _sourceBuffer_6_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_6_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_6_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_6_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_6_io_deq_bits_region;
	wire _AxiUserYanker_2_s_axi_ar_ready;
	wire _AxiUserYanker_2_s_axi_r_valid;
	wire [511:0] _AxiUserYanker_2_s_axi_r_bits_data;
	wire _AxiUserYanker_2_s_axi_aw_ready;
	wire _AxiUserYanker_2_s_axi_w_ready;
	wire _AxiUserYanker_2_s_axi_b_valid;
	wire _AxiUserYanker_2_m_axi_ar_valid;
	wire [63:0] _AxiUserYanker_2_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_2_m_axi_ar_bits_len;
	wire [2:0] _AxiUserYanker_2_m_axi_ar_bits_size;
	wire [1:0] _AxiUserYanker_2_m_axi_ar_bits_burst;
	wire _AxiUserYanker_2_m_axi_ar_bits_lock;
	wire [3:0] _AxiUserYanker_2_m_axi_ar_bits_cache;
	wire [2:0] _AxiUserYanker_2_m_axi_ar_bits_prot;
	wire [3:0] _AxiUserYanker_2_m_axi_ar_bits_qos;
	wire [3:0] _AxiUserYanker_2_m_axi_ar_bits_region;
	wire _AxiUserYanker_2_m_axi_r_ready;
	wire _AxiUserYanker_2_m_axi_aw_valid;
	wire [63:0] _AxiUserYanker_2_m_axi_aw_bits_addr;
	wire [7:0] _AxiUserYanker_2_m_axi_aw_bits_len;
	wire [2:0] _AxiUserYanker_2_m_axi_aw_bits_size;
	wire [1:0] _AxiUserYanker_2_m_axi_aw_bits_burst;
	wire _AxiUserYanker_2_m_axi_aw_bits_lock;
	wire [3:0] _AxiUserYanker_2_m_axi_aw_bits_cache;
	wire [2:0] _AxiUserYanker_2_m_axi_aw_bits_prot;
	wire [3:0] _AxiUserYanker_2_m_axi_aw_bits_qos;
	wire [3:0] _AxiUserYanker_2_m_axi_aw_bits_region;
	wire _AxiUserYanker_2_m_axi_w_valid;
	wire [511:0] _AxiUserYanker_2_m_axi_w_bits_data;
	wire _AxiUserYanker_2_m_axi_w_bits_last;
	wire _protocolConverter_2_s_axi_ar_ready;
	wire _protocolConverter_2_s_axi_r_valid;
	wire _protocolConverter_2_s_axi_r_bits_id;
	wire [511:0] _protocolConverter_2_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_2_s_axi_r_bits_resp;
	wire _protocolConverter_2_s_axi_r_bits_last;
	wire _protocolConverter_2_s_axi_aw_ready;
	wire _protocolConverter_2_s_axi_w_ready;
	wire _protocolConverter_2_s_axi_b_valid;
	wire _protocolConverter_2_m_axi_ar_valid;
	wire [1:0] _protocolConverter_2_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_2_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_2_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_2_m_axi_ar_bits_size;
	wire [1:0] _protocolConverter_2_m_axi_ar_bits_burst;
	wire _protocolConverter_2_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_2_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_2_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_2_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_2_m_axi_ar_bits_region;
	wire _protocolConverter_2_m_axi_r_ready;
	wire _protocolConverter_2_m_axi_aw_valid;
	wire [1:0] _protocolConverter_2_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_2_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_2_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_2_m_axi_aw_bits_size;
	wire [1:0] _protocolConverter_2_m_axi_aw_bits_burst;
	wire _protocolConverter_2_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_2_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_2_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_2_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_2_m_axi_aw_bits_region;
	wire _protocolConverter_2_m_axi_w_valid;
	wire [255:0] _protocolConverter_2_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_2_m_axi_w_bits_strb;
	wire _protocolConverter_2_m_axi_b_ready;
	wire _axpbs_1_s_axi_ARREADY;
	wire _axpbs_1_s_axi_RVALID;
	wire [255:0] _axpbs_1_s_axi_RDATA;
	wire [1:0] _axpbs_1_s_axi_RRESP;
	wire _axpbs_1_s_axi_RLAST;
	wire _axpbs_1_s_axi_AWREADY;
	wire _axpbs_1_s_axi_WREADY;
	wire _axpbs_1_s_axi_BVALID;
	wire [1:0] _axpbs_1_s_axi_BID;
	wire [1:0] _axpbs_1_s_axi_BRESP;
	wire _sinkBuffer_3_io_enq_ready;
	wire _sinkBuffer_3_io_deq_valid;
	wire _sourceBuffer_5_io_enq_ready;
	wire _sourceBuffer_5_io_deq_valid;
	wire [511:0] _sourceBuffer_5_io_deq_bits_data;
	wire [63:0] _sourceBuffer_5_io_deq_bits_strb;
	wire _sourceBuffer_5_io_deq_bits_last;
	wire _sourceBuffer_4_io_enq_ready;
	wire _sourceBuffer_4_io_deq_valid;
	wire [63:0] _sourceBuffer_4_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_4_io_deq_bits_len;
	wire [2:0] _sourceBuffer_4_io_deq_bits_size;
	wire [1:0] _sourceBuffer_4_io_deq_bits_burst;
	wire _sourceBuffer_4_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_4_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_4_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_4_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_4_io_deq_bits_region;
	wire _sinkBuffer_2_io_enq_ready;
	wire _sinkBuffer_2_io_deq_valid;
	wire [511:0] _sinkBuffer_2_io_deq_bits_data;
	wire _sinkBuffer_2_io_deq_bits_last;
	wire _sourceBuffer_3_io_enq_ready;
	wire _sourceBuffer_3_io_deq_valid;
	wire [63:0] _sourceBuffer_3_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_3_io_deq_bits_len;
	wire [2:0] _sourceBuffer_3_io_deq_bits_size;
	wire [1:0] _sourceBuffer_3_io_deq_bits_burst;
	wire _sourceBuffer_3_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_3_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_3_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_3_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_3_io_deq_bits_region;
	wire _AxiUserYanker_1_s_axi_ar_ready;
	wire _AxiUserYanker_1_s_axi_r_valid;
	wire [511:0] _AxiUserYanker_1_s_axi_r_bits_data;
	wire _AxiUserYanker_1_s_axi_r_bits_last;
	wire _AxiUserYanker_1_s_axi_aw_ready;
	wire _AxiUserYanker_1_s_axi_w_ready;
	wire _AxiUserYanker_1_s_axi_b_valid;
	wire _AxiUserYanker_1_m_axi_ar_valid;
	wire [63:0] _AxiUserYanker_1_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_1_m_axi_ar_bits_len;
	wire _AxiUserYanker_1_m_axi_r_ready;
	wire _AxiUserYanker_1_m_axi_aw_valid;
	wire [63:0] _AxiUserYanker_1_m_axi_aw_bits_addr;
	wire [7:0] _AxiUserYanker_1_m_axi_aw_bits_len;
	wire _AxiUserYanker_1_m_axi_w_valid;
	wire [511:0] _AxiUserYanker_1_m_axi_w_bits_data;
	wire _AxiUserYanker_1_m_axi_w_bits_last;
	wire _AxiUserYanker_1_m_axi_b_ready;
	wire _protocolConverter_1_s_axi_ar_ready;
	wire _protocolConverter_1_s_axi_r_valid;
	wire [511:0] _protocolConverter_1_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_1_s_axi_r_bits_resp;
	wire _protocolConverter_1_s_axi_r_bits_last;
	wire _protocolConverter_1_s_axi_aw_ready;
	wire _protocolConverter_1_s_axi_w_ready;
	wire _protocolConverter_1_s_axi_b_valid;
	wire [1:0] _protocolConverter_1_s_axi_b_bits_resp;
	wire _protocolConverter_1_m_axi_ar_valid;
	wire [1:0] _protocolConverter_1_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_1_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_1_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_1_m_axi_ar_bits_size;
	wire _protocolConverter_1_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_1_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_1_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_1_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_1_m_axi_ar_bits_region;
	wire _protocolConverter_1_m_axi_r_ready;
	wire _protocolConverter_1_m_axi_aw_valid;
	wire [1:0] _protocolConverter_1_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_1_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_1_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_1_m_axi_aw_bits_size;
	wire _protocolConverter_1_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_1_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_1_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_1_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_1_m_axi_aw_bits_region;
	wire _protocolConverter_1_m_axi_w_valid;
	wire [255:0] _protocolConverter_1_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_1_m_axi_w_bits_strb;
	wire _protocolConverter_1_m_axi_b_ready;
	wire _axpbs_s_axi_ARREADY;
	wire _axpbs_s_axi_RVALID;
	wire [1:0] _axpbs_s_axi_RID;
	wire [255:0] _axpbs_s_axi_RDATA;
	wire [1:0] _axpbs_s_axi_RRESP;
	wire _axpbs_s_axi_RLAST;
	wire _axpbs_s_axi_AWREADY;
	wire _axpbs_s_axi_WREADY;
	wire _axpbs_s_axi_BVALID;
	wire [1:0] _axpbs_s_axi_BID;
	wire [1:0] _axpbs_s_axi_BRESP;
	wire _sinkBuffer_1_io_enq_ready;
	wire _sinkBuffer_1_io_deq_valid;
	wire [2:0] _sinkBuffer_1_io_deq_bits_id;
	wire [1:0] _sinkBuffer_1_io_deq_bits_resp;
	wire _sourceBuffer_2_io_enq_ready;
	wire _sourceBuffer_2_io_deq_valid;
	wire [255:0] _sourceBuffer_2_io_deq_bits_data;
	wire [31:0] _sourceBuffer_2_io_deq_bits_strb;
	wire _sourceBuffer_2_io_deq_bits_last;
	wire _sourceBuffer_1_io_enq_ready;
	wire _sourceBuffer_1_io_deq_valid;
	wire [2:0] _sourceBuffer_1_io_deq_bits_id;
	wire [63:0] _sourceBuffer_1_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_1_io_deq_bits_len;
	wire [2:0] _sourceBuffer_1_io_deq_bits_size;
	wire [1:0] _sourceBuffer_1_io_deq_bits_burst;
	wire _sourceBuffer_1_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_1_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_1_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_1_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_1_io_deq_bits_region;
	wire _sinkBuffer_io_enq_ready;
	wire _sinkBuffer_io_deq_valid;
	wire [2:0] _sinkBuffer_io_deq_bits_id;
	wire [255:0] _sinkBuffer_io_deq_bits_data;
	wire [1:0] _sinkBuffer_io_deq_bits_resp;
	wire _sinkBuffer_io_deq_bits_last;
	wire _sourceBuffer_io_enq_ready;
	wire _sourceBuffer_io_deq_valid;
	wire [2:0] _sourceBuffer_io_deq_bits_id;
	wire [63:0] _sourceBuffer_io_deq_bits_addr;
	wire [7:0] _sourceBuffer_io_deq_bits_len;
	wire [2:0] _sourceBuffer_io_deq_bits_size;
	wire [1:0] _sourceBuffer_io_deq_bits_burst;
	wire _sourceBuffer_io_deq_bits_lock;
	wire [3:0] _sourceBuffer_io_deq_bits_cache;
	wire [2:0] _sourceBuffer_io_deq_bits_prot;
	wire [3:0] _sourceBuffer_io_deq_bits_qos;
	wire [3:0] _sourceBuffer_io_deq_bits_region;
	wire _AxiUserYanker_s_axi_ar_ready;
	wire _AxiUserYanker_s_axi_r_valid;
	wire [2:0] _AxiUserYanker_s_axi_r_bits_id;
	wire [255:0] _AxiUserYanker_s_axi_r_bits_data;
	wire [1:0] _AxiUserYanker_s_axi_r_bits_resp;
	wire _AxiUserYanker_s_axi_r_bits_last;
	wire _AxiUserYanker_s_axi_aw_ready;
	wire _AxiUserYanker_s_axi_w_ready;
	wire _AxiUserYanker_s_axi_b_valid;
	wire [2:0] _AxiUserYanker_s_axi_b_bits_id;
	wire [1:0] _AxiUserYanker_s_axi_b_bits_resp;
	wire _AxiUserYanker_m_axi_ar_valid;
	wire [2:0] _AxiUserYanker_m_axi_ar_bits_id;
	wire [63:0] _AxiUserYanker_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_m_axi_ar_bits_len;
	wire [2:0] _AxiUserYanker_m_axi_ar_bits_size;
	wire [1:0] _AxiUserYanker_m_axi_ar_bits_burst;
	wire _AxiUserYanker_m_axi_ar_bits_lock;
	wire [3:0] _AxiUserYanker_m_axi_ar_bits_cache;
	wire [2:0] _AxiUserYanker_m_axi_ar_bits_prot;
	wire [3:0] _AxiUserYanker_m_axi_ar_bits_qos;
	wire [3:0] _AxiUserYanker_m_axi_ar_bits_region;
	wire _AxiUserYanker_m_axi_r_ready;
	wire _AxiUserYanker_m_axi_aw_valid;
	wire [2:0] _AxiUserYanker_m_axi_aw_bits_id;
	wire [63:0] _AxiUserYanker_m_axi_aw_bits_addr;
	wire [7:0] _AxiUserYanker_m_axi_aw_bits_len;
	wire [2:0] _AxiUserYanker_m_axi_aw_bits_size;
	wire [1:0] _AxiUserYanker_m_axi_aw_bits_burst;
	wire _AxiUserYanker_m_axi_aw_bits_lock;
	wire [3:0] _AxiUserYanker_m_axi_aw_bits_cache;
	wire [2:0] _AxiUserYanker_m_axi_aw_bits_prot;
	wire [3:0] _AxiUserYanker_m_axi_aw_bits_qos;
	wire [3:0] _AxiUserYanker_m_axi_aw_bits_region;
	wire _AxiUserYanker_m_axi_w_valid;
	wire [255:0] _AxiUserYanker_m_axi_w_bits_data;
	wire [31:0] _AxiUserYanker_m_axi_w_bits_strb;
	wire _AxiUserYanker_m_axi_w_bits_last;
	wire _AxiUserYanker_m_axi_b_ready;
	wire _protocolConverter_s_axi_ar_ready;
	wire _protocolConverter_s_axi_r_valid;
	wire [2:0] _protocolConverter_s_axi_r_bits_id;
	wire [255:0] _protocolConverter_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_s_axi_r_bits_resp;
	wire _protocolConverter_s_axi_r_bits_last;
	wire _protocolConverter_s_axi_aw_ready;
	wire _protocolConverter_s_axi_w_ready;
	wire _protocolConverter_s_axi_b_valid;
	wire [2:0] _protocolConverter_s_axi_b_bits_id;
	wire [1:0] _protocolConverter_s_axi_b_bits_resp;
	wire _protocolConverter_m_axi_ar_valid;
	wire [1:0] _protocolConverter_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_m_axi_ar_bits_size;
	wire [1:0] _protocolConverter_m_axi_ar_bits_burst;
	wire _protocolConverter_m_axi_ar_bits_lock;
	wire [3:0] _protocolConverter_m_axi_ar_bits_cache;
	wire [2:0] _protocolConverter_m_axi_ar_bits_prot;
	wire [3:0] _protocolConverter_m_axi_ar_bits_qos;
	wire [3:0] _protocolConverter_m_axi_ar_bits_region;
	wire _protocolConverter_m_axi_r_ready;
	wire _protocolConverter_m_axi_aw_valid;
	wire [1:0] _protocolConverter_m_axi_aw_bits_id;
	wire [63:0] _protocolConverter_m_axi_aw_bits_addr;
	wire [7:0] _protocolConverter_m_axi_aw_bits_len;
	wire [2:0] _protocolConverter_m_axi_aw_bits_size;
	wire [1:0] _protocolConverter_m_axi_aw_bits_burst;
	wire _protocolConverter_m_axi_aw_bits_lock;
	wire [3:0] _protocolConverter_m_axi_aw_bits_cache;
	wire [2:0] _protocolConverter_m_axi_aw_bits_prot;
	wire [3:0] _protocolConverter_m_axi_aw_bits_qos;
	wire [3:0] _protocolConverter_m_axi_aw_bits_region;
	wire _protocolConverter_m_axi_w_valid;
	wire [255:0] _protocolConverter_m_axi_w_bits_data;
	wire [31:0] _protocolConverter_m_axi_w_bits_strb;
	wire _protocolConverter_m_axi_b_ready;
	wire _s_axil_mgmt_upscale_m_axi_ar_valid;
	wire [9:0] _s_axil_mgmt_upscale_m_axi_ar_bits_addr;
	wire [2:0] _s_axil_mgmt_upscale_m_axi_ar_bits_prot;
	wire _s_axil_mgmt_upscale_m_axi_r_ready;
	wire _s_axil_mgmt_upscale_m_axi_aw_valid;
	wire [9:0] _s_axil_mgmt_upscale_m_axi_aw_bits_addr;
	wire [2:0] _s_axil_mgmt_upscale_m_axi_aw_bits_prot;
	wire _s_axil_mgmt_upscale_m_axi_w_valid;
	wire [63:0] _s_axil_mgmt_upscale_m_axi_w_bits_data;
	wire [7:0] _s_axil_mgmt_upscale_m_axi_w_bits_strb;
	wire _s_axil_mgmt_upscale_m_axi_b_ready;
	wire _demux_s_axil_ar_ready;
	wire _demux_s_axil_r_valid;
	wire [63:0] _demux_s_axil_r_bits_data;
	wire [1:0] _demux_s_axil_r_bits_resp;
	wire _demux_s_axil_aw_ready;
	wire _demux_s_axil_w_ready;
	wire _demux_s_axil_b_valid;
	wire [1:0] _demux_s_axil_b_bits_resp;
	wire _demux_m_axil_0_ar_valid;
	wire [9:0] _demux_m_axil_0_ar_bits_addr;
	wire [2:0] _demux_m_axil_0_ar_bits_prot;
	wire _demux_m_axil_0_r_ready;
	wire _demux_m_axil_0_aw_valid;
	wire [9:0] _demux_m_axil_0_aw_bits_addr;
	wire [2:0] _demux_m_axil_0_aw_bits_prot;
	wire _demux_m_axil_0_w_valid;
	wire [63:0] _demux_m_axil_0_w_bits_data;
	wire [7:0] _demux_m_axil_0_w_bits_strb;
	wire _demux_m_axil_0_b_ready;
	wire _demux_m_axil_1_ar_valid;
	wire [9:0] _demux_m_axil_1_ar_bits_addr;
	wire [2:0] _demux_m_axil_1_ar_bits_prot;
	wire _demux_m_axil_1_r_ready;
	wire _demux_m_axil_1_aw_valid;
	wire [9:0] _demux_m_axil_1_aw_bits_addr;
	wire [2:0] _demux_m_axil_1_aw_bits_prot;
	wire _demux_m_axil_1_w_valid;
	wire [63:0] _demux_m_axil_1_w_bits_data;
	wire [7:0] _demux_m_axil_1_w_bits_strb;
	wire _demux_m_axil_1_b_ready;
	wire _demux_m_axil_2_ar_valid;
	wire [9:0] _demux_m_axil_2_ar_bits_addr;
	wire [2:0] _demux_m_axil_2_ar_bits_prot;
	wire _demux_m_axil_2_r_ready;
	wire _demux_m_axil_2_aw_valid;
	wire [9:0] _demux_m_axil_2_aw_bits_addr;
	wire [2:0] _demux_m_axil_2_aw_bits_prot;
	wire _demux_m_axil_2_w_valid;
	wire [63:0] _demux_m_axil_2_w_bits_data;
	wire [7:0] _demux_m_axil_2_w_bits_strb;
	wire _demux_m_axil_2_b_ready;
	wire _demux_m_axil_3_ar_valid;
	wire [9:0] _demux_m_axil_3_ar_bits_addr;
	wire [2:0] _demux_m_axil_3_ar_bits_prot;
	wire _demux_m_axil_3_r_ready;
	wire _demux_m_axil_3_aw_valid;
	wire [9:0] _demux_m_axil_3_aw_bits_addr;
	wire [2:0] _demux_m_axil_3_aw_bits_prot;
	wire _demux_m_axil_3_w_valid;
	wire [63:0] _demux_m_axil_3_w_bits_data;
	wire [7:0] _demux_m_axil_3_w_bits_strb;
	wire _demux_m_axil_3_b_ready;
	wire _notifierMap_0_2_io_export_argIn_0_TREADY;
	wire _notifierMap_0_2_io_export_argIn_1_TREADY;
	wire _notifierMap_0_2_connStealNtw_0_ctrl_stealReq_valid;
	wire _notifierMap_0_2_connStealNtw_0_data_qOutTask_valid;
	wire [511:0] _notifierMap_0_2_connStealNtw_0_data_qOutTask_bits;
	wire _notifierMap_0_2_axi_full_argRoute_0_ar_valid;
	wire [1:0] _notifierMap_0_2_axi_full_argRoute_0_ar_bits_id;
	wire [63:0] _notifierMap_0_2_axi_full_argRoute_0_ar_bits_addr;
	wire _notifierMap_0_2_axi_full_argRoute_0_r_ready;
	wire _notifierMap_0_2_axi_full_argRoute_0_aw_valid;
	wire [1:0] _notifierMap_0_2_axi_full_argRoute_0_aw_bits_id;
	wire [63:0] _notifierMap_0_2_axi_full_argRoute_0_aw_bits_addr;
	wire _notifierMap_0_2_axi_full_argRoute_0_w_valid;
	wire [511:0] _notifierMap_0_2_axi_full_argRoute_0_w_bits_data;
	wire _notifierMap_0_2_axi_full_argRoute_0_b_ready;
	wire _notifierMap_0_2_axi_full_argRoute_1_ar_valid;
	wire [1:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_id;
	wire [63:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_addr;
	wire [7:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_len;
	wire [2:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_size;
	wire [1:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_burst;
	wire _notifierMap_0_2_axi_full_argRoute_1_ar_bits_lock;
	wire [3:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_cache;
	wire [2:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_prot;
	wire [3:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_qos;
	wire [3:0] _notifierMap_0_2_axi_full_argRoute_1_ar_bits_region;
	wire _notifierMap_0_2_axi_full_argRoute_1_r_ready;
	wire _schedulerMap_1_2_spawnerServerMgmt_0_ar_ready;
	wire _schedulerMap_1_2_spawnerServerMgmt_0_r_valid;
	wire [63:0] _schedulerMap_1_2_spawnerServerMgmt_0_r_bits_data;
	wire [1:0] _schedulerMap_1_2_spawnerServerMgmt_0_r_bits_resp;
	wire _schedulerMap_1_2_spawnerServerMgmt_0_aw_ready;
	wire _schedulerMap_1_2_spawnerServerMgmt_0_w_ready;
	wire _schedulerMap_1_2_spawnerServerMgmt_0_b_valid;
	wire [1:0] _schedulerMap_1_2_spawnerServerMgmt_0_b_bits_resp;
	wire _schedulerMap_1_2_spawnerServerAXI_0_ar_valid;
	wire [63:0] _schedulerMap_1_2_spawnerServerAXI_0_ar_bits_addr;
	wire [7:0] _schedulerMap_1_2_spawnerServerAXI_0_ar_bits_len;
	wire _schedulerMap_1_2_spawnerServerAXI_0_r_ready;
	wire _schedulerMap_1_2_spawnerServerAXI_0_aw_valid;
	wire [63:0] _schedulerMap_1_2_spawnerServerAXI_0_aw_bits_addr;
	wire [7:0] _schedulerMap_1_2_spawnerServerAXI_0_aw_bits_len;
	wire _schedulerMap_1_2_spawnerServerAXI_0_w_valid;
	wire [511:0] _schedulerMap_1_2_spawnerServerAXI_0_w_bits_data;
	wire _schedulerMap_1_2_spawnerServerAXI_0_w_bits_last;
	wire _schedulerMap_1_2_spawnerServerAXI_0_b_ready;
	wire _schedulerMap_1_2_io_export_taskOut_0_TVALID;
	wire [511:0] _schedulerMap_1_2_io_export_taskOut_0_TDATA;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_valid;
	wire [63:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_addr;
	wire [7:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_len;
	wire [2:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_size;
	wire [1:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_burst;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_lock;
	wire [3:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_cache;
	wire [2:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_prot;
	wire [3:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_qos;
	wire [3:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_region;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_r_ready;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_valid;
	wire [63:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_addr;
	wire [7:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_len;
	wire [2:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_size;
	wire [1:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_burst;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_lock;
	wire [3:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_cache;
	wire [2:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_prot;
	wire [3:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_qos;
	wire [3:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_region;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_w_valid;
	wire [511:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_data;
	wire _schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_last;
	wire _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_ar_ready;
	wire _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_valid;
	wire [63:0] _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_data;
	wire [1:0] _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_resp;
	wire _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_aw_ready;
	wire _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_w_ready;
	wire _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_valid;
	wire [1:0] _schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_bits_resp;
	wire _schedulerMap_1_2_io_paused;
	wire _schedulerMap_1_2_connArgumentNotifier_0_ctrl_stealReq_ready;
	wire _schedulerMap_1_2_connArgumentNotifier_0_data_qOutTask_ready;
	wire _schedulerMap_0_2_spawnerServerMgmt_0_ar_ready;
	wire _schedulerMap_0_2_spawnerServerMgmt_0_r_valid;
	wire [63:0] _schedulerMap_0_2_spawnerServerMgmt_0_r_bits_data;
	wire [1:0] _schedulerMap_0_2_spawnerServerMgmt_0_r_bits_resp;
	wire _schedulerMap_0_2_spawnerServerMgmt_0_aw_ready;
	wire _schedulerMap_0_2_spawnerServerMgmt_0_w_ready;
	wire _schedulerMap_0_2_spawnerServerMgmt_0_b_valid;
	wire [1:0] _schedulerMap_0_2_spawnerServerMgmt_0_b_bits_resp;
	wire _schedulerMap_0_2_spawnerServerAXI_0_ar_valid;
	wire [63:0] _schedulerMap_0_2_spawnerServerAXI_0_ar_bits_addr;
	wire [7:0] _schedulerMap_0_2_spawnerServerAXI_0_ar_bits_len;
	wire _schedulerMap_0_2_spawnerServerAXI_0_r_ready;
	wire _schedulerMap_0_2_spawnerServerAXI_0_aw_valid;
	wire [63:0] _schedulerMap_0_2_spawnerServerAXI_0_aw_bits_addr;
	wire [7:0] _schedulerMap_0_2_spawnerServerAXI_0_aw_bits_len;
	wire _schedulerMap_0_2_spawnerServerAXI_0_w_valid;
	wire [511:0] _schedulerMap_0_2_spawnerServerAXI_0_w_bits_data;
	wire _schedulerMap_0_2_spawnerServerAXI_0_w_bits_last;
	wire _schedulerMap_0_2_spawnerServerAXI_0_b_ready;
	wire _schedulerMap_0_2_io_export_taskOut_0_TVALID;
	wire [511:0] _schedulerMap_0_2_io_export_taskOut_0_TDATA;
	wire _schedulerMap_0_2_io_export_taskInGlobal_0_TREADY;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_valid;
	wire [63:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_addr;
	wire [7:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_len;
	wire [2:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_size;
	wire [1:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_burst;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_lock;
	wire [3:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_cache;
	wire [2:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_prot;
	wire [3:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_qos;
	wire [3:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_region;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_r_ready;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_valid;
	wire [63:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_addr;
	wire [7:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_len;
	wire [2:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_size;
	wire [1:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_burst;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_lock;
	wire [3:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_cache;
	wire [2:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_prot;
	wire [3:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_qos;
	wire [3:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_region;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_w_valid;
	wire [511:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_data;
	wire _schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_last;
	wire _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_ar_ready;
	wire _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_valid;
	wire [63:0] _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_bits_data;
	wire [1:0] _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_bits_resp;
	wire _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_aw_ready;
	wire _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_w_ready;
	wire _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_b_valid;
	wire [1:0] _schedulerMap_0_2_io_internal_axi_mgmt_vss_0_b_bits_resp;
	wire _schedulerMap_0_2_io_paused;
	wire _peMap_1_2_0_io_argOut_TVALID;
	wire [63:0] _peMap_1_2_0_io_argOut_TDATA;
	wire _peMap_1_2_0_io_taskIn_TREADY;
	wire _peMap_1_2_0_io_taskOutGlobal_TVALID;
	wire [511:0] _peMap_1_2_0_io_taskOutGlobal_TDATA;
	wire _peMap_0_2_0_io_argOut_TVALID;
	wire [63:0] _peMap_0_2_0_io_argOut_TDATA;
	wire _peMap_0_2_0_io_taskIn_TREADY;
	wire _peMap_0_2_0_io_m_axi_gmem_ARVALID;
	wire [2:0] _peMap_0_2_0_io_m_axi_gmem_ARID;
	wire [63:0] _peMap_0_2_0_io_m_axi_gmem_ARADDR;
	wire [7:0] _peMap_0_2_0_io_m_axi_gmem_ARLEN;
	wire [2:0] _peMap_0_2_0_io_m_axi_gmem_ARSIZE;
	wire [1:0] _peMap_0_2_0_io_m_axi_gmem_ARBURST;
	wire _peMap_0_2_0_io_m_axi_gmem_ARLOCK;
	wire [3:0] _peMap_0_2_0_io_m_axi_gmem_ARCACHE;
	wire [2:0] _peMap_0_2_0_io_m_axi_gmem_ARPROT;
	wire [3:0] _peMap_0_2_0_io_m_axi_gmem_ARQOS;
	wire [3:0] _peMap_0_2_0_io_m_axi_gmem_ARREGION;
	wire _peMap_0_2_0_io_m_axi_gmem_ARUSER;
	wire _peMap_0_2_0_io_m_axi_gmem_RREADY;
	wire _peMap_0_2_0_io_m_axi_gmem_AWVALID;
	wire [2:0] _peMap_0_2_0_io_m_axi_gmem_AWID;
	wire [63:0] _peMap_0_2_0_io_m_axi_gmem_AWADDR;
	wire [7:0] _peMap_0_2_0_io_m_axi_gmem_AWLEN;
	wire [2:0] _peMap_0_2_0_io_m_axi_gmem_AWSIZE;
	wire [1:0] _peMap_0_2_0_io_m_axi_gmem_AWBURST;
	wire _peMap_0_2_0_io_m_axi_gmem_AWLOCK;
	wire [3:0] _peMap_0_2_0_io_m_axi_gmem_AWCACHE;
	wire [2:0] _peMap_0_2_0_io_m_axi_gmem_AWPROT;
	wire [3:0] _peMap_0_2_0_io_m_axi_gmem_AWQOS;
	wire [3:0] _peMap_0_2_0_io_m_axi_gmem_AWREGION;
	wire _peMap_0_2_0_io_m_axi_gmem_AWUSER;
	wire _peMap_0_2_0_io_m_axi_gmem_WVALID;
	wire [255:0] _peMap_0_2_0_io_m_axi_gmem_WDATA;
	wire [31:0] _peMap_0_2_0_io_m_axi_gmem_WSTRB;
	wire _peMap_0_2_0_io_m_axi_gmem_WLAST;
	wire _peMap_0_2_0_io_m_axi_gmem_WUSER;
	wire _peMap_0_2_0_io_m_axi_gmem_BREADY;
	vertex_map_1 peMap_0_2_0(
		.io_ap_rst_n(~reset),
		.io_ap_clk(clock),
		.io_argOut_TREADY(_notifierMap_0_2_io_export_argIn_0_TREADY),
		.io_argOut_TVALID(_peMap_0_2_0_io_argOut_TVALID),
		.io_argOut_TDATA(_peMap_0_2_0_io_argOut_TDATA),
		.io_taskIn_TREADY(_peMap_0_2_0_io_taskIn_TREADY),
		.io_taskIn_TVALID(_schedulerMap_0_2_io_export_taskOut_0_TVALID),
		.io_taskIn_TDATA(_schedulerMap_0_2_io_export_taskOut_0_TDATA),
		.io_s_axi_control_ARREADY(vertex_map_0_s_axi_control_ARREADY),
		.io_s_axi_control_ARVALID(vertex_map_0_s_axi_control_ARVALID),
		.io_s_axi_control_ARADDR(vertex_map_0_s_axi_control_ARADDR),
		.io_s_axi_control_RREADY(vertex_map_0_s_axi_control_RREADY),
		.io_s_axi_control_RVALID(vertex_map_0_s_axi_control_RVALID),
		.io_s_axi_control_RDATA(vertex_map_0_s_axi_control_RDATA),
		.io_s_axi_control_RRESP(vertex_map_0_s_axi_control_RRESP),
		.io_s_axi_control_AWREADY(vertex_map_0_s_axi_control_AWREADY),
		.io_s_axi_control_AWVALID(vertex_map_0_s_axi_control_AWVALID),
		.io_s_axi_control_AWADDR(vertex_map_0_s_axi_control_AWADDR),
		.io_s_axi_control_WREADY(vertex_map_0_s_axi_control_WREADY),
		.io_s_axi_control_WVALID(vertex_map_0_s_axi_control_WVALID),
		.io_s_axi_control_WDATA(vertex_map_0_s_axi_control_WDATA),
		.io_s_axi_control_WSTRB(vertex_map_0_s_axi_control_WSTRB),
		.io_s_axi_control_BREADY(vertex_map_0_s_axi_control_BREADY),
		.io_s_axi_control_BVALID(vertex_map_0_s_axi_control_BVALID),
		.io_s_axi_control_BRESP(vertex_map_0_s_axi_control_BRESP),
		.io_m_axi_gmem_ARREADY(_AxiUserYanker_s_axi_ar_ready),
		.io_m_axi_gmem_ARVALID(_peMap_0_2_0_io_m_axi_gmem_ARVALID),
		.io_m_axi_gmem_ARID(_peMap_0_2_0_io_m_axi_gmem_ARID),
		.io_m_axi_gmem_ARADDR(_peMap_0_2_0_io_m_axi_gmem_ARADDR),
		.io_m_axi_gmem_ARLEN(_peMap_0_2_0_io_m_axi_gmem_ARLEN),
		.io_m_axi_gmem_ARSIZE(_peMap_0_2_0_io_m_axi_gmem_ARSIZE),
		.io_m_axi_gmem_ARBURST(_peMap_0_2_0_io_m_axi_gmem_ARBURST),
		.io_m_axi_gmem_ARLOCK(_peMap_0_2_0_io_m_axi_gmem_ARLOCK),
		.io_m_axi_gmem_ARCACHE(_peMap_0_2_0_io_m_axi_gmem_ARCACHE),
		.io_m_axi_gmem_ARPROT(_peMap_0_2_0_io_m_axi_gmem_ARPROT),
		.io_m_axi_gmem_ARQOS(_peMap_0_2_0_io_m_axi_gmem_ARQOS),
		.io_m_axi_gmem_ARREGION(_peMap_0_2_0_io_m_axi_gmem_ARREGION),
		.io_m_axi_gmem_ARUSER(_peMap_0_2_0_io_m_axi_gmem_ARUSER),
		.io_m_axi_gmem_RREADY(_peMap_0_2_0_io_m_axi_gmem_RREADY),
		.io_m_axi_gmem_RVALID(_AxiUserYanker_s_axi_r_valid),
		.io_m_axi_gmem_RID(_AxiUserYanker_s_axi_r_bits_id),
		.io_m_axi_gmem_RDATA(_AxiUserYanker_s_axi_r_bits_data),
		.io_m_axi_gmem_RRESP(_AxiUserYanker_s_axi_r_bits_resp),
		.io_m_axi_gmem_RLAST(_AxiUserYanker_s_axi_r_bits_last),
		.io_m_axi_gmem_AWREADY(_AxiUserYanker_s_axi_aw_ready),
		.io_m_axi_gmem_AWVALID(_peMap_0_2_0_io_m_axi_gmem_AWVALID),
		.io_m_axi_gmem_AWID(_peMap_0_2_0_io_m_axi_gmem_AWID),
		.io_m_axi_gmem_AWADDR(_peMap_0_2_0_io_m_axi_gmem_AWADDR),
		.io_m_axi_gmem_AWLEN(_peMap_0_2_0_io_m_axi_gmem_AWLEN),
		.io_m_axi_gmem_AWSIZE(_peMap_0_2_0_io_m_axi_gmem_AWSIZE),
		.io_m_axi_gmem_AWBURST(_peMap_0_2_0_io_m_axi_gmem_AWBURST),
		.io_m_axi_gmem_AWLOCK(_peMap_0_2_0_io_m_axi_gmem_AWLOCK),
		.io_m_axi_gmem_AWCACHE(_peMap_0_2_0_io_m_axi_gmem_AWCACHE),
		.io_m_axi_gmem_AWPROT(_peMap_0_2_0_io_m_axi_gmem_AWPROT),
		.io_m_axi_gmem_AWQOS(_peMap_0_2_0_io_m_axi_gmem_AWQOS),
		.io_m_axi_gmem_AWREGION(_peMap_0_2_0_io_m_axi_gmem_AWREGION),
		.io_m_axi_gmem_AWUSER(_peMap_0_2_0_io_m_axi_gmem_AWUSER),
		.io_m_axi_gmem_WREADY(_AxiUserYanker_s_axi_w_ready),
		.io_m_axi_gmem_WVALID(_peMap_0_2_0_io_m_axi_gmem_WVALID),
		.io_m_axi_gmem_WDATA(_peMap_0_2_0_io_m_axi_gmem_WDATA),
		.io_m_axi_gmem_WSTRB(_peMap_0_2_0_io_m_axi_gmem_WSTRB),
		.io_m_axi_gmem_WLAST(_peMap_0_2_0_io_m_axi_gmem_WLAST),
		.io_m_axi_gmem_WUSER(_peMap_0_2_0_io_m_axi_gmem_WUSER),
		.io_m_axi_gmem_BREADY(_peMap_0_2_0_io_m_axi_gmem_BREADY),
		.io_m_axi_gmem_BVALID(_AxiUserYanker_s_axi_b_valid),
		.io_m_axi_gmem_BID(_AxiUserYanker_s_axi_b_bits_id),
		.io_m_axi_gmem_BRESP(_AxiUserYanker_s_axi_b_bits_resp)
	);
	pageRankReduce_1 peMap_1_2_0(
		.io_ap_rst_n(~reset),
		.io_ap_clk(clock),
		.io_argOut_TREADY(_notifierMap_0_2_io_export_argIn_1_TREADY),
		.io_argOut_TVALID(_peMap_1_2_0_io_argOut_TVALID),
		.io_argOut_TDATA(_peMap_1_2_0_io_argOut_TDATA),
		.io_taskIn_TREADY(_peMap_1_2_0_io_taskIn_TREADY),
		.io_taskIn_TVALID(_schedulerMap_1_2_io_export_taskOut_0_TVALID),
		.io_taskIn_TDATA(_schedulerMap_1_2_io_export_taskOut_0_TDATA),
		.io_taskOutGlobal_TREADY(_schedulerMap_0_2_io_export_taskInGlobal_0_TREADY),
		.io_taskOutGlobal_TVALID(_peMap_1_2_0_io_taskOutGlobal_TVALID),
		.io_taskOutGlobal_TDATA(_peMap_1_2_0_io_taskOutGlobal_TDATA)
	);
	Scheduler schedulerMap_0_2(
		.clock(clock),
		.reset(reset),
		.spawnerServerMgmt_0_ar_ready(_schedulerMap_0_2_spawnerServerMgmt_0_ar_ready),
		.spawnerServerMgmt_0_ar_valid(_demux_m_axil_1_ar_valid),
		.spawnerServerMgmt_0_ar_bits_addr(_demux_m_axil_1_ar_bits_addr[5:0]),
		.spawnerServerMgmt_0_ar_bits_prot(_demux_m_axil_1_ar_bits_prot),
		.spawnerServerMgmt_0_r_ready(_demux_m_axil_1_r_ready),
		.spawnerServerMgmt_0_r_valid(_schedulerMap_0_2_spawnerServerMgmt_0_r_valid),
		.spawnerServerMgmt_0_r_bits_data(_schedulerMap_0_2_spawnerServerMgmt_0_r_bits_data),
		.spawnerServerMgmt_0_r_bits_resp(_schedulerMap_0_2_spawnerServerMgmt_0_r_bits_resp),
		.spawnerServerMgmt_0_aw_ready(_schedulerMap_0_2_spawnerServerMgmt_0_aw_ready),
		.spawnerServerMgmt_0_aw_valid(_demux_m_axil_1_aw_valid),
		.spawnerServerMgmt_0_aw_bits_addr(_demux_m_axil_1_aw_bits_addr[5:0]),
		.spawnerServerMgmt_0_aw_bits_prot(_demux_m_axil_1_aw_bits_prot),
		.spawnerServerMgmt_0_w_ready(_schedulerMap_0_2_spawnerServerMgmt_0_w_ready),
		.spawnerServerMgmt_0_w_valid(_demux_m_axil_1_w_valid),
		.spawnerServerMgmt_0_w_bits_data(_demux_m_axil_1_w_bits_data),
		.spawnerServerMgmt_0_w_bits_strb(_demux_m_axil_1_w_bits_strb),
		.spawnerServerMgmt_0_b_ready(_demux_m_axil_1_b_ready),
		.spawnerServerMgmt_0_b_valid(_schedulerMap_0_2_spawnerServerMgmt_0_b_valid),
		.spawnerServerMgmt_0_b_bits_resp(_schedulerMap_0_2_spawnerServerMgmt_0_b_bits_resp),
		.spawnerServerAXI_0_ar_ready(_AxiUserYanker_6_s_axi_ar_ready),
		.spawnerServerAXI_0_ar_valid(_schedulerMap_0_2_spawnerServerAXI_0_ar_valid),
		.spawnerServerAXI_0_ar_bits_addr(_schedulerMap_0_2_spawnerServerAXI_0_ar_bits_addr),
		.spawnerServerAXI_0_ar_bits_len(_schedulerMap_0_2_spawnerServerAXI_0_ar_bits_len),
		.spawnerServerAXI_0_r_ready(_schedulerMap_0_2_spawnerServerAXI_0_r_ready),
		.spawnerServerAXI_0_r_valid(_AxiUserYanker_6_s_axi_r_valid),
		.spawnerServerAXI_0_r_bits_data(_AxiUserYanker_6_s_axi_r_bits_data),
		.spawnerServerAXI_0_r_bits_last(_AxiUserYanker_6_s_axi_r_bits_last),
		.spawnerServerAXI_0_aw_ready(_AxiUserYanker_6_s_axi_aw_ready),
		.spawnerServerAXI_0_aw_valid(_schedulerMap_0_2_spawnerServerAXI_0_aw_valid),
		.spawnerServerAXI_0_aw_bits_addr(_schedulerMap_0_2_spawnerServerAXI_0_aw_bits_addr),
		.spawnerServerAXI_0_aw_bits_len(_schedulerMap_0_2_spawnerServerAXI_0_aw_bits_len),
		.spawnerServerAXI_0_w_ready(_AxiUserYanker_6_s_axi_w_ready),
		.spawnerServerAXI_0_w_valid(_schedulerMap_0_2_spawnerServerAXI_0_w_valid),
		.spawnerServerAXI_0_w_bits_data(_schedulerMap_0_2_spawnerServerAXI_0_w_bits_data),
		.spawnerServerAXI_0_w_bits_last(_schedulerMap_0_2_spawnerServerAXI_0_w_bits_last),
		.spawnerServerAXI_0_b_ready(_schedulerMap_0_2_spawnerServerAXI_0_b_ready),
		.spawnerServerAXI_0_b_valid(_AxiUserYanker_6_s_axi_b_valid),
		.io_export_taskOut_0_TREADY(_peMap_0_2_0_io_taskIn_TREADY),
		.io_export_taskOut_0_TVALID(_schedulerMap_0_2_io_export_taskOut_0_TVALID),
		.io_export_taskOut_0_TDATA(_schedulerMap_0_2_io_export_taskOut_0_TDATA),
		.io_export_taskInGlobal_0_TREADY(_schedulerMap_0_2_io_export_taskInGlobal_0_TREADY),
		.io_export_taskInGlobal_0_TVALID(_peMap_1_2_0_io_taskOutGlobal_TVALID),
		.io_export_taskInGlobal_0_TDATA(_peMap_1_2_0_io_taskOutGlobal_TDATA),
		.io_internal_vss_axi_full_0_ar_ready(_AxiUserYanker_2_s_axi_ar_ready),
		.io_internal_vss_axi_full_0_ar_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_valid),
		.io_internal_vss_axi_full_0_ar_bits_addr(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_addr),
		.io_internal_vss_axi_full_0_ar_bits_len(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_len),
		.io_internal_vss_axi_full_0_ar_bits_size(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_size),
		.io_internal_vss_axi_full_0_ar_bits_burst(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_burst),
		.io_internal_vss_axi_full_0_ar_bits_lock(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_lock),
		.io_internal_vss_axi_full_0_ar_bits_cache(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_cache),
		.io_internal_vss_axi_full_0_ar_bits_prot(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_prot),
		.io_internal_vss_axi_full_0_ar_bits_qos(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_qos),
		.io_internal_vss_axi_full_0_ar_bits_region(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_region),
		.io_internal_vss_axi_full_0_r_ready(_schedulerMap_0_2_io_internal_vss_axi_full_0_r_ready),
		.io_internal_vss_axi_full_0_r_valid(_AxiUserYanker_2_s_axi_r_valid),
		.io_internal_vss_axi_full_0_r_bits_data(_AxiUserYanker_2_s_axi_r_bits_data),
		.io_internal_vss_axi_full_0_aw_ready(_AxiUserYanker_2_s_axi_aw_ready),
		.io_internal_vss_axi_full_0_aw_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_valid),
		.io_internal_vss_axi_full_0_aw_bits_addr(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_addr),
		.io_internal_vss_axi_full_0_aw_bits_len(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_len),
		.io_internal_vss_axi_full_0_aw_bits_size(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_size),
		.io_internal_vss_axi_full_0_aw_bits_burst(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_burst),
		.io_internal_vss_axi_full_0_aw_bits_lock(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_lock),
		.io_internal_vss_axi_full_0_aw_bits_cache(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_cache),
		.io_internal_vss_axi_full_0_aw_bits_prot(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_prot),
		.io_internal_vss_axi_full_0_aw_bits_qos(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_qos),
		.io_internal_vss_axi_full_0_aw_bits_region(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_region),
		.io_internal_vss_axi_full_0_w_ready(_AxiUserYanker_2_s_axi_w_ready),
		.io_internal_vss_axi_full_0_w_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_valid),
		.io_internal_vss_axi_full_0_w_bits_data(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_data),
		.io_internal_vss_axi_full_0_w_bits_last(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_last),
		.io_internal_vss_axi_full_0_b_valid(_AxiUserYanker_2_s_axi_b_valid),
		.io_internal_axi_mgmt_vss_0_ar_ready(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_ar_ready),
		.io_internal_axi_mgmt_vss_0_ar_valid(_demux_m_axil_0_ar_valid),
		.io_internal_axi_mgmt_vss_0_ar_bits_addr(_demux_m_axil_0_ar_bits_addr[5:0]),
		.io_internal_axi_mgmt_vss_0_ar_bits_prot(_demux_m_axil_0_ar_bits_prot),
		.io_internal_axi_mgmt_vss_0_r_ready(_demux_m_axil_0_r_ready),
		.io_internal_axi_mgmt_vss_0_r_valid(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_valid),
		.io_internal_axi_mgmt_vss_0_r_bits_data(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_bits_data),
		.io_internal_axi_mgmt_vss_0_r_bits_resp(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_bits_resp),
		.io_internal_axi_mgmt_vss_0_aw_ready(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_aw_ready),
		.io_internal_axi_mgmt_vss_0_aw_valid(_demux_m_axil_0_aw_valid),
		.io_internal_axi_mgmt_vss_0_aw_bits_addr(_demux_m_axil_0_aw_bits_addr[5:0]),
		.io_internal_axi_mgmt_vss_0_aw_bits_prot(_demux_m_axil_0_aw_bits_prot),
		.io_internal_axi_mgmt_vss_0_w_ready(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_w_ready),
		.io_internal_axi_mgmt_vss_0_w_valid(_demux_m_axil_0_w_valid),
		.io_internal_axi_mgmt_vss_0_w_bits_data(_demux_m_axil_0_w_bits_data),
		.io_internal_axi_mgmt_vss_0_w_bits_strb(_demux_m_axil_0_w_bits_strb),
		.io_internal_axi_mgmt_vss_0_b_ready(_demux_m_axil_0_b_ready),
		.io_internal_axi_mgmt_vss_0_b_valid(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_b_valid),
		.io_internal_axi_mgmt_vss_0_b_bits_resp(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_b_bits_resp),
		.io_paused(_schedulerMap_0_2_io_paused)
	);
	Scheduler_1 schedulerMap_1_2(
		.clock(clock),
		.reset(reset),
		.spawnerServerMgmt_0_ar_ready(_schedulerMap_1_2_spawnerServerMgmt_0_ar_ready),
		.spawnerServerMgmt_0_ar_valid(_demux_m_axil_3_ar_valid),
		.spawnerServerMgmt_0_ar_bits_addr(_demux_m_axil_3_ar_bits_addr[5:0]),
		.spawnerServerMgmt_0_ar_bits_prot(_demux_m_axil_3_ar_bits_prot),
		.spawnerServerMgmt_0_r_ready(_demux_m_axil_3_r_ready),
		.spawnerServerMgmt_0_r_valid(_schedulerMap_1_2_spawnerServerMgmt_0_r_valid),
		.spawnerServerMgmt_0_r_bits_data(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_data),
		.spawnerServerMgmt_0_r_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_resp),
		.spawnerServerMgmt_0_aw_ready(_schedulerMap_1_2_spawnerServerMgmt_0_aw_ready),
		.spawnerServerMgmt_0_aw_valid(_demux_m_axil_3_aw_valid),
		.spawnerServerMgmt_0_aw_bits_addr(_demux_m_axil_3_aw_bits_addr[5:0]),
		.spawnerServerMgmt_0_aw_bits_prot(_demux_m_axil_3_aw_bits_prot),
		.spawnerServerMgmt_0_w_ready(_schedulerMap_1_2_spawnerServerMgmt_0_w_ready),
		.spawnerServerMgmt_0_w_valid(_demux_m_axil_3_w_valid),
		.spawnerServerMgmt_0_w_bits_data(_demux_m_axil_3_w_bits_data),
		.spawnerServerMgmt_0_w_bits_strb(_demux_m_axil_3_w_bits_strb),
		.spawnerServerMgmt_0_b_ready(_demux_m_axil_3_b_ready),
		.spawnerServerMgmt_0_b_valid(_schedulerMap_1_2_spawnerServerMgmt_0_b_valid),
		.spawnerServerMgmt_0_b_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_b_bits_resp),
		.spawnerServerAXI_0_ar_ready(_AxiUserYanker_1_s_axi_ar_ready),
		.spawnerServerAXI_0_ar_valid(_schedulerMap_1_2_spawnerServerAXI_0_ar_valid),
		.spawnerServerAXI_0_ar_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_addr),
		.spawnerServerAXI_0_ar_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_len),
		.spawnerServerAXI_0_r_ready(_schedulerMap_1_2_spawnerServerAXI_0_r_ready),
		.spawnerServerAXI_0_r_valid(_AxiUserYanker_1_s_axi_r_valid),
		.spawnerServerAXI_0_r_bits_data(_AxiUserYanker_1_s_axi_r_bits_data),
		.spawnerServerAXI_0_r_bits_last(_AxiUserYanker_1_s_axi_r_bits_last),
		.spawnerServerAXI_0_aw_ready(_AxiUserYanker_1_s_axi_aw_ready),
		.spawnerServerAXI_0_aw_valid(_schedulerMap_1_2_spawnerServerAXI_0_aw_valid),
		.spawnerServerAXI_0_aw_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_addr),
		.spawnerServerAXI_0_aw_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_len),
		.spawnerServerAXI_0_w_ready(_AxiUserYanker_1_s_axi_w_ready),
		.spawnerServerAXI_0_w_valid(_schedulerMap_1_2_spawnerServerAXI_0_w_valid),
		.spawnerServerAXI_0_w_bits_data(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_data),
		.spawnerServerAXI_0_w_bits_last(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_last),
		.spawnerServerAXI_0_b_ready(_schedulerMap_1_2_spawnerServerAXI_0_b_ready),
		.spawnerServerAXI_0_b_valid(_AxiUserYanker_1_s_axi_b_valid),
		.io_export_taskOut_0_TREADY(_peMap_1_2_0_io_taskIn_TREADY),
		.io_export_taskOut_0_TVALID(_schedulerMap_1_2_io_export_taskOut_0_TVALID),
		.io_export_taskOut_0_TDATA(_schedulerMap_1_2_io_export_taskOut_0_TDATA),
		.io_internal_vss_axi_full_0_ar_ready(_AxiUserYanker_4_s_axi_ar_ready),
		.io_internal_vss_axi_full_0_ar_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_valid),
		.io_internal_vss_axi_full_0_ar_bits_addr(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_addr),
		.io_internal_vss_axi_full_0_ar_bits_len(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_len),
		.io_internal_vss_axi_full_0_ar_bits_size(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_size),
		.io_internal_vss_axi_full_0_ar_bits_burst(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_burst),
		.io_internal_vss_axi_full_0_ar_bits_lock(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_lock),
		.io_internal_vss_axi_full_0_ar_bits_cache(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_cache),
		.io_internal_vss_axi_full_0_ar_bits_prot(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_prot),
		.io_internal_vss_axi_full_0_ar_bits_qos(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_qos),
		.io_internal_vss_axi_full_0_ar_bits_region(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_region),
		.io_internal_vss_axi_full_0_r_ready(_schedulerMap_1_2_io_internal_vss_axi_full_0_r_ready),
		.io_internal_vss_axi_full_0_r_valid(_AxiUserYanker_4_s_axi_r_valid),
		.io_internal_vss_axi_full_0_r_bits_data(_AxiUserYanker_4_s_axi_r_bits_data),
		.io_internal_vss_axi_full_0_aw_ready(_AxiUserYanker_4_s_axi_aw_ready),
		.io_internal_vss_axi_full_0_aw_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_valid),
		.io_internal_vss_axi_full_0_aw_bits_addr(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_addr),
		.io_internal_vss_axi_full_0_aw_bits_len(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_len),
		.io_internal_vss_axi_full_0_aw_bits_size(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_size),
		.io_internal_vss_axi_full_0_aw_bits_burst(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_burst),
		.io_internal_vss_axi_full_0_aw_bits_lock(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_lock),
		.io_internal_vss_axi_full_0_aw_bits_cache(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_cache),
		.io_internal_vss_axi_full_0_aw_bits_prot(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_prot),
		.io_internal_vss_axi_full_0_aw_bits_qos(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_qos),
		.io_internal_vss_axi_full_0_aw_bits_region(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_region),
		.io_internal_vss_axi_full_0_w_ready(_AxiUserYanker_4_s_axi_w_ready),
		.io_internal_vss_axi_full_0_w_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_valid),
		.io_internal_vss_axi_full_0_w_bits_data(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_data),
		.io_internal_vss_axi_full_0_w_bits_last(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_last),
		.io_internal_vss_axi_full_0_b_valid(_AxiUserYanker_4_s_axi_b_valid),
		.io_internal_axi_mgmt_vss_0_ar_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_ar_ready),
		.io_internal_axi_mgmt_vss_0_ar_valid(_demux_m_axil_2_ar_valid),
		.io_internal_axi_mgmt_vss_0_ar_bits_addr(_demux_m_axil_2_ar_bits_addr[5:0]),
		.io_internal_axi_mgmt_vss_0_ar_bits_prot(_demux_m_axil_2_ar_bits_prot),
		.io_internal_axi_mgmt_vss_0_r_ready(_demux_m_axil_2_r_ready),
		.io_internal_axi_mgmt_vss_0_r_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_valid),
		.io_internal_axi_mgmt_vss_0_r_bits_data(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_data),
		.io_internal_axi_mgmt_vss_0_r_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_resp),
		.io_internal_axi_mgmt_vss_0_aw_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_aw_ready),
		.io_internal_axi_mgmt_vss_0_aw_valid(_demux_m_axil_2_aw_valid),
		.io_internal_axi_mgmt_vss_0_aw_bits_addr(_demux_m_axil_2_aw_bits_addr[5:0]),
		.io_internal_axi_mgmt_vss_0_aw_bits_prot(_demux_m_axil_2_aw_bits_prot),
		.io_internal_axi_mgmt_vss_0_w_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_w_ready),
		.io_internal_axi_mgmt_vss_0_w_valid(_demux_m_axil_2_w_valid),
		.io_internal_axi_mgmt_vss_0_w_bits_data(_demux_m_axil_2_w_bits_data),
		.io_internal_axi_mgmt_vss_0_w_bits_strb(_demux_m_axil_2_w_bits_strb),
		.io_internal_axi_mgmt_vss_0_b_ready(_demux_m_axil_2_b_ready),
		.io_internal_axi_mgmt_vss_0_b_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_valid),
		.io_internal_axi_mgmt_vss_0_b_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_bits_resp),
		.io_paused(_schedulerMap_1_2_io_paused),
		.connArgumentNotifier_0_ctrl_stealReq_valid(_notifierMap_0_2_connStealNtw_0_ctrl_stealReq_valid),
		.connArgumentNotifier_0_ctrl_stealReq_ready(_schedulerMap_1_2_connArgumentNotifier_0_ctrl_stealReq_ready),
		.connArgumentNotifier_0_data_qOutTask_ready(_schedulerMap_1_2_connArgumentNotifier_0_data_qOutTask_ready),
		.connArgumentNotifier_0_data_qOutTask_valid(_notifierMap_0_2_connStealNtw_0_data_qOutTask_valid),
		.connArgumentNotifier_0_data_qOutTask_bits(_notifierMap_0_2_connStealNtw_0_data_qOutTask_bits)
	);
	ArgumentNotifier notifierMap_0_2(
		.clock(clock),
		.reset(reset),
		.io_export_argIn_0_TREADY(_notifierMap_0_2_io_export_argIn_0_TREADY),
		.io_export_argIn_0_TVALID(_peMap_0_2_0_io_argOut_TVALID),
		.io_export_argIn_0_TDATA(_peMap_0_2_0_io_argOut_TDATA),
		.io_export_argIn_1_TREADY(_notifierMap_0_2_io_export_argIn_1_TREADY),
		.io_export_argIn_1_TVALID(_peMap_1_2_0_io_argOut_TVALID),
		.io_export_argIn_1_TDATA(_peMap_1_2_0_io_argOut_TDATA),
		.io_export_done(done),
		.connStealNtw_0_ctrl_stealReq_valid(_notifierMap_0_2_connStealNtw_0_ctrl_stealReq_valid),
		.connStealNtw_0_ctrl_stealReq_ready(_schedulerMap_1_2_connArgumentNotifier_0_ctrl_stealReq_ready),
		.connStealNtw_0_data_qOutTask_ready(_schedulerMap_1_2_connArgumentNotifier_0_data_qOutTask_ready),
		.connStealNtw_0_data_qOutTask_valid(_notifierMap_0_2_connStealNtw_0_data_qOutTask_valid),
		.connStealNtw_0_data_qOutTask_bits(_notifierMap_0_2_connStealNtw_0_data_qOutTask_bits),
		.axi_full_argRoute_0_ar_ready(_AxiUserYanker_3_s_axi_ar_ready),
		.axi_full_argRoute_0_ar_valid(_notifierMap_0_2_axi_full_argRoute_0_ar_valid),
		.axi_full_argRoute_0_ar_bits_id(_notifierMap_0_2_axi_full_argRoute_0_ar_bits_id),
		.axi_full_argRoute_0_ar_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_ar_bits_addr),
		.axi_full_argRoute_0_r_ready(_notifierMap_0_2_axi_full_argRoute_0_r_ready),
		.axi_full_argRoute_0_r_valid(_AxiUserYanker_3_s_axi_r_valid),
		.axi_full_argRoute_0_r_bits_id(_AxiUserYanker_3_s_axi_r_bits_id),
		.axi_full_argRoute_0_r_bits_data(_AxiUserYanker_3_s_axi_r_bits_data),
		.axi_full_argRoute_0_r_bits_resp(_AxiUserYanker_3_s_axi_r_bits_resp),
		.axi_full_argRoute_0_r_bits_last(_AxiUserYanker_3_s_axi_r_bits_last),
		.axi_full_argRoute_0_aw_ready(_AxiUserYanker_3_s_axi_aw_ready),
		.axi_full_argRoute_0_aw_valid(_notifierMap_0_2_axi_full_argRoute_0_aw_valid),
		.axi_full_argRoute_0_aw_bits_id(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_id),
		.axi_full_argRoute_0_aw_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_addr),
		.axi_full_argRoute_0_w_ready(_AxiUserYanker_3_s_axi_w_ready),
		.axi_full_argRoute_0_w_valid(_notifierMap_0_2_axi_full_argRoute_0_w_valid),
		.axi_full_argRoute_0_w_bits_data(_notifierMap_0_2_axi_full_argRoute_0_w_bits_data),
		.axi_full_argRoute_0_b_ready(_notifierMap_0_2_axi_full_argRoute_0_b_ready),
		.axi_full_argRoute_0_b_valid(_AxiUserYanker_3_s_axi_b_valid),
		.axi_full_argRoute_0_b_bits_id(_AxiUserYanker_3_s_axi_b_bits_id),
		.axi_full_argRoute_1_ar_ready(_AxiUserYanker_5_s_axi_ar_ready),
		.axi_full_argRoute_1_ar_valid(_notifierMap_0_2_axi_full_argRoute_1_ar_valid),
		.axi_full_argRoute_1_ar_bits_id(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_id),
		.axi_full_argRoute_1_ar_bits_addr(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_addr),
		.axi_full_argRoute_1_ar_bits_len(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_len),
		.axi_full_argRoute_1_ar_bits_size(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_size),
		.axi_full_argRoute_1_ar_bits_burst(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_burst),
		.axi_full_argRoute_1_ar_bits_lock(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_lock),
		.axi_full_argRoute_1_ar_bits_cache(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_cache),
		.axi_full_argRoute_1_ar_bits_prot(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_prot),
		.axi_full_argRoute_1_ar_bits_qos(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_qos),
		.axi_full_argRoute_1_ar_bits_region(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_region),
		.axi_full_argRoute_1_r_ready(_notifierMap_0_2_axi_full_argRoute_1_r_ready),
		.axi_full_argRoute_1_r_valid(_AxiUserYanker_5_s_axi_r_valid),
		.axi_full_argRoute_1_r_bits_data(_AxiUserYanker_5_s_axi_r_bits_data)
	);
	axi4LiteDemux demux(
		.clock(clock),
		.reset(reset),
		.s_axil_ar_ready(_demux_s_axil_ar_ready),
		.s_axil_ar_valid(_s_axil_mgmt_upscale_m_axi_ar_valid),
		.s_axil_ar_bits_addr(_s_axil_mgmt_upscale_m_axi_ar_bits_addr - {5'h00, |_s_axil_mgmt_upscale_m_axi_ar_bits_addr, 4'h0}),
		.s_axil_ar_bits_prot(_s_axil_mgmt_upscale_m_axi_ar_bits_prot),
		.s_axil_r_ready(_s_axil_mgmt_upscale_m_axi_r_ready),
		.s_axil_r_valid(_demux_s_axil_r_valid),
		.s_axil_r_bits_data(_demux_s_axil_r_bits_data),
		.s_axil_r_bits_resp(_demux_s_axil_r_bits_resp),
		.s_axil_aw_ready(_demux_s_axil_aw_ready),
		.s_axil_aw_valid(_s_axil_mgmt_upscale_m_axi_aw_valid),
		.s_axil_aw_bits_addr(_s_axil_mgmt_upscale_m_axi_aw_bits_addr - {5'h00, |_s_axil_mgmt_upscale_m_axi_aw_bits_addr, 4'h0}),
		.s_axil_aw_bits_prot(_s_axil_mgmt_upscale_m_axi_aw_bits_prot),
		.s_axil_w_ready(_demux_s_axil_w_ready),
		.s_axil_w_valid(_s_axil_mgmt_upscale_m_axi_w_valid),
		.s_axil_w_bits_data(_s_axil_mgmt_upscale_m_axi_w_bits_data),
		.s_axil_w_bits_strb(_s_axil_mgmt_upscale_m_axi_w_bits_strb),
		.s_axil_b_ready(_s_axil_mgmt_upscale_m_axi_b_ready),
		.s_axil_b_valid(_demux_s_axil_b_valid),
		.s_axil_b_bits_resp(_demux_s_axil_b_bits_resp),
		.m_axil_0_ar_ready(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_ar_ready),
		.m_axil_0_ar_valid(_demux_m_axil_0_ar_valid),
		.m_axil_0_ar_bits_addr(_demux_m_axil_0_ar_bits_addr),
		.m_axil_0_ar_bits_prot(_demux_m_axil_0_ar_bits_prot),
		.m_axil_0_r_ready(_demux_m_axil_0_r_ready),
		.m_axil_0_r_valid(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_valid),
		.m_axil_0_r_bits_data(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_bits_data),
		.m_axil_0_r_bits_resp(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_r_bits_resp),
		.m_axil_0_aw_ready(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_aw_ready),
		.m_axil_0_aw_valid(_demux_m_axil_0_aw_valid),
		.m_axil_0_aw_bits_addr(_demux_m_axil_0_aw_bits_addr),
		.m_axil_0_aw_bits_prot(_demux_m_axil_0_aw_bits_prot),
		.m_axil_0_w_ready(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_w_ready),
		.m_axil_0_w_valid(_demux_m_axil_0_w_valid),
		.m_axil_0_w_bits_data(_demux_m_axil_0_w_bits_data),
		.m_axil_0_w_bits_strb(_demux_m_axil_0_w_bits_strb),
		.m_axil_0_b_ready(_demux_m_axil_0_b_ready),
		.m_axil_0_b_valid(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_b_valid),
		.m_axil_0_b_bits_resp(_schedulerMap_0_2_io_internal_axi_mgmt_vss_0_b_bits_resp),
		.m_axil_1_ar_ready(_schedulerMap_0_2_spawnerServerMgmt_0_ar_ready),
		.m_axil_1_ar_valid(_demux_m_axil_1_ar_valid),
		.m_axil_1_ar_bits_addr(_demux_m_axil_1_ar_bits_addr),
		.m_axil_1_ar_bits_prot(_demux_m_axil_1_ar_bits_prot),
		.m_axil_1_r_ready(_demux_m_axil_1_r_ready),
		.m_axil_1_r_valid(_schedulerMap_0_2_spawnerServerMgmt_0_r_valid),
		.m_axil_1_r_bits_data(_schedulerMap_0_2_spawnerServerMgmt_0_r_bits_data),
		.m_axil_1_r_bits_resp(_schedulerMap_0_2_spawnerServerMgmt_0_r_bits_resp),
		.m_axil_1_aw_ready(_schedulerMap_0_2_spawnerServerMgmt_0_aw_ready),
		.m_axil_1_aw_valid(_demux_m_axil_1_aw_valid),
		.m_axil_1_aw_bits_addr(_demux_m_axil_1_aw_bits_addr),
		.m_axil_1_aw_bits_prot(_demux_m_axil_1_aw_bits_prot),
		.m_axil_1_w_ready(_schedulerMap_0_2_spawnerServerMgmt_0_w_ready),
		.m_axil_1_w_valid(_demux_m_axil_1_w_valid),
		.m_axil_1_w_bits_data(_demux_m_axil_1_w_bits_data),
		.m_axil_1_w_bits_strb(_demux_m_axil_1_w_bits_strb),
		.m_axil_1_b_ready(_demux_m_axil_1_b_ready),
		.m_axil_1_b_valid(_schedulerMap_0_2_spawnerServerMgmt_0_b_valid),
		.m_axil_1_b_bits_resp(_schedulerMap_0_2_spawnerServerMgmt_0_b_bits_resp),
		.m_axil_2_ar_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_ar_ready),
		.m_axil_2_ar_valid(_demux_m_axil_2_ar_valid),
		.m_axil_2_ar_bits_addr(_demux_m_axil_2_ar_bits_addr),
		.m_axil_2_ar_bits_prot(_demux_m_axil_2_ar_bits_prot),
		.m_axil_2_r_ready(_demux_m_axil_2_r_ready),
		.m_axil_2_r_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_valid),
		.m_axil_2_r_bits_data(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_data),
		.m_axil_2_r_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_resp),
		.m_axil_2_aw_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_aw_ready),
		.m_axil_2_aw_valid(_demux_m_axil_2_aw_valid),
		.m_axil_2_aw_bits_addr(_demux_m_axil_2_aw_bits_addr),
		.m_axil_2_aw_bits_prot(_demux_m_axil_2_aw_bits_prot),
		.m_axil_2_w_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_w_ready),
		.m_axil_2_w_valid(_demux_m_axil_2_w_valid),
		.m_axil_2_w_bits_data(_demux_m_axil_2_w_bits_data),
		.m_axil_2_w_bits_strb(_demux_m_axil_2_w_bits_strb),
		.m_axil_2_b_ready(_demux_m_axil_2_b_ready),
		.m_axil_2_b_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_valid),
		.m_axil_2_b_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_bits_resp),
		.m_axil_3_ar_ready(_schedulerMap_1_2_spawnerServerMgmt_0_ar_ready),
		.m_axil_3_ar_valid(_demux_m_axil_3_ar_valid),
		.m_axil_3_ar_bits_addr(_demux_m_axil_3_ar_bits_addr),
		.m_axil_3_ar_bits_prot(_demux_m_axil_3_ar_bits_prot),
		.m_axil_3_r_ready(_demux_m_axil_3_r_ready),
		.m_axil_3_r_valid(_schedulerMap_1_2_spawnerServerMgmt_0_r_valid),
		.m_axil_3_r_bits_data(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_data),
		.m_axil_3_r_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_resp),
		.m_axil_3_aw_ready(_schedulerMap_1_2_spawnerServerMgmt_0_aw_ready),
		.m_axil_3_aw_valid(_demux_m_axil_3_aw_valid),
		.m_axil_3_aw_bits_addr(_demux_m_axil_3_aw_bits_addr),
		.m_axil_3_aw_bits_prot(_demux_m_axil_3_aw_bits_prot),
		.m_axil_3_w_ready(_schedulerMap_1_2_spawnerServerMgmt_0_w_ready),
		.m_axil_3_w_valid(_demux_m_axil_3_w_valid),
		.m_axil_3_w_bits_data(_demux_m_axil_3_w_bits_data),
		.m_axil_3_w_bits_strb(_demux_m_axil_3_w_bits_strb),
		.m_axil_3_b_ready(_demux_m_axil_3_b_ready),
		.m_axil_3_b_valid(_schedulerMap_1_2_spawnerServerMgmt_0_b_valid),
		.m_axil_3_b_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_b_bits_resp)
	);
	Upscale s_axil_mgmt_upscale(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(s_axil_mgmt_hardcilk_ARREADY),
		.s_axi_ar_valid(s_axil_mgmt_hardcilk_ARVALID),
		.s_axi_ar_bits_addr(s_axil_mgmt_hardcilk_ARADDR),
		.s_axi_ar_bits_prot(s_axil_mgmt_hardcilk_ARPROT),
		.s_axi_r_ready(s_axil_mgmt_hardcilk_RREADY),
		.s_axi_r_valid(s_axil_mgmt_hardcilk_RVALID),
		.s_axi_r_bits_data(s_axil_mgmt_hardcilk_RDATA),
		.s_axi_r_bits_resp(s_axil_mgmt_hardcilk_RRESP),
		.s_axi_aw_ready(s_axil_mgmt_hardcilk_AWREADY),
		.s_axi_aw_valid(s_axil_mgmt_hardcilk_AWVALID),
		.s_axi_aw_bits_addr(s_axil_mgmt_hardcilk_AWADDR),
		.s_axi_aw_bits_prot(s_axil_mgmt_hardcilk_AWPROT),
		.s_axi_w_ready(s_axil_mgmt_hardcilk_WREADY),
		.s_axi_w_valid(s_axil_mgmt_hardcilk_WVALID),
		.s_axi_w_bits_data(s_axil_mgmt_hardcilk_WDATA),
		.s_axi_w_bits_strb(s_axil_mgmt_hardcilk_WSTRB),
		.s_axi_b_ready(s_axil_mgmt_hardcilk_BREADY),
		.s_axi_b_valid(s_axil_mgmt_hardcilk_BVALID),
		.s_axi_b_bits_resp(s_axil_mgmt_hardcilk_BRESP),
		.m_axi_ar_ready(_demux_s_axil_ar_ready),
		.m_axi_ar_valid(_s_axil_mgmt_upscale_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_s_axil_mgmt_upscale_m_axi_ar_bits_addr),
		.m_axi_ar_bits_prot(_s_axil_mgmt_upscale_m_axi_ar_bits_prot),
		.m_axi_r_ready(_s_axil_mgmt_upscale_m_axi_r_ready),
		.m_axi_r_valid(_demux_s_axil_r_valid),
		.m_axi_r_bits_data(_demux_s_axil_r_bits_data),
		.m_axi_r_bits_resp(_demux_s_axil_r_bits_resp),
		.m_axi_aw_ready(_demux_s_axil_aw_ready),
		.m_axi_aw_valid(_s_axil_mgmt_upscale_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_s_axil_mgmt_upscale_m_axi_aw_bits_addr),
		.m_axi_aw_bits_prot(_s_axil_mgmt_upscale_m_axi_aw_bits_prot),
		.m_axi_w_ready(_demux_s_axil_w_ready),
		.m_axi_w_valid(_s_axil_mgmt_upscale_m_axi_w_valid),
		.m_axi_w_bits_data(_s_axil_mgmt_upscale_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_s_axil_mgmt_upscale_m_axi_w_bits_strb),
		.m_axi_b_ready(_s_axil_mgmt_upscale_m_axi_b_ready),
		.m_axi_b_valid(_demux_s_axil_b_valid),
		.m_axi_b_bits_resp(_demux_s_axil_b_bits_resp)
	);
	ProtocolConverter protocolConverter(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_io_deq_valid),
		.s_axi_ar_bits_id(_sourceBuffer_io_deq_bits_id),
		.s_axi_ar_bits_addr(_sourceBuffer_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_s_axi_r_valid),
		.s_axi_r_bits_id(_protocolConverter_s_axi_r_bits_id),
		.s_axi_r_bits_data(_protocolConverter_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_1_io_deq_valid),
		.s_axi_aw_bits_id(_sourceBuffer_1_io_deq_bits_id),
		.s_axi_aw_bits_addr(_sourceBuffer_1_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_1_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_1_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_1_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_1_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_1_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_1_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_1_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_1_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_2_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_2_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_2_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_2_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_1_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_s_axi_b_valid),
		.s_axi_b_bits_id(_protocolConverter_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_protocolConverter_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_protocolConverter_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_protocolConverter_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_s_axi_BRESP)
	);
	AxiUserYanker AxiUserYanker(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_AxiUserYanker_s_axi_ar_ready),
		.s_axi_ar_valid(_peMap_0_2_0_io_m_axi_gmem_ARVALID),
		.s_axi_ar_bits_id(_peMap_0_2_0_io_m_axi_gmem_ARID),
		.s_axi_ar_bits_addr(_peMap_0_2_0_io_m_axi_gmem_ARADDR),
		.s_axi_ar_bits_len(_peMap_0_2_0_io_m_axi_gmem_ARLEN),
		.s_axi_ar_bits_size(_peMap_0_2_0_io_m_axi_gmem_ARSIZE),
		.s_axi_ar_bits_burst(_peMap_0_2_0_io_m_axi_gmem_ARBURST),
		.s_axi_ar_bits_lock(_peMap_0_2_0_io_m_axi_gmem_ARLOCK),
		.s_axi_ar_bits_cache(_peMap_0_2_0_io_m_axi_gmem_ARCACHE),
		.s_axi_ar_bits_prot(_peMap_0_2_0_io_m_axi_gmem_ARPROT),
		.s_axi_ar_bits_qos(_peMap_0_2_0_io_m_axi_gmem_ARQOS),
		.s_axi_ar_bits_region(_peMap_0_2_0_io_m_axi_gmem_ARREGION),
		.s_axi_ar_bits_user(_peMap_0_2_0_io_m_axi_gmem_ARUSER),
		.s_axi_r_ready(_peMap_0_2_0_io_m_axi_gmem_RREADY),
		.s_axi_r_valid(_AxiUserYanker_s_axi_r_valid),
		.s_axi_r_bits_id(_AxiUserYanker_s_axi_r_bits_id),
		.s_axi_r_bits_data(_AxiUserYanker_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_AxiUserYanker_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_AxiUserYanker_s_axi_r_bits_last),
		.s_axi_aw_ready(_AxiUserYanker_s_axi_aw_ready),
		.s_axi_aw_valid(_peMap_0_2_0_io_m_axi_gmem_AWVALID),
		.s_axi_aw_bits_id(_peMap_0_2_0_io_m_axi_gmem_AWID),
		.s_axi_aw_bits_addr(_peMap_0_2_0_io_m_axi_gmem_AWADDR),
		.s_axi_aw_bits_len(_peMap_0_2_0_io_m_axi_gmem_AWLEN),
		.s_axi_aw_bits_size(_peMap_0_2_0_io_m_axi_gmem_AWSIZE),
		.s_axi_aw_bits_burst(_peMap_0_2_0_io_m_axi_gmem_AWBURST),
		.s_axi_aw_bits_lock(_peMap_0_2_0_io_m_axi_gmem_AWLOCK),
		.s_axi_aw_bits_cache(_peMap_0_2_0_io_m_axi_gmem_AWCACHE),
		.s_axi_aw_bits_prot(_peMap_0_2_0_io_m_axi_gmem_AWPROT),
		.s_axi_aw_bits_qos(_peMap_0_2_0_io_m_axi_gmem_AWQOS),
		.s_axi_aw_bits_region(_peMap_0_2_0_io_m_axi_gmem_AWREGION),
		.s_axi_aw_bits_user(_peMap_0_2_0_io_m_axi_gmem_AWUSER),
		.s_axi_w_ready(_AxiUserYanker_s_axi_w_ready),
		.s_axi_w_valid(_peMap_0_2_0_io_m_axi_gmem_WVALID),
		.s_axi_w_bits_data(_peMap_0_2_0_io_m_axi_gmem_WDATA),
		.s_axi_w_bits_strb(_peMap_0_2_0_io_m_axi_gmem_WSTRB),
		.s_axi_w_bits_last(_peMap_0_2_0_io_m_axi_gmem_WLAST),
		.s_axi_w_bits_user(_peMap_0_2_0_io_m_axi_gmem_WUSER),
		.s_axi_b_ready(_peMap_0_2_0_io_m_axi_gmem_BREADY),
		.s_axi_b_valid(_AxiUserYanker_s_axi_b_valid),
		.s_axi_b_bits_id(_AxiUserYanker_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_AxiUserYanker_s_axi_b_bits_resp),
		.m_axi_ar_ready(_sourceBuffer_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_m_axi_ar_valid),
		.m_axi_ar_bits_id(_AxiUserYanker_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_AxiUserYanker_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_AxiUserYanker_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_AxiUserYanker_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_AxiUserYanker_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_AxiUserYanker_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_AxiUserYanker_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_AxiUserYanker_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_AxiUserYanker_m_axi_ar_bits_region),
		.m_axi_r_ready(_AxiUserYanker_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_io_deq_valid),
		.m_axi_r_bits_id(_sinkBuffer_io_deq_bits_id),
		.m_axi_r_bits_data(_sinkBuffer_io_deq_bits_data),
		.m_axi_r_bits_resp(_sinkBuffer_io_deq_bits_resp),
		.m_axi_r_bits_last(_sinkBuffer_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_1_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_m_axi_aw_valid),
		.m_axi_aw_bits_id(_AxiUserYanker_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_AxiUserYanker_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_AxiUserYanker_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_AxiUserYanker_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_AxiUserYanker_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_AxiUserYanker_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_AxiUserYanker_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_AxiUserYanker_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_AxiUserYanker_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_AxiUserYanker_m_axi_aw_bits_region),
		.m_axi_w_ready(_sourceBuffer_2_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_AxiUserYanker_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_AxiUserYanker_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_1_io_deq_valid),
		.m_axi_b_bits_id(_sinkBuffer_1_io_deq_bits_id),
		.m_axi_b_bits_resp(_sinkBuffer_1_io_deq_bits_resp)
	);
	Queue2_ReadAddressChannel_4 sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_m_axi_ar_valid),
		.io_enq_bits_id(_AxiUserYanker_m_axi_ar_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_m_axi_ar_bits_len),
		.io_enq_bits_size(_AxiUserYanker_m_axi_ar_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_m_axi_ar_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_m_axi_ar_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_m_axi_ar_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_m_axi_ar_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_m_axi_ar_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_m_axi_ar_bits_region),
		.io_deq_ready(_protocolConverter_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_7 sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_io_enq_ready),
		.io_enq_valid(_protocolConverter_s_axi_r_valid),
		.io_enq_bits_id(_protocolConverter_s_axi_r_bits_id),
		.io_enq_bits_data(_protocolConverter_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_io_deq_bits_id),
		.io_deq_bits_data(_sinkBuffer_io_deq_bits_data),
		.io_deq_bits_resp(_sinkBuffer_io_deq_bits_resp),
		.io_deq_bits_last(_sinkBuffer_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel_3 sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_1_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_m_axi_aw_valid),
		.io_enq_bits_id(_AxiUserYanker_m_axi_aw_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_m_axi_aw_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_m_axi_aw_bits_len),
		.io_enq_bits_size(_AxiUserYanker_m_axi_aw_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_m_axi_aw_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_m_axi_aw_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_m_axi_aw_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_m_axi_aw_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_m_axi_aw_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_m_axi_aw_bits_region),
		.io_deq_ready(_protocolConverter_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_1_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_1_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_1_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_1_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_1_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_1_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_1_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_1_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_1_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_1_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_1_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_5 sourceBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_2_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_m_axi_w_bits_data),
		.io_enq_bits_strb(_AxiUserYanker_m_axi_w_bits_strb),
		.io_enq_bits_last(_AxiUserYanker_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_2_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_2_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_2_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_2_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_5 sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_1_io_enq_ready),
		.io_enq_valid(_protocolConverter_s_axi_b_valid),
		.io_enq_bits_id(_protocolConverter_s_axi_b_bits_id),
		.io_enq_bits_resp(_protocolConverter_s_axi_b_bits_resp),
		.io_deq_ready(_AxiUserYanker_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_1_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_1_io_deq_bits_id),
		.io_deq_bits_resp(_sinkBuffer_1_io_deq_bits_resp)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_m_axi_ar_bits_size),
		.s_axi_ARBURST(_protocolConverter_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_protocolConverter_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_s_axi_RVALID),
		.s_axi_RID(_axpbs_s_axi_RID),
		.s_axi_RDATA(_axpbs_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_m_axi_aw_bits_size),
		.s_axi_AWBURST(_protocolConverter_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_protocolConverter_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_s_axi_BVALID),
		.s_axi_BID(_axpbs_s_axi_BID),
		.s_axi_BRESP(_axpbs_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_00_ARREADY),
		.m_axi_ARVALID(m_axi_00_ARVALID),
		.m_axi_ARID(m_axi_00_ARID),
		.m_axi_ARADDR(m_axi_00_ARADDR),
		.m_axi_ARLEN(m_axi_00_ARLEN),
		.m_axi_ARSIZE(m_axi_00_ARSIZE),
		.m_axi_ARBURST(m_axi_00_ARBURST),
		.m_axi_ARLOCK(m_axi_00_ARLOCK),
		.m_axi_ARCACHE(m_axi_00_ARCACHE),
		.m_axi_ARPROT(m_axi_00_ARPROT),
		.m_axi_ARQOS(m_axi_00_ARQOS),
		.m_axi_ARREGION(m_axi_00_ARREGION),
		.m_axi_RREADY(m_axi_00_RREADY),
		.m_axi_RVALID(m_axi_00_RVALID),
		.m_axi_RID(m_axi_00_RID),
		.m_axi_RDATA(m_axi_00_RDATA),
		.m_axi_RRESP(m_axi_00_RRESP),
		.m_axi_AWREADY(m_axi_00_AWREADY),
		.m_axi_AWVALID(m_axi_00_AWVALID),
		.m_axi_AWID(m_axi_00_AWID),
		.m_axi_AWADDR(m_axi_00_AWADDR),
		.m_axi_AWLEN(m_axi_00_AWLEN),
		.m_axi_AWSIZE(m_axi_00_AWSIZE),
		.m_axi_AWBURST(m_axi_00_AWBURST),
		.m_axi_AWLOCK(m_axi_00_AWLOCK),
		.m_axi_AWCACHE(m_axi_00_AWCACHE),
		.m_axi_AWPROT(m_axi_00_AWPROT),
		.m_axi_AWQOS(m_axi_00_AWQOS),
		.m_axi_AWREGION(m_axi_00_AWREGION),
		.m_axi_WREADY(m_axi_00_WREADY),
		.m_axi_WVALID(m_axi_00_WVALID),
		.m_axi_WDATA(m_axi_00_WDATA),
		.m_axi_WSTRB(m_axi_00_WSTRB),
		.m_axi_WLAST(m_axi_00_WLAST),
		.m_axi_BREADY(m_axi_00_BREADY),
		.m_axi_BVALID(m_axi_00_BVALID),
		.m_axi_BID(m_axi_00_BID),
		.m_axi_BRESP(m_axi_00_BRESP)
	);
	ProtocolConverter_1 protocolConverter_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_1_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_3_io_deq_valid),
		.s_axi_ar_bits_addr(_sourceBuffer_3_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_3_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_3_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_3_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_3_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_3_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_3_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_3_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_3_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_2_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_1_s_axi_r_valid),
		.s_axi_r_bits_data(_protocolConverter_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_1_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_4_io_deq_valid),
		.s_axi_aw_bits_addr(_sourceBuffer_4_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_4_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_4_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_4_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_4_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_4_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_4_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_4_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_4_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_1_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_5_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_5_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_5_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_5_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_3_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_1_s_axi_b_valid),
		.s_axi_b_bits_resp(_protocolConverter_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_1_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_1_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_1_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_protocolConverter_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_1_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_1_s_axi_RVALID),
		.m_axi_r_bits_data(_axpbs_1_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_1_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_1_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_1_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_1_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_1_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_protocolConverter_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_1_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_1_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_1_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_1_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_1_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_1_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_1_s_axi_BRESP)
	);
	AxiUserYanker_1 AxiUserYanker_1(
		.s_axi_ar_ready(_AxiUserYanker_1_s_axi_ar_ready),
		.s_axi_ar_valid(_schedulerMap_1_2_spawnerServerAXI_0_ar_valid),
		.s_axi_ar_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_addr),
		.s_axi_ar_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_len),
		.s_axi_r_ready(_schedulerMap_1_2_spawnerServerAXI_0_r_ready),
		.s_axi_r_valid(_AxiUserYanker_1_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_1_s_axi_r_bits_data),
		.s_axi_r_bits_last(_AxiUserYanker_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_AxiUserYanker_1_s_axi_aw_ready),
		.s_axi_aw_valid(_schedulerMap_1_2_spawnerServerAXI_0_aw_valid),
		.s_axi_aw_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_addr),
		.s_axi_aw_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_len),
		.s_axi_w_ready(_AxiUserYanker_1_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_1_2_spawnerServerAXI_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_last),
		.s_axi_b_ready(_schedulerMap_1_2_spawnerServerAXI_0_b_ready),
		.s_axi_b_valid(_AxiUserYanker_1_s_axi_b_valid),
		.m_axi_ar_ready(_sourceBuffer_3_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_AxiUserYanker_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_1_m_axi_ar_bits_len),
		.m_axi_r_ready(_AxiUserYanker_1_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_2_io_deq_valid),
		.m_axi_r_bits_data(_sinkBuffer_2_io_deq_bits_data),
		.m_axi_r_bits_last(_sinkBuffer_2_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_4_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_AxiUserYanker_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_AxiUserYanker_1_m_axi_aw_bits_len),
		.m_axi_w_ready(_sourceBuffer_5_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_1_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_1_m_axi_w_bits_data),
		.m_axi_w_bits_last(_AxiUserYanker_1_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_1_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_3_io_deq_valid)
	);
	Queue2_ReadAddressChannel sourceBuffer_3(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_3_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_1_m_axi_ar_valid),
		.io_enq_bits_addr(_AxiUserYanker_1_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_1_m_axi_ar_bits_len),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_1_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_3_io_deq_valid),
		.io_deq_bits_addr(_sourceBuffer_3_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_3_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_3_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_3_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_3_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_3_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_3_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_3_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_3_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_9 sinkBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_2_io_enq_ready),
		.io_enq_valid(_protocolConverter_1_s_axi_r_valid),
		.io_enq_bits_data(_protocolConverter_1_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_1_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_1_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_1_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_2_io_deq_valid),
		.io_deq_bits_data(_sinkBuffer_2_io_deq_bits_data),
		.io_deq_bits_resp(),
		.io_deq_bits_last(_sinkBuffer_2_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel sourceBuffer_4(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_4_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_1_m_axi_aw_valid),
		.io_enq_bits_addr(_AxiUserYanker_1_m_axi_aw_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_1_m_axi_aw_bits_len),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_1_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_4_io_deq_valid),
		.io_deq_bits_addr(_sourceBuffer_4_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_4_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_4_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_4_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_4_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_4_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_4_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_4_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_4_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_7 sourceBuffer_5(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_5_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_1_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_1_m_axi_w_bits_data),
		.io_enq_bits_strb(64'hffffffffffffffff),
		.io_enq_bits_last(_AxiUserYanker_1_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_1_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_5_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_5_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_5_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_5_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_7 sinkBuffer_3(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_3_io_enq_ready),
		.io_enq_valid(_protocolConverter_1_s_axi_b_valid),
		.io_enq_bits_resp(_protocolConverter_1_s_axi_b_bits_resp),
		.io_deq_ready(_AxiUserYanker_1_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_3_io_deq_valid),
		.io_deq_bits_resp()
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_1_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_1_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_1_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_1_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_1_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_1_m_axi_ar_bits_size),
		.s_axi_ARBURST(2'h1),
		.s_axi_ARLOCK(_protocolConverter_1_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_1_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_1_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_1_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_1_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_1_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_1_s_axi_RVALID),
		.s_axi_RID(),
		.s_axi_RDATA(_axpbs_1_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_1_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_1_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_1_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_1_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_1_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_1_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_1_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_1_m_axi_aw_bits_size),
		.s_axi_AWBURST(2'h1),
		.s_axi_AWLOCK(_protocolConverter_1_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_1_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_1_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_1_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_1_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_1_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_1_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_1_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_1_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_1_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_1_s_axi_BVALID),
		.s_axi_BID(_axpbs_1_s_axi_BID),
		.s_axi_BRESP(_axpbs_1_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_01_ARREADY),
		.m_axi_ARVALID(m_axi_01_ARVALID),
		.m_axi_ARID(m_axi_01_ARID),
		.m_axi_ARADDR(m_axi_01_ARADDR),
		.m_axi_ARLEN(m_axi_01_ARLEN),
		.m_axi_ARSIZE(m_axi_01_ARSIZE),
		.m_axi_ARBURST(m_axi_01_ARBURST),
		.m_axi_ARLOCK(m_axi_01_ARLOCK),
		.m_axi_ARCACHE(m_axi_01_ARCACHE),
		.m_axi_ARPROT(m_axi_01_ARPROT),
		.m_axi_ARQOS(m_axi_01_ARQOS),
		.m_axi_ARREGION(m_axi_01_ARREGION),
		.m_axi_RREADY(m_axi_01_RREADY),
		.m_axi_RVALID(m_axi_01_RVALID),
		.m_axi_RID(m_axi_01_RID),
		.m_axi_RDATA(m_axi_01_RDATA),
		.m_axi_RRESP(m_axi_01_RRESP),
		.m_axi_AWREADY(m_axi_01_AWREADY),
		.m_axi_AWVALID(m_axi_01_AWVALID),
		.m_axi_AWID(m_axi_01_AWID),
		.m_axi_AWADDR(m_axi_01_AWADDR),
		.m_axi_AWLEN(m_axi_01_AWLEN),
		.m_axi_AWSIZE(m_axi_01_AWSIZE),
		.m_axi_AWBURST(m_axi_01_AWBURST),
		.m_axi_AWLOCK(m_axi_01_AWLOCK),
		.m_axi_AWCACHE(m_axi_01_AWCACHE),
		.m_axi_AWPROT(m_axi_01_AWPROT),
		.m_axi_AWQOS(m_axi_01_AWQOS),
		.m_axi_AWREGION(m_axi_01_AWREGION),
		.m_axi_WREADY(m_axi_01_WREADY),
		.m_axi_WVALID(m_axi_01_WVALID),
		.m_axi_WDATA(m_axi_01_WDATA),
		.m_axi_WSTRB(m_axi_01_WSTRB),
		.m_axi_WLAST(m_axi_01_WLAST),
		.m_axi_BREADY(m_axi_01_BREADY),
		.m_axi_BVALID(m_axi_01_BVALID),
		.m_axi_BID(m_axi_01_BID),
		.m_axi_BRESP(m_axi_01_BRESP)
	);
	ProtocolConverter_2 protocolConverter_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_2_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_6_io_deq_valid),
		.s_axi_ar_bits_id(_sourceBuffer_6_io_deq_bits_id),
		.s_axi_ar_bits_addr(_sourceBuffer_6_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_6_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_6_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_6_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_6_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_6_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_6_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_6_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_6_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_4_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_2_s_axi_r_valid),
		.s_axi_r_bits_id(_protocolConverter_2_s_axi_r_bits_id),
		.s_axi_r_bits_data(_protocolConverter_2_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_2_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_2_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_2_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_7_io_deq_valid),
		.s_axi_aw_bits_id(_sourceBuffer_7_io_deq_bits_id),
		.s_axi_aw_bits_addr(_sourceBuffer_7_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_7_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_7_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_7_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_7_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_7_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_7_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_7_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_7_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_2_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_8_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_8_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_8_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_8_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_5_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_2_s_axi_b_valid),
		.m_axi_ar_ready(_axpbs_2_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_2_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_2_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_2_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_2_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_protocolConverter_2_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_protocolConverter_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_2_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_2_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_2_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_2_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_2_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_2_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_2_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_2_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_2_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_2_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_2_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_2_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_2_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_2_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_2_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_2_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_2_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_2_s_axi_BRESP)
	);
	AxiUserYanker_2 AxiUserYanker_2(
		.s_axi_ar_ready(_AxiUserYanker_2_s_axi_ar_ready),
		.s_axi_ar_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_valid),
		.s_axi_ar_bits_addr(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_addr),
		.s_axi_ar_bits_len(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_len),
		.s_axi_ar_bits_size(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_size),
		.s_axi_ar_bits_burst(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_burst),
		.s_axi_ar_bits_lock(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_lock),
		.s_axi_ar_bits_cache(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_cache),
		.s_axi_ar_bits_prot(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_prot),
		.s_axi_ar_bits_qos(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_qos),
		.s_axi_ar_bits_region(_schedulerMap_0_2_io_internal_vss_axi_full_0_ar_bits_region),
		.s_axi_r_ready(_schedulerMap_0_2_io_internal_vss_axi_full_0_r_ready),
		.s_axi_r_valid(_AxiUserYanker_2_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_2_s_axi_r_bits_data),
		.s_axi_aw_ready(_AxiUserYanker_2_s_axi_aw_ready),
		.s_axi_aw_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_valid),
		.s_axi_aw_bits_addr(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_addr),
		.s_axi_aw_bits_len(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_len),
		.s_axi_aw_bits_size(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_size),
		.s_axi_aw_bits_burst(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_burst),
		.s_axi_aw_bits_lock(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_lock),
		.s_axi_aw_bits_cache(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_cache),
		.s_axi_aw_bits_prot(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_prot),
		.s_axi_aw_bits_qos(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_qos),
		.s_axi_aw_bits_region(_schedulerMap_0_2_io_internal_vss_axi_full_0_aw_bits_region),
		.s_axi_w_ready(_AxiUserYanker_2_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_last),
		.s_axi_b_valid(_AxiUserYanker_2_s_axi_b_valid),
		.m_axi_ar_ready(_sourceBuffer_6_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_2_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_AxiUserYanker_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_2_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_AxiUserYanker_2_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_AxiUserYanker_2_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_AxiUserYanker_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_AxiUserYanker_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_AxiUserYanker_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_AxiUserYanker_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_AxiUserYanker_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_AxiUserYanker_2_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_4_io_deq_valid),
		.m_axi_r_bits_data(_sinkBuffer_4_io_deq_bits_data),
		.m_axi_aw_ready(_sourceBuffer_7_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_2_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_AxiUserYanker_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_AxiUserYanker_2_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_AxiUserYanker_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_AxiUserYanker_2_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_AxiUserYanker_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_AxiUserYanker_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_AxiUserYanker_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_AxiUserYanker_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_AxiUserYanker_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_sourceBuffer_8_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_2_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_2_m_axi_w_bits_data),
		.m_axi_w_bits_last(_AxiUserYanker_2_m_axi_w_bits_last),
		.m_axi_b_valid(_sinkBuffer_5_io_deq_valid)
	);
	Queue2_ReadAddressChannel_9 sourceBuffer_6(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_6_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_2_m_axi_ar_valid),
		.io_enq_bits_id(1'h0),
		.io_enq_bits_addr(_AxiUserYanker_2_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_2_m_axi_ar_bits_len),
		.io_enq_bits_size(_AxiUserYanker_2_m_axi_ar_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_2_m_axi_ar_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_2_m_axi_ar_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_2_m_axi_ar_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_2_m_axi_ar_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_2_m_axi_ar_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_2_m_axi_ar_bits_region),
		.io_deq_ready(_protocolConverter_2_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_6_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_6_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_6_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_6_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_6_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_6_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_6_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_6_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_6_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_6_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_6_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_11 sinkBuffer_4(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_4_io_enq_ready),
		.io_enq_valid(_protocolConverter_2_s_axi_r_valid),
		.io_enq_bits_id(_protocolConverter_2_s_axi_r_bits_id),
		.io_enq_bits_data(_protocolConverter_2_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_2_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_2_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_2_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_4_io_deq_valid),
		.io_deq_bits_id(),
		.io_deq_bits_data(_sinkBuffer_4_io_deq_bits_data),
		.io_deq_bits_resp(),
		.io_deq_bits_last()
	);
	Queue2_WriteAddressChannel_8 sourceBuffer_7(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_7_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_2_m_axi_aw_valid),
		.io_enq_bits_id(1'h0),
		.io_enq_bits_addr(_AxiUserYanker_2_m_axi_aw_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_2_m_axi_aw_bits_len),
		.io_enq_bits_size(_AxiUserYanker_2_m_axi_aw_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_2_m_axi_aw_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_2_m_axi_aw_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_2_m_axi_aw_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_2_m_axi_aw_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_2_m_axi_aw_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_2_m_axi_aw_bits_region),
		.io_deq_ready(_protocolConverter_2_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_7_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_7_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_7_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_7_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_7_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_7_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_7_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_7_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_7_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_7_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_7_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_7 sourceBuffer_8(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_8_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_2_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_2_m_axi_w_bits_data),
		.io_enq_bits_strb(64'hffffffffffffffff),
		.io_enq_bits_last(_AxiUserYanker_2_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_2_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_8_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_8_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_8_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_8_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_9 sinkBuffer_5(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_5_io_enq_ready),
		.io_enq_valid(_protocolConverter_2_s_axi_b_valid),
		.io_deq_ready(1'h1),
		.io_deq_valid(_sinkBuffer_5_io_deq_valid)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_2_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_2_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_2_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_2_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_2_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_2_m_axi_ar_bits_size),
		.s_axi_ARBURST(_protocolConverter_2_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_protocolConverter_2_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_2_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_2_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_2_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_2_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_2_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_2_s_axi_RVALID),
		.s_axi_RID(_axpbs_2_s_axi_RID),
		.s_axi_RDATA(_axpbs_2_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_2_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_2_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_2_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_2_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_2_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_2_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_2_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_2_m_axi_aw_bits_size),
		.s_axi_AWBURST(_protocolConverter_2_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_protocolConverter_2_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_2_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_2_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_2_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_2_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_2_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_2_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_2_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_2_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_2_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_2_s_axi_BVALID),
		.s_axi_BID(_axpbs_2_s_axi_BID),
		.s_axi_BRESP(_axpbs_2_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_02_ARREADY),
		.m_axi_ARVALID(m_axi_02_ARVALID),
		.m_axi_ARID(m_axi_02_ARID),
		.m_axi_ARADDR(m_axi_02_ARADDR),
		.m_axi_ARLEN(m_axi_02_ARLEN),
		.m_axi_ARSIZE(m_axi_02_ARSIZE),
		.m_axi_ARBURST(m_axi_02_ARBURST),
		.m_axi_ARLOCK(m_axi_02_ARLOCK),
		.m_axi_ARCACHE(m_axi_02_ARCACHE),
		.m_axi_ARPROT(m_axi_02_ARPROT),
		.m_axi_ARQOS(m_axi_02_ARQOS),
		.m_axi_ARREGION(m_axi_02_ARREGION),
		.m_axi_RREADY(m_axi_02_RREADY),
		.m_axi_RVALID(m_axi_02_RVALID),
		.m_axi_RID(m_axi_02_RID),
		.m_axi_RDATA(m_axi_02_RDATA),
		.m_axi_RRESP(m_axi_02_RRESP),
		.m_axi_AWREADY(m_axi_02_AWREADY),
		.m_axi_AWVALID(m_axi_02_AWVALID),
		.m_axi_AWID(m_axi_02_AWID),
		.m_axi_AWADDR(m_axi_02_AWADDR),
		.m_axi_AWLEN(m_axi_02_AWLEN),
		.m_axi_AWSIZE(m_axi_02_AWSIZE),
		.m_axi_AWBURST(m_axi_02_AWBURST),
		.m_axi_AWLOCK(m_axi_02_AWLOCK),
		.m_axi_AWCACHE(m_axi_02_AWCACHE),
		.m_axi_AWPROT(m_axi_02_AWPROT),
		.m_axi_AWQOS(m_axi_02_AWQOS),
		.m_axi_AWREGION(m_axi_02_AWREGION),
		.m_axi_WREADY(m_axi_02_WREADY),
		.m_axi_WVALID(m_axi_02_WVALID),
		.m_axi_WDATA(m_axi_02_WDATA),
		.m_axi_WSTRB(m_axi_02_WSTRB),
		.m_axi_WLAST(m_axi_02_WLAST),
		.m_axi_BREADY(m_axi_02_BREADY),
		.m_axi_BVALID(m_axi_02_BVALID),
		.m_axi_BID(m_axi_02_BID),
		.m_axi_BRESP(m_axi_02_BRESP)
	);
	ProtocolConverter_3 protocolConverter_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_3_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_9_io_deq_valid),
		.s_axi_ar_bits_id(_sourceBuffer_9_io_deq_bits_id),
		.s_axi_ar_bits_addr(_sourceBuffer_9_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_9_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_9_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_9_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_9_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_9_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_9_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_9_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_9_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_6_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_3_s_axi_r_valid),
		.s_axi_r_bits_id(_protocolConverter_3_s_axi_r_bits_id),
		.s_axi_r_bits_data(_protocolConverter_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_3_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_10_io_deq_valid),
		.s_axi_aw_bits_id(_sourceBuffer_10_io_deq_bits_id),
		.s_axi_aw_bits_addr(_sourceBuffer_10_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_10_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_10_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_10_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_10_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_10_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_10_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_10_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_10_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_3_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_11_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_11_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_11_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_11_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_7_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_3_s_axi_b_valid),
		.s_axi_b_bits_id(_protocolConverter_3_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_protocolConverter_3_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_3_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_3_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_3_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_3_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_3_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_protocolConverter_3_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_protocolConverter_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_3_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_3_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_3_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_3_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_3_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_3_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_3_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_3_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_3_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_3_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_3_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_3_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_3_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_3_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_3_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_3_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_3_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_3_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_3_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_3_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_3_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_3_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_3_s_axi_BRESP)
	);
	AxiUserYanker_3 AxiUserYanker_3(
		.s_axi_ar_ready(_AxiUserYanker_3_s_axi_ar_ready),
		.s_axi_ar_valid(_notifierMap_0_2_axi_full_argRoute_0_ar_valid),
		.s_axi_ar_bits_id(_notifierMap_0_2_axi_full_argRoute_0_ar_bits_id),
		.s_axi_ar_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_ar_bits_addr),
		.s_axi_ar_bits_len(8'h00),
		.s_axi_ar_bits_size(3'h2),
		.s_axi_ar_bits_burst(2'h1),
		.s_axi_ar_bits_lock(1'h0),
		.s_axi_ar_bits_cache(4'h0),
		.s_axi_ar_bits_prot(3'h0),
		.s_axi_ar_bits_qos(4'h0),
		.s_axi_ar_bits_region(4'h0),
		.s_axi_r_ready(_notifierMap_0_2_axi_full_argRoute_0_r_ready),
		.s_axi_r_valid(_AxiUserYanker_3_s_axi_r_valid),
		.s_axi_r_bits_id(_AxiUserYanker_3_s_axi_r_bits_id),
		.s_axi_r_bits_data(_AxiUserYanker_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_AxiUserYanker_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_AxiUserYanker_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_AxiUserYanker_3_s_axi_aw_ready),
		.s_axi_aw_valid(_notifierMap_0_2_axi_full_argRoute_0_aw_valid),
		.s_axi_aw_bits_id(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_id),
		.s_axi_aw_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_addr),
		.s_axi_aw_bits_size(3'h2),
		.s_axi_aw_bits_burst(2'h1),
		.s_axi_w_ready(_AxiUserYanker_3_s_axi_w_ready),
		.s_axi_w_valid(_notifierMap_0_2_axi_full_argRoute_0_w_valid),
		.s_axi_w_bits_data(_notifierMap_0_2_axi_full_argRoute_0_w_bits_data),
		.s_axi_w_bits_strb(64'h000000000000000f),
		.s_axi_w_bits_last(1'h1),
		.s_axi_b_ready(_notifierMap_0_2_axi_full_argRoute_0_b_ready),
		.s_axi_b_valid(_AxiUserYanker_3_s_axi_b_valid),
		.s_axi_b_bits_id(_AxiUserYanker_3_s_axi_b_bits_id),
		.m_axi_ar_ready(_sourceBuffer_9_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_3_m_axi_ar_valid),
		.m_axi_ar_bits_id(_AxiUserYanker_3_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_AxiUserYanker_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_3_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_AxiUserYanker_3_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_AxiUserYanker_3_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_AxiUserYanker_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_AxiUserYanker_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_AxiUserYanker_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_AxiUserYanker_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_AxiUserYanker_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_AxiUserYanker_3_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_6_io_deq_valid),
		.m_axi_r_bits_id(_sinkBuffer_6_io_deq_bits_id),
		.m_axi_r_bits_data(_sinkBuffer_6_io_deq_bits_data),
		.m_axi_r_bits_resp(_sinkBuffer_6_io_deq_bits_resp),
		.m_axi_r_bits_last(_sinkBuffer_6_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_10_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_3_m_axi_aw_valid),
		.m_axi_aw_bits_id(_AxiUserYanker_3_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_AxiUserYanker_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_size(_AxiUserYanker_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_AxiUserYanker_3_m_axi_aw_bits_burst),
		.m_axi_w_ready(_sourceBuffer_11_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_3_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_AxiUserYanker_3_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_AxiUserYanker_3_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_3_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_7_io_deq_valid),
		.m_axi_b_bits_id(_sinkBuffer_7_io_deq_bits_id)
	);
	Queue2_ReadAddressChannel_2 sourceBuffer_9(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_9_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_3_m_axi_ar_valid),
		.io_enq_bits_id(_AxiUserYanker_3_m_axi_ar_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_3_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_3_m_axi_ar_bits_len),
		.io_enq_bits_size(_AxiUserYanker_3_m_axi_ar_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_3_m_axi_ar_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_3_m_axi_ar_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_3_m_axi_ar_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_3_m_axi_ar_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_3_m_axi_ar_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_3_m_axi_ar_bits_region),
		.io_deq_ready(_protocolConverter_3_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_9_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_9_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_9_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_9_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_9_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_9_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_9_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_9_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_9_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_9_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_9_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_4 sinkBuffer_6(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_6_io_enq_ready),
		.io_enq_valid(_protocolConverter_3_s_axi_r_valid),
		.io_enq_bits_id(_protocolConverter_3_s_axi_r_bits_id),
		.io_enq_bits_data(_protocolConverter_3_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_3_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_3_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_3_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_6_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_6_io_deq_bits_id),
		.io_deq_bits_data(_sinkBuffer_6_io_deq_bits_data),
		.io_deq_bits_resp(_sinkBuffer_6_io_deq_bits_resp),
		.io_deq_bits_last(_sinkBuffer_6_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel_2 sourceBuffer_10(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_10_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_3_m_axi_aw_valid),
		.io_enq_bits_id(_AxiUserYanker_3_m_axi_aw_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_3_m_axi_aw_bits_addr),
		.io_enq_bits_len(8'h00),
		.io_enq_bits_size(_AxiUserYanker_3_m_axi_aw_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_3_m_axi_aw_bits_burst),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_3_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_10_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_10_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_10_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_10_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_10_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_10_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_10_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_10_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_10_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_10_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_10_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_7 sourceBuffer_11(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_11_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_3_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_3_m_axi_w_bits_data),
		.io_enq_bits_strb(_AxiUserYanker_3_m_axi_w_bits_strb),
		.io_enq_bits_last(_AxiUserYanker_3_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_3_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_11_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_11_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_11_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_11_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_13 sinkBuffer_7(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_7_io_enq_ready),
		.io_enq_valid(_protocolConverter_3_s_axi_b_valid),
		.io_enq_bits_id(_protocolConverter_3_s_axi_b_bits_id),
		.io_enq_bits_resp(_protocolConverter_3_s_axi_b_bits_resp),
		.io_deq_ready(_AxiUserYanker_3_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_7_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_7_io_deq_bits_id),
		.io_deq_bits_resp()
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_3_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_3_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_3_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_3_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_3_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_3_m_axi_ar_bits_size),
		.s_axi_ARBURST(_protocolConverter_3_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_protocolConverter_3_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_3_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_3_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_3_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_3_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_3_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_3_s_axi_RVALID),
		.s_axi_RID(_axpbs_3_s_axi_RID),
		.s_axi_RDATA(_axpbs_3_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_3_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_3_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_3_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_3_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_3_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_3_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_3_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_3_m_axi_aw_bits_size),
		.s_axi_AWBURST(_protocolConverter_3_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_protocolConverter_3_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_3_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_3_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_3_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_3_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_3_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_3_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_3_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_3_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_3_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_3_s_axi_BVALID),
		.s_axi_BID(_axpbs_3_s_axi_BID),
		.s_axi_BRESP(_axpbs_3_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_03_ARREADY),
		.m_axi_ARVALID(m_axi_03_ARVALID),
		.m_axi_ARID(m_axi_03_ARID),
		.m_axi_ARADDR(m_axi_03_ARADDR),
		.m_axi_ARLEN(m_axi_03_ARLEN),
		.m_axi_ARSIZE(m_axi_03_ARSIZE),
		.m_axi_ARBURST(m_axi_03_ARBURST),
		.m_axi_ARLOCK(m_axi_03_ARLOCK),
		.m_axi_ARCACHE(m_axi_03_ARCACHE),
		.m_axi_ARPROT(m_axi_03_ARPROT),
		.m_axi_ARQOS(m_axi_03_ARQOS),
		.m_axi_ARREGION(m_axi_03_ARREGION),
		.m_axi_RREADY(m_axi_03_RREADY),
		.m_axi_RVALID(m_axi_03_RVALID),
		.m_axi_RID(m_axi_03_RID),
		.m_axi_RDATA(m_axi_03_RDATA),
		.m_axi_RRESP(m_axi_03_RRESP),
		.m_axi_AWREADY(m_axi_03_AWREADY),
		.m_axi_AWVALID(m_axi_03_AWVALID),
		.m_axi_AWID(m_axi_03_AWID),
		.m_axi_AWADDR(m_axi_03_AWADDR),
		.m_axi_AWLEN(m_axi_03_AWLEN),
		.m_axi_AWSIZE(m_axi_03_AWSIZE),
		.m_axi_AWBURST(m_axi_03_AWBURST),
		.m_axi_AWLOCK(m_axi_03_AWLOCK),
		.m_axi_AWCACHE(m_axi_03_AWCACHE),
		.m_axi_AWPROT(m_axi_03_AWPROT),
		.m_axi_AWQOS(m_axi_03_AWQOS),
		.m_axi_AWREGION(m_axi_03_AWREGION),
		.m_axi_WREADY(m_axi_03_WREADY),
		.m_axi_WVALID(m_axi_03_WVALID),
		.m_axi_WDATA(m_axi_03_WDATA),
		.m_axi_WSTRB(m_axi_03_WSTRB),
		.m_axi_WLAST(m_axi_03_WLAST),
		.m_axi_BREADY(m_axi_03_BREADY),
		.m_axi_BVALID(m_axi_03_BVALID),
		.m_axi_BID(m_axi_03_BID),
		.m_axi_BRESP(m_axi_03_BRESP)
	);
	ProtocolConverter_2 protocolConverter_4(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_4_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_12_io_deq_valid),
		.s_axi_ar_bits_id(_sourceBuffer_12_io_deq_bits_id),
		.s_axi_ar_bits_addr(_sourceBuffer_12_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_12_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_12_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_12_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_12_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_12_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_12_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_12_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_12_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_8_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_4_s_axi_r_valid),
		.s_axi_r_bits_id(_protocolConverter_4_s_axi_r_bits_id),
		.s_axi_r_bits_data(_protocolConverter_4_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_4_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_4_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_4_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_13_io_deq_valid),
		.s_axi_aw_bits_id(_sourceBuffer_13_io_deq_bits_id),
		.s_axi_aw_bits_addr(_sourceBuffer_13_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_13_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_13_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_13_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_13_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_13_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_13_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_13_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_13_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_4_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_14_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_14_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_14_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_14_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_9_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_4_s_axi_b_valid),
		.m_axi_ar_ready(_axpbs_4_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_4_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_4_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_4_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_4_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_4_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_protocolConverter_4_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_protocolConverter_4_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_4_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_4_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_4_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_4_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_4_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_4_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_4_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_4_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_4_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_4_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_4_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_4_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_4_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_4_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_4_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_4_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_4_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_4_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_4_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_4_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_4_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_4_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_4_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_4_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_4_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_4_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_4_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_4_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_4_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_4_s_axi_BRESP)
	);
	AxiUserYanker_2 AxiUserYanker_4(
		.s_axi_ar_ready(_AxiUserYanker_4_s_axi_ar_ready),
		.s_axi_ar_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_valid),
		.s_axi_ar_bits_addr(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_addr),
		.s_axi_ar_bits_len(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_len),
		.s_axi_ar_bits_size(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_size),
		.s_axi_ar_bits_burst(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_burst),
		.s_axi_ar_bits_lock(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_lock),
		.s_axi_ar_bits_cache(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_cache),
		.s_axi_ar_bits_prot(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_prot),
		.s_axi_ar_bits_qos(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_qos),
		.s_axi_ar_bits_region(_schedulerMap_1_2_io_internal_vss_axi_full_0_ar_bits_region),
		.s_axi_r_ready(_schedulerMap_1_2_io_internal_vss_axi_full_0_r_ready),
		.s_axi_r_valid(_AxiUserYanker_4_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_4_s_axi_r_bits_data),
		.s_axi_aw_ready(_AxiUserYanker_4_s_axi_aw_ready),
		.s_axi_aw_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_valid),
		.s_axi_aw_bits_addr(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_addr),
		.s_axi_aw_bits_len(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_len),
		.s_axi_aw_bits_size(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_size),
		.s_axi_aw_bits_burst(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_burst),
		.s_axi_aw_bits_lock(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_lock),
		.s_axi_aw_bits_cache(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_cache),
		.s_axi_aw_bits_prot(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_prot),
		.s_axi_aw_bits_qos(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_qos),
		.s_axi_aw_bits_region(_schedulerMap_1_2_io_internal_vss_axi_full_0_aw_bits_region),
		.s_axi_w_ready(_AxiUserYanker_4_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_last),
		.s_axi_b_valid(_AxiUserYanker_4_s_axi_b_valid),
		.m_axi_ar_ready(_sourceBuffer_12_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_4_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_AxiUserYanker_4_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_4_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_AxiUserYanker_4_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_AxiUserYanker_4_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_AxiUserYanker_4_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_AxiUserYanker_4_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_AxiUserYanker_4_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_AxiUserYanker_4_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_AxiUserYanker_4_m_axi_ar_bits_region),
		.m_axi_r_ready(_AxiUserYanker_4_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_8_io_deq_valid),
		.m_axi_r_bits_data(_sinkBuffer_8_io_deq_bits_data),
		.m_axi_aw_ready(_sourceBuffer_13_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_4_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_AxiUserYanker_4_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_AxiUserYanker_4_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_AxiUserYanker_4_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_AxiUserYanker_4_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_AxiUserYanker_4_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_AxiUserYanker_4_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_AxiUserYanker_4_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_AxiUserYanker_4_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_AxiUserYanker_4_m_axi_aw_bits_region),
		.m_axi_w_ready(_sourceBuffer_14_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_4_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_4_m_axi_w_bits_data),
		.m_axi_w_bits_last(_AxiUserYanker_4_m_axi_w_bits_last),
		.m_axi_b_valid(_sinkBuffer_9_io_deq_valid)
	);
	Queue2_ReadAddressChannel_9 sourceBuffer_12(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_12_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_4_m_axi_ar_valid),
		.io_enq_bits_id(1'h0),
		.io_enq_bits_addr(_AxiUserYanker_4_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_4_m_axi_ar_bits_len),
		.io_enq_bits_size(_AxiUserYanker_4_m_axi_ar_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_4_m_axi_ar_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_4_m_axi_ar_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_4_m_axi_ar_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_4_m_axi_ar_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_4_m_axi_ar_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_4_m_axi_ar_bits_region),
		.io_deq_ready(_protocolConverter_4_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_12_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_12_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_12_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_12_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_12_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_12_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_12_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_12_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_12_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_12_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_12_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_11 sinkBuffer_8(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_8_io_enq_ready),
		.io_enq_valid(_protocolConverter_4_s_axi_r_valid),
		.io_enq_bits_id(_protocolConverter_4_s_axi_r_bits_id),
		.io_enq_bits_data(_protocolConverter_4_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_4_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_4_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_4_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_8_io_deq_valid),
		.io_deq_bits_id(),
		.io_deq_bits_data(_sinkBuffer_8_io_deq_bits_data),
		.io_deq_bits_resp(),
		.io_deq_bits_last()
	);
	Queue2_WriteAddressChannel_8 sourceBuffer_13(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_13_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_4_m_axi_aw_valid),
		.io_enq_bits_id(1'h0),
		.io_enq_bits_addr(_AxiUserYanker_4_m_axi_aw_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_4_m_axi_aw_bits_len),
		.io_enq_bits_size(_AxiUserYanker_4_m_axi_aw_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_4_m_axi_aw_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_4_m_axi_aw_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_4_m_axi_aw_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_4_m_axi_aw_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_4_m_axi_aw_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_4_m_axi_aw_bits_region),
		.io_deq_ready(_protocolConverter_4_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_13_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_13_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_13_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_13_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_13_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_13_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_13_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_13_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_13_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_13_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_13_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_7 sourceBuffer_14(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_14_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_4_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_4_m_axi_w_bits_data),
		.io_enq_bits_strb(64'hffffffffffffffff),
		.io_enq_bits_last(_AxiUserYanker_4_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_4_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_14_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_14_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_14_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_14_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_9 sinkBuffer_9(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_9_io_enq_ready),
		.io_enq_valid(_protocolConverter_4_s_axi_b_valid),
		.io_deq_ready(1'h1),
		.io_deq_valid(_sinkBuffer_9_io_deq_valid)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_4(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_4_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_4_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_4_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_4_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_4_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_4_m_axi_ar_bits_size),
		.s_axi_ARBURST(_protocolConverter_4_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_protocolConverter_4_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_4_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_4_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_4_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_4_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_4_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_4_s_axi_RVALID),
		.s_axi_RID(_axpbs_4_s_axi_RID),
		.s_axi_RDATA(_axpbs_4_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_4_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_4_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_4_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_4_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_4_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_4_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_4_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_4_m_axi_aw_bits_size),
		.s_axi_AWBURST(_protocolConverter_4_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_protocolConverter_4_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_4_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_4_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_4_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_4_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_4_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_4_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_4_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_4_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_4_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_4_s_axi_BVALID),
		.s_axi_BID(_axpbs_4_s_axi_BID),
		.s_axi_BRESP(_axpbs_4_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_04_ARREADY),
		.m_axi_ARVALID(m_axi_04_ARVALID),
		.m_axi_ARID(m_axi_04_ARID),
		.m_axi_ARADDR(m_axi_04_ARADDR),
		.m_axi_ARLEN(m_axi_04_ARLEN),
		.m_axi_ARSIZE(m_axi_04_ARSIZE),
		.m_axi_ARBURST(m_axi_04_ARBURST),
		.m_axi_ARLOCK(m_axi_04_ARLOCK),
		.m_axi_ARCACHE(m_axi_04_ARCACHE),
		.m_axi_ARPROT(m_axi_04_ARPROT),
		.m_axi_ARQOS(m_axi_04_ARQOS),
		.m_axi_ARREGION(m_axi_04_ARREGION),
		.m_axi_RREADY(m_axi_04_RREADY),
		.m_axi_RVALID(m_axi_04_RVALID),
		.m_axi_RID(m_axi_04_RID),
		.m_axi_RDATA(m_axi_04_RDATA),
		.m_axi_RRESP(m_axi_04_RRESP),
		.m_axi_AWREADY(m_axi_04_AWREADY),
		.m_axi_AWVALID(m_axi_04_AWVALID),
		.m_axi_AWID(m_axi_04_AWID),
		.m_axi_AWADDR(m_axi_04_AWADDR),
		.m_axi_AWLEN(m_axi_04_AWLEN),
		.m_axi_AWSIZE(m_axi_04_AWSIZE),
		.m_axi_AWBURST(m_axi_04_AWBURST),
		.m_axi_AWLOCK(m_axi_04_AWLOCK),
		.m_axi_AWCACHE(m_axi_04_AWCACHE),
		.m_axi_AWPROT(m_axi_04_AWPROT),
		.m_axi_AWQOS(m_axi_04_AWQOS),
		.m_axi_AWREGION(m_axi_04_AWREGION),
		.m_axi_WREADY(m_axi_04_WREADY),
		.m_axi_WVALID(m_axi_04_WVALID),
		.m_axi_WDATA(m_axi_04_WDATA),
		.m_axi_WSTRB(m_axi_04_WSTRB),
		.m_axi_WLAST(m_axi_04_WLAST),
		.m_axi_BREADY(m_axi_04_BREADY),
		.m_axi_BVALID(m_axi_04_BVALID),
		.m_axi_BID(m_axi_04_BID),
		.m_axi_BRESP(m_axi_04_BRESP)
	);
	ProtocolConverter_3 protocolConverter_5(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_5_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_15_io_deq_valid),
		.s_axi_ar_bits_id(_sourceBuffer_15_io_deq_bits_id),
		.s_axi_ar_bits_addr(_sourceBuffer_15_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_15_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_15_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_15_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_15_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_15_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_15_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_15_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_15_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_10_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_5_s_axi_r_valid),
		.s_axi_r_bits_id(_protocolConverter_5_s_axi_r_bits_id),
		.s_axi_r_bits_data(_protocolConverter_5_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_5_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_5_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_5_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_16_io_deq_valid),
		.s_axi_aw_bits_id(_sourceBuffer_16_io_deq_bits_id),
		.s_axi_aw_bits_addr(_sourceBuffer_16_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_16_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_16_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_16_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_16_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_16_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_16_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_16_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_16_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_5_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_17_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_17_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_17_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_17_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_11_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_5_s_axi_b_valid),
		.s_axi_b_bits_id(_protocolConverter_5_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_protocolConverter_5_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_5_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_5_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_5_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_5_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_5_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_5_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_protocolConverter_5_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_protocolConverter_5_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_5_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_5_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_5_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_5_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_5_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_5_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_5_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_5_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_5_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_5_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_5_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_5_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_5_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_5_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_5_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_5_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_5_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_5_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_5_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_5_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_5_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_5_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_5_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_5_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_5_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_5_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_5_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_5_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_5_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_5_s_axi_BRESP)
	);
	AxiUserYanker_3 AxiUserYanker_5(
		.s_axi_ar_ready(_AxiUserYanker_5_s_axi_ar_ready),
		.s_axi_ar_valid(_notifierMap_0_2_axi_full_argRoute_1_ar_valid),
		.s_axi_ar_bits_id(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_id),
		.s_axi_ar_bits_addr(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_addr),
		.s_axi_ar_bits_len(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_len),
		.s_axi_ar_bits_size(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_size),
		.s_axi_ar_bits_burst(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_burst),
		.s_axi_ar_bits_lock(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_lock),
		.s_axi_ar_bits_cache(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_cache),
		.s_axi_ar_bits_prot(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_prot),
		.s_axi_ar_bits_qos(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_qos),
		.s_axi_ar_bits_region(_notifierMap_0_2_axi_full_argRoute_1_ar_bits_region),
		.s_axi_r_ready(_notifierMap_0_2_axi_full_argRoute_1_r_ready),
		.s_axi_r_valid(_AxiUserYanker_5_s_axi_r_valid),
		.s_axi_r_bits_id(),
		.s_axi_r_bits_data(_AxiUserYanker_5_s_axi_r_bits_data),
		.s_axi_r_bits_resp(),
		.s_axi_r_bits_last(),
		.s_axi_aw_ready(),
		.s_axi_aw_valid(1'h0),
		.s_axi_aw_bits_id(2'h0),
		.s_axi_aw_bits_addr(64'h0000000000000000),
		.s_axi_aw_bits_size(3'h0),
		.s_axi_aw_bits_burst(2'h0),
		.s_axi_w_ready(),
		.s_axi_w_valid(1'h0),
		.s_axi_w_bits_data(512'h0),
		.s_axi_w_bits_strb(64'h0000000000000000),
		.s_axi_w_bits_last(1'h0),
		.s_axi_b_ready(1'h0),
		.s_axi_b_valid(),
		.s_axi_b_bits_id(),
		.m_axi_ar_ready(_sourceBuffer_15_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_5_m_axi_ar_valid),
		.m_axi_ar_bits_id(_AxiUserYanker_5_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_AxiUserYanker_5_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_5_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_AxiUserYanker_5_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_AxiUserYanker_5_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_AxiUserYanker_5_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_AxiUserYanker_5_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_AxiUserYanker_5_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_AxiUserYanker_5_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_AxiUserYanker_5_m_axi_ar_bits_region),
		.m_axi_r_ready(_AxiUserYanker_5_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_10_io_deq_valid),
		.m_axi_r_bits_id(_sinkBuffer_10_io_deq_bits_id),
		.m_axi_r_bits_data(_sinkBuffer_10_io_deq_bits_data),
		.m_axi_r_bits_resp(_sinkBuffer_10_io_deq_bits_resp),
		.m_axi_r_bits_last(_sinkBuffer_10_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_16_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_5_m_axi_aw_valid),
		.m_axi_aw_bits_id(_AxiUserYanker_5_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_AxiUserYanker_5_m_axi_aw_bits_addr),
		.m_axi_aw_bits_size(_AxiUserYanker_5_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_AxiUserYanker_5_m_axi_aw_bits_burst),
		.m_axi_w_ready(_sourceBuffer_17_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_5_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_5_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_AxiUserYanker_5_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_AxiUserYanker_5_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_5_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_11_io_deq_valid),
		.m_axi_b_bits_id(_sinkBuffer_11_io_deq_bits_id)
	);
	Queue2_ReadAddressChannel_2 sourceBuffer_15(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_15_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_5_m_axi_ar_valid),
		.io_enq_bits_id(_AxiUserYanker_5_m_axi_ar_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_5_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_5_m_axi_ar_bits_len),
		.io_enq_bits_size(_AxiUserYanker_5_m_axi_ar_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_5_m_axi_ar_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_5_m_axi_ar_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_5_m_axi_ar_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_5_m_axi_ar_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_5_m_axi_ar_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_5_m_axi_ar_bits_region),
		.io_deq_ready(_protocolConverter_5_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_15_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_15_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_15_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_15_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_15_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_15_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_15_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_15_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_15_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_15_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_15_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_4 sinkBuffer_10(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_10_io_enq_ready),
		.io_enq_valid(_protocolConverter_5_s_axi_r_valid),
		.io_enq_bits_id(_protocolConverter_5_s_axi_r_bits_id),
		.io_enq_bits_data(_protocolConverter_5_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_5_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_5_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_5_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_10_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_10_io_deq_bits_id),
		.io_deq_bits_data(_sinkBuffer_10_io_deq_bits_data),
		.io_deq_bits_resp(_sinkBuffer_10_io_deq_bits_resp),
		.io_deq_bits_last(_sinkBuffer_10_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel_2 sourceBuffer_16(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_16_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_5_m_axi_aw_valid),
		.io_enq_bits_id(_AxiUserYanker_5_m_axi_aw_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_5_m_axi_aw_bits_addr),
		.io_enq_bits_len(8'h00),
		.io_enq_bits_size(_AxiUserYanker_5_m_axi_aw_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_5_m_axi_aw_bits_burst),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_5_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_16_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_16_io_deq_bits_id),
		.io_deq_bits_addr(_sourceBuffer_16_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_16_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_16_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_16_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_16_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_16_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_16_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_16_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_16_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_7 sourceBuffer_17(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_17_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_5_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_5_m_axi_w_bits_data),
		.io_enq_bits_strb(_AxiUserYanker_5_m_axi_w_bits_strb),
		.io_enq_bits_last(_AxiUserYanker_5_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_5_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_17_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_17_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_17_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_17_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_13 sinkBuffer_11(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_11_io_enq_ready),
		.io_enq_valid(_protocolConverter_5_s_axi_b_valid),
		.io_enq_bits_id(_protocolConverter_5_s_axi_b_bits_id),
		.io_enq_bits_resp(_protocolConverter_5_s_axi_b_bits_resp),
		.io_deq_ready(_AxiUserYanker_5_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_11_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_11_io_deq_bits_id),
		.io_deq_bits_resp()
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_5(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_5_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_5_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_5_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_5_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_5_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_5_m_axi_ar_bits_size),
		.s_axi_ARBURST(_protocolConverter_5_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_protocolConverter_5_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_5_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_5_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_5_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_5_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_5_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_5_s_axi_RVALID),
		.s_axi_RID(_axpbs_5_s_axi_RID),
		.s_axi_RDATA(_axpbs_5_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_5_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_5_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_5_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_5_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_5_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_5_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_5_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_5_m_axi_aw_bits_size),
		.s_axi_AWBURST(_protocolConverter_5_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_protocolConverter_5_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_5_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_5_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_5_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_5_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_5_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_5_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_5_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_5_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_5_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_5_s_axi_BVALID),
		.s_axi_BID(_axpbs_5_s_axi_BID),
		.s_axi_BRESP(_axpbs_5_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_05_ARREADY),
		.m_axi_ARVALID(m_axi_05_ARVALID),
		.m_axi_ARID(m_axi_05_ARID),
		.m_axi_ARADDR(m_axi_05_ARADDR),
		.m_axi_ARLEN(m_axi_05_ARLEN),
		.m_axi_ARSIZE(m_axi_05_ARSIZE),
		.m_axi_ARBURST(m_axi_05_ARBURST),
		.m_axi_ARLOCK(m_axi_05_ARLOCK),
		.m_axi_ARCACHE(m_axi_05_ARCACHE),
		.m_axi_ARPROT(m_axi_05_ARPROT),
		.m_axi_ARQOS(m_axi_05_ARQOS),
		.m_axi_ARREGION(m_axi_05_ARREGION),
		.m_axi_RREADY(m_axi_05_RREADY),
		.m_axi_RVALID(m_axi_05_RVALID),
		.m_axi_RID(m_axi_05_RID),
		.m_axi_RDATA(m_axi_05_RDATA),
		.m_axi_RRESP(m_axi_05_RRESP),
		.m_axi_AWREADY(m_axi_05_AWREADY),
		.m_axi_AWVALID(m_axi_05_AWVALID),
		.m_axi_AWID(m_axi_05_AWID),
		.m_axi_AWADDR(m_axi_05_AWADDR),
		.m_axi_AWLEN(m_axi_05_AWLEN),
		.m_axi_AWSIZE(m_axi_05_AWSIZE),
		.m_axi_AWBURST(m_axi_05_AWBURST),
		.m_axi_AWLOCK(m_axi_05_AWLOCK),
		.m_axi_AWCACHE(m_axi_05_AWCACHE),
		.m_axi_AWPROT(m_axi_05_AWPROT),
		.m_axi_AWQOS(m_axi_05_AWQOS),
		.m_axi_AWREGION(m_axi_05_AWREGION),
		.m_axi_WREADY(m_axi_05_WREADY),
		.m_axi_WVALID(m_axi_05_WVALID),
		.m_axi_WDATA(m_axi_05_WDATA),
		.m_axi_WSTRB(m_axi_05_WSTRB),
		.m_axi_WLAST(m_axi_05_WLAST),
		.m_axi_BREADY(m_axi_05_BREADY),
		.m_axi_BVALID(m_axi_05_BVALID),
		.m_axi_BID(m_axi_05_BID),
		.m_axi_BRESP(m_axi_05_BRESP)
	);
	ProtocolConverter_1 protocolConverter_6(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_6_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_18_io_deq_valid),
		.s_axi_ar_bits_addr(_sourceBuffer_18_io_deq_bits_addr),
		.s_axi_ar_bits_len(_sourceBuffer_18_io_deq_bits_len),
		.s_axi_ar_bits_size(_sourceBuffer_18_io_deq_bits_size),
		.s_axi_ar_bits_burst(_sourceBuffer_18_io_deq_bits_burst),
		.s_axi_ar_bits_lock(_sourceBuffer_18_io_deq_bits_lock),
		.s_axi_ar_bits_cache(_sourceBuffer_18_io_deq_bits_cache),
		.s_axi_ar_bits_prot(_sourceBuffer_18_io_deq_bits_prot),
		.s_axi_ar_bits_qos(_sourceBuffer_18_io_deq_bits_qos),
		.s_axi_ar_bits_region(_sourceBuffer_18_io_deq_bits_region),
		.s_axi_r_ready(_sinkBuffer_12_io_enq_ready),
		.s_axi_r_valid(_protocolConverter_6_s_axi_r_valid),
		.s_axi_r_bits_data(_protocolConverter_6_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_6_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_6_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_6_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_19_io_deq_valid),
		.s_axi_aw_bits_addr(_sourceBuffer_19_io_deq_bits_addr),
		.s_axi_aw_bits_len(_sourceBuffer_19_io_deq_bits_len),
		.s_axi_aw_bits_size(_sourceBuffer_19_io_deq_bits_size),
		.s_axi_aw_bits_burst(_sourceBuffer_19_io_deq_bits_burst),
		.s_axi_aw_bits_lock(_sourceBuffer_19_io_deq_bits_lock),
		.s_axi_aw_bits_cache(_sourceBuffer_19_io_deq_bits_cache),
		.s_axi_aw_bits_prot(_sourceBuffer_19_io_deq_bits_prot),
		.s_axi_aw_bits_qos(_sourceBuffer_19_io_deq_bits_qos),
		.s_axi_aw_bits_region(_sourceBuffer_19_io_deq_bits_region),
		.s_axi_w_ready(_protocolConverter_6_s_axi_w_ready),
		.s_axi_w_valid(_sourceBuffer_20_io_deq_valid),
		.s_axi_w_bits_data(_sourceBuffer_20_io_deq_bits_data),
		.s_axi_w_bits_strb(_sourceBuffer_20_io_deq_bits_strb),
		.s_axi_w_bits_last(_sourceBuffer_20_io_deq_bits_last),
		.s_axi_b_ready(_sinkBuffer_13_io_enq_ready),
		.s_axi_b_valid(_protocolConverter_6_s_axi_b_valid),
		.s_axi_b_bits_resp(_protocolConverter_6_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_6_s_axi_ARREADY),
		.m_axi_ar_valid(_protocolConverter_6_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_6_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_6_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_6_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_6_m_axi_ar_bits_size),
		.m_axi_ar_bits_lock(_protocolConverter_6_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_6_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_6_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_6_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_6_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_6_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_6_s_axi_RVALID),
		.m_axi_r_bits_data(_axpbs_6_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_6_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_6_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_6_s_axi_AWREADY),
		.m_axi_aw_valid(_protocolConverter_6_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_6_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_6_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_6_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_6_m_axi_aw_bits_size),
		.m_axi_aw_bits_lock(_protocolConverter_6_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_6_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_6_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_6_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_6_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_6_s_axi_WREADY),
		.m_axi_w_valid(_protocolConverter_6_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_6_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_6_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_6_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_6_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_6_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_6_s_axi_BRESP)
	);
	AxiUserYanker_1 AxiUserYanker_6(
		.s_axi_ar_ready(_AxiUserYanker_6_s_axi_ar_ready),
		.s_axi_ar_valid(_schedulerMap_0_2_spawnerServerAXI_0_ar_valid),
		.s_axi_ar_bits_addr(_schedulerMap_0_2_spawnerServerAXI_0_ar_bits_addr),
		.s_axi_ar_bits_len(_schedulerMap_0_2_spawnerServerAXI_0_ar_bits_len),
		.s_axi_r_ready(_schedulerMap_0_2_spawnerServerAXI_0_r_ready),
		.s_axi_r_valid(_AxiUserYanker_6_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_6_s_axi_r_bits_data),
		.s_axi_r_bits_last(_AxiUserYanker_6_s_axi_r_bits_last),
		.s_axi_aw_ready(_AxiUserYanker_6_s_axi_aw_ready),
		.s_axi_aw_valid(_schedulerMap_0_2_spawnerServerAXI_0_aw_valid),
		.s_axi_aw_bits_addr(_schedulerMap_0_2_spawnerServerAXI_0_aw_bits_addr),
		.s_axi_aw_bits_len(_schedulerMap_0_2_spawnerServerAXI_0_aw_bits_len),
		.s_axi_w_ready(_AxiUserYanker_6_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_0_2_spawnerServerAXI_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_0_2_spawnerServerAXI_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_0_2_spawnerServerAXI_0_w_bits_last),
		.s_axi_b_ready(_schedulerMap_0_2_spawnerServerAXI_0_b_ready),
		.s_axi_b_valid(_AxiUserYanker_6_s_axi_b_valid),
		.m_axi_ar_ready(_sourceBuffer_18_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_6_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_AxiUserYanker_6_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_6_m_axi_ar_bits_len),
		.m_axi_r_ready(_AxiUserYanker_6_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_12_io_deq_valid),
		.m_axi_r_bits_data(_sinkBuffer_12_io_deq_bits_data),
		.m_axi_r_bits_last(_sinkBuffer_12_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_19_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_6_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_AxiUserYanker_6_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_AxiUserYanker_6_m_axi_aw_bits_len),
		.m_axi_w_ready(_sourceBuffer_20_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_6_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_6_m_axi_w_bits_data),
		.m_axi_w_bits_last(_AxiUserYanker_6_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_6_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_13_io_deq_valid)
	);
	Queue2_ReadAddressChannel sourceBuffer_18(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_18_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_6_m_axi_ar_valid),
		.io_enq_bits_addr(_AxiUserYanker_6_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_6_m_axi_ar_bits_len),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_6_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_18_io_deq_valid),
		.io_deq_bits_addr(_sourceBuffer_18_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_18_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_18_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_18_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_18_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_18_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_18_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_18_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_18_io_deq_bits_region)
	);
	Queue2_ReadDataChannel_9 sinkBuffer_12(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_12_io_enq_ready),
		.io_enq_valid(_protocolConverter_6_s_axi_r_valid),
		.io_enq_bits_data(_protocolConverter_6_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_6_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_6_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_6_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_12_io_deq_valid),
		.io_deq_bits_data(_sinkBuffer_12_io_deq_bits_data),
		.io_deq_bits_resp(),
		.io_deq_bits_last(_sinkBuffer_12_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel sourceBuffer_19(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_19_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_6_m_axi_aw_valid),
		.io_enq_bits_addr(_AxiUserYanker_6_m_axi_aw_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_6_m_axi_aw_bits_len),
		.io_enq_bits_size(3'h6),
		.io_enq_bits_burst(2'h1),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_6_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_19_io_deq_valid),
		.io_deq_bits_addr(_sourceBuffer_19_io_deq_bits_addr),
		.io_deq_bits_len(_sourceBuffer_19_io_deq_bits_len),
		.io_deq_bits_size(_sourceBuffer_19_io_deq_bits_size),
		.io_deq_bits_burst(_sourceBuffer_19_io_deq_bits_burst),
		.io_deq_bits_lock(_sourceBuffer_19_io_deq_bits_lock),
		.io_deq_bits_cache(_sourceBuffer_19_io_deq_bits_cache),
		.io_deq_bits_prot(_sourceBuffer_19_io_deq_bits_prot),
		.io_deq_bits_qos(_sourceBuffer_19_io_deq_bits_qos),
		.io_deq_bits_region(_sourceBuffer_19_io_deq_bits_region)
	);
	Queue2_WriteDataChannel_7 sourceBuffer_20(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_20_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_6_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_6_m_axi_w_bits_data),
		.io_enq_bits_strb(64'hffffffffffffffff),
		.io_enq_bits_last(_AxiUserYanker_6_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_6_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_20_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_20_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_20_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_20_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_7 sinkBuffer_13(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_13_io_enq_ready),
		.io_enq_valid(_protocolConverter_6_s_axi_b_valid),
		.io_enq_bits_resp(_protocolConverter_6_s_axi_b_bits_resp),
		.io_deq_ready(_AxiUserYanker_6_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_13_io_deq_valid),
		.io_deq_bits_resp()
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_6(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_6_s_axi_ARREADY),
		.s_axi_ARVALID(_protocolConverter_6_m_axi_ar_valid),
		.s_axi_ARID(_protocolConverter_6_m_axi_ar_bits_id),
		.s_axi_ARADDR(_protocolConverter_6_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_protocolConverter_6_m_axi_ar_bits_len),
		.s_axi_ARSIZE(_protocolConverter_6_m_axi_ar_bits_size),
		.s_axi_ARBURST(2'h1),
		.s_axi_ARLOCK(_protocolConverter_6_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_protocolConverter_6_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_protocolConverter_6_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_protocolConverter_6_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_protocolConverter_6_m_axi_ar_bits_region),
		.s_axi_RREADY(_protocolConverter_6_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_6_s_axi_RVALID),
		.s_axi_RID(),
		.s_axi_RDATA(_axpbs_6_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_6_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_6_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_6_s_axi_AWREADY),
		.s_axi_AWVALID(_protocolConverter_6_m_axi_aw_valid),
		.s_axi_AWID(_protocolConverter_6_m_axi_aw_bits_id),
		.s_axi_AWADDR(_protocolConverter_6_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_protocolConverter_6_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_protocolConverter_6_m_axi_aw_bits_size),
		.s_axi_AWBURST(2'h1),
		.s_axi_AWLOCK(_protocolConverter_6_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_protocolConverter_6_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_protocolConverter_6_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_protocolConverter_6_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_protocolConverter_6_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_6_s_axi_WREADY),
		.s_axi_WVALID(_protocolConverter_6_m_axi_w_valid),
		.s_axi_WDATA(_protocolConverter_6_m_axi_w_bits_data),
		.s_axi_WSTRB(_protocolConverter_6_m_axi_w_bits_strb),
		.s_axi_BREADY(_protocolConverter_6_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_6_s_axi_BVALID),
		.s_axi_BID(_axpbs_6_s_axi_BID),
		.s_axi_BRESP(_axpbs_6_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_06_ARREADY),
		.m_axi_ARVALID(m_axi_06_ARVALID),
		.m_axi_ARID(m_axi_06_ARID),
		.m_axi_ARADDR(m_axi_06_ARADDR),
		.m_axi_ARLEN(m_axi_06_ARLEN),
		.m_axi_ARSIZE(m_axi_06_ARSIZE),
		.m_axi_ARBURST(m_axi_06_ARBURST),
		.m_axi_ARLOCK(m_axi_06_ARLOCK),
		.m_axi_ARCACHE(m_axi_06_ARCACHE),
		.m_axi_ARPROT(m_axi_06_ARPROT),
		.m_axi_ARQOS(m_axi_06_ARQOS),
		.m_axi_ARREGION(m_axi_06_ARREGION),
		.m_axi_RREADY(m_axi_06_RREADY),
		.m_axi_RVALID(m_axi_06_RVALID),
		.m_axi_RID(m_axi_06_RID),
		.m_axi_RDATA(m_axi_06_RDATA),
		.m_axi_RRESP(m_axi_06_RRESP),
		.m_axi_AWREADY(m_axi_06_AWREADY),
		.m_axi_AWVALID(m_axi_06_AWVALID),
		.m_axi_AWID(m_axi_06_AWID),
		.m_axi_AWADDR(m_axi_06_AWADDR),
		.m_axi_AWLEN(m_axi_06_AWLEN),
		.m_axi_AWSIZE(m_axi_06_AWSIZE),
		.m_axi_AWBURST(m_axi_06_AWBURST),
		.m_axi_AWLOCK(m_axi_06_AWLOCK),
		.m_axi_AWCACHE(m_axi_06_AWCACHE),
		.m_axi_AWPROT(m_axi_06_AWPROT),
		.m_axi_AWQOS(m_axi_06_AWQOS),
		.m_axi_AWREGION(m_axi_06_AWREGION),
		.m_axi_WREADY(m_axi_06_WREADY),
		.m_axi_WVALID(m_axi_06_WVALID),
		.m_axi_WDATA(m_axi_06_WDATA),
		.m_axi_WSTRB(m_axi_06_WSTRB),
		.m_axi_WLAST(m_axi_06_WLAST),
		.m_axi_BREADY(m_axi_06_BREADY),
		.m_axi_BVALID(m_axi_06_BVALID),
		.m_axi_BID(m_axi_06_BID),
		.m_axi_BRESP(m_axi_06_BRESP)
	);
	assign paused = _schedulerMap_0_2_io_paused | _schedulerMap_1_2_io_paused;
endmodule

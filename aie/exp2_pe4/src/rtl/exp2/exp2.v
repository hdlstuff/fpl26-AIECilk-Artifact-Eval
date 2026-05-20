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
	input [127:0] io_taskIn;
	output wire [127:0] io_taskOut;
	input io_validIn;
	output wire io_validOut;
	input io_connSS_availableTask_ready;
	output wire io_connSS_availableTask_valid;
	output wire [127:0] io_connSS_availableTask_bits;
	output wire io_connSS_qOutTask_ready;
	input io_connSS_qOutTask_valid;
	input [127:0] io_connSS_qOutTask_bits;
	output wire io_occupied;
	reg [127:0] taskReg;
	reg validReg;
	wire io_connSS_availableTask_valid_0 = io_connSS_availableTask_ready & io_validIn;
	wire _GEN = io_connSS_qOutTask_valid & ~io_validIn;
	always @(posedge clock)
		if (reset) begin
			taskReg <= 128'h00000000000000000000000000000000;
			validReg <= 1'h0;
		end
		else begin
			taskReg <= (io_connSS_availableTask_valid_0 ? 128'h00000000000000000000000000000000 : (_GEN ? io_connSS_qOutTask_bits : (io_validIn ? io_taskIn : 128'h00000000000000000000000000000000)));
			validReg <= ~io_connSS_availableTask_valid_0 & (_GEN | io_validIn);
		end
	assign io_taskOut = taskReg;
	assign io_validOut = validReg;
	assign io_connSS_availableTask_valid = io_connSS_availableTask_valid_0;
	assign io_connSS_availableTask_bits = (io_connSS_availableTask_valid_0 ? io_taskIn : 128'h00000000000000000000000000000000);
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
	io_connSS_1_ctrl_stealReq_valid,
	io_connSS_1_ctrl_stealReq_ready,
	io_connSS_1_data_availableTask_ready,
	io_connSS_1_data_availableTask_valid,
	io_connSS_1_data_availableTask_bits,
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
	io_connSS_3_ctrl_serveStealReq_valid,
	io_connSS_3_ctrl_serveStealReq_ready,
	io_connSS_3_ctrl_stealReq_valid,
	io_connSS_3_ctrl_stealReq_ready,
	io_connSS_3_data_availableTask_ready,
	io_connSS_3_data_availableTask_valid,
	io_connSS_3_data_availableTask_bits,
	io_connSS_3_data_qOutTask_ready,
	io_connSS_3_data_qOutTask_valid,
	io_connSS_3_data_qOutTask_bits,
	io_connSS_4_ctrl_serveStealReq_valid,
	io_connSS_4_ctrl_serveStealReq_ready,
	io_connSS_4_ctrl_stealReq_valid,
	io_connSS_4_ctrl_stealReq_ready,
	io_connSS_4_data_availableTask_ready,
	io_connSS_4_data_availableTask_valid,
	io_connSS_4_data_availableTask_bits,
	io_connSS_4_data_qOutTask_ready,
	io_connSS_4_data_qOutTask_valid,
	io_connSS_4_data_qOutTask_bits,
	io_ntwDataUnitOccupancyVSS_0
);
	input clock;
	input reset;
	input io_connSS_0_ctrl_serveStealReq_valid;
	output wire io_connSS_0_ctrl_serveStealReq_ready;
	input io_connSS_0_data_availableTask_ready;
	output wire io_connSS_0_data_availableTask_valid;
	output wire [127:0] io_connSS_0_data_availableTask_bits;
	output wire io_connSS_0_data_qOutTask_ready;
	input io_connSS_0_data_qOutTask_valid;
	input [127:0] io_connSS_0_data_qOutTask_bits;
	input io_connSS_1_ctrl_serveStealReq_valid;
	output wire io_connSS_1_ctrl_serveStealReq_ready;
	input io_connSS_1_ctrl_stealReq_valid;
	output wire io_connSS_1_ctrl_stealReq_ready;
	input io_connSS_1_data_availableTask_ready;
	output wire io_connSS_1_data_availableTask_valid;
	output wire [127:0] io_connSS_1_data_availableTask_bits;
	output wire io_connSS_1_data_qOutTask_ready;
	input io_connSS_1_data_qOutTask_valid;
	input [127:0] io_connSS_1_data_qOutTask_bits;
	input io_connSS_2_ctrl_serveStealReq_valid;
	output wire io_connSS_2_ctrl_serveStealReq_ready;
	input io_connSS_2_ctrl_stealReq_valid;
	output wire io_connSS_2_ctrl_stealReq_ready;
	input io_connSS_2_data_availableTask_ready;
	output wire io_connSS_2_data_availableTask_valid;
	output wire [127:0] io_connSS_2_data_availableTask_bits;
	output wire io_connSS_2_data_qOutTask_ready;
	input io_connSS_2_data_qOutTask_valid;
	input [127:0] io_connSS_2_data_qOutTask_bits;
	input io_connSS_3_ctrl_serveStealReq_valid;
	output wire io_connSS_3_ctrl_serveStealReq_ready;
	input io_connSS_3_ctrl_stealReq_valid;
	output wire io_connSS_3_ctrl_stealReq_ready;
	input io_connSS_3_data_availableTask_ready;
	output wire io_connSS_3_data_availableTask_valid;
	output wire [127:0] io_connSS_3_data_availableTask_bits;
	output wire io_connSS_3_data_qOutTask_ready;
	input io_connSS_3_data_qOutTask_valid;
	input [127:0] io_connSS_3_data_qOutTask_bits;
	input io_connSS_4_ctrl_serveStealReq_valid;
	output wire io_connSS_4_ctrl_serveStealReq_ready;
	input io_connSS_4_ctrl_stealReq_valid;
	output wire io_connSS_4_ctrl_stealReq_ready;
	input io_connSS_4_data_availableTask_ready;
	output wire io_connSS_4_data_availableTask_valid;
	output wire [127:0] io_connSS_4_data_availableTask_bits;
	output wire io_connSS_4_data_qOutTask_ready;
	input io_connSS_4_data_qOutTask_valid;
	input [127:0] io_connSS_4_data_qOutTask_bits;
	output wire io_ntwDataUnitOccupancyVSS_0;
	wire _ctrlunits_4_io_reqTaskOut;
	wire _ctrlunits_3_io_reqTaskOut;
	wire _ctrlunits_2_io_reqTaskOut;
	wire _ctrlunits_1_io_reqTaskOut;
	wire _ctrlunits_0_io_reqTaskOut;
	wire [127:0] _dataUnits_4_io_taskOut;
	wire _dataUnits_4_io_validOut;
	wire [127:0] _dataUnits_3_io_taskOut;
	wire _dataUnits_3_io_validOut;
	wire [127:0] _dataUnits_2_io_taskOut;
	wire _dataUnits_2_io_validOut;
	wire [127:0] _dataUnits_1_io_taskOut;
	wire _dataUnits_1_io_validOut;
	wire [127:0] _dataUnits_0_io_taskOut;
	wire _dataUnits_0_io_validOut;
	SchedulerNetworkDataUnit dataUnits_0(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_4_io_taskOut),
		.io_taskOut(_dataUnits_0_io_taskOut),
		.io_validIn(_dataUnits_4_io_validOut),
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
		.io_connSS_availableTask_ready(io_connSS_1_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_1_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_1_data_availableTask_bits),
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
	SchedulerNetworkDataUnit dataUnits_3(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_2_io_taskOut),
		.io_taskOut(_dataUnits_3_io_taskOut),
		.io_validIn(_dataUnits_2_io_validOut),
		.io_validOut(_dataUnits_3_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_3_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_3_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_3_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_3_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_3_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_3_data_qOutTask_bits),
		.io_occupied()
	);
	SchedulerNetworkDataUnit dataUnits_4(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_3_io_taskOut),
		.io_taskOut(_dataUnits_4_io_taskOut),
		.io_validIn(_dataUnits_3_io_validOut),
		.io_validOut(_dataUnits_4_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_4_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_4_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_4_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_4_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_4_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_4_data_qOutTask_bits),
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
		.io_connSS_stealReq_valid(io_connSS_1_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_1_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_2(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_3_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_2_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_2_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_2_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_2_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_2_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_3(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_4_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_3_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_3_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_3_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_3_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_3_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_4(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_0_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_4_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_4_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_4_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_4_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_4_ctrl_stealReq_ready)
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
	input [127:0] io_connNetwork_data_availableTask_bits;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [127:0] io_connNetwork_data_qOutTask_bits;
	input [6:0] io_connQ_currLength;
	input io_connQ_push_ready;
	output wire io_connQ_push_valid;
	output wire [127:0] io_connQ_push_bits;
	output wire io_connQ_pop_ready;
	input io_connQ_pop_valid;
	input [127:0] io_connQ_pop_bits;
	reg [2:0] stateReg;
	reg [127:0] stolenTaskReg;
	reg [127:0] giveTaskReg;
	reg [1:0] taskRequestCount;
	reg [31:0] tasksGivenAwayCount;
	reg [31:0] requestKilledCount;
	reg [31:0] requestFullCount;
	wire _GEN = stateReg == 3'h0;
	wire _GEN_0 = stateReg == 3'h1;
	wire _GEN_1 = io_connNetwork_ctrl_stealReq_ready & (taskRequestCount == 2'h1);
	wire _GEN_2 = io_connNetwork_ctrl_stealReq_ready & (taskRequestCount == 2'h2);
	wire _GEN_3 = _GEN_2 | (|io_connQ_currLength[6:3]);
	wire _GEN_4 = _GEN_1 | _GEN_3;
	wire _GEN_5 = stateReg == 3'h2;
	wire _GEN_6 = _GEN | _GEN_0;
	wire _GEN_7 = stateReg == 3'h3;
	wire _GEN_8 = (_GEN | _GEN_0) | _GEN_5;
	wire _GEN_9 = stateReg == 3'h4;
	wire _GEN_10 = stateReg == 3'h5;
	wire _GEN_11 = _GEN_7 | _GEN_9;
	wire _GEN_12 = _GEN_5 | _GEN_11;
	wire _GEN_13 = (_GEN | _GEN_0) | _GEN_12;
	wire _GEN_14 = stateReg == 3'h6;
	wire _GEN_15 = ((_GEN_5 | _GEN_7) | _GEN_9) | _GEN_10;
	always @(posedge clock)
		if (reset) begin
			stateReg <= 3'h0;
			stolenTaskReg <= 128'h00000000000000000000000000000000;
			giveTaskReg <= 128'h00000000000000000000000000000000;
			taskRequestCount <= 2'h1;
			tasksGivenAwayCount <= 32'h00000000;
			requestKilledCount <= 32'h00000005;
			requestFullCount <= 32'h00000005;
		end
		else begin : sv2v_autoblock_1
			reg _GEN_16;
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
			_GEN_17 = io_connQ_currLength > 7'h2c;
			_GEN_21 = (_GEN_12 | ~(_GEN_10 & io_connNetwork_data_qOutTask_ready) ? tasksGivenAwayCount : tasksGivenAwayCount + 32'h00000001);
			_GEN_28 = {_GEN_21, _GEN_21, _GEN_21, tasksGivenAwayCount, tasksGivenAwayCount, tasksGivenAwayCount, (_GEN_4 | ~(|tasksGivenAwayCount) ? tasksGivenAwayCount : tasksGivenAwayCount - 32'h00000001), tasksGivenAwayCount};
			_GEN_16 = io_connQ_currLength < 7'h08;
			_GEN_18 = requestKilledCount == 32'h00000000;
			_GEN_19 = io_connQ_currLength > 7'h2b;
			_GEN_20 = io_connQ_currLength == 7'h00;
			_GEN_22 = _GEN_17 | (io_connNetwork_ctrl_serveStealReq_ready & |io_connQ_currLength[6:3]);
			_GEN_23 = _GEN_16 & io_connNetwork_ctrl_serveStealReq_ready;
			_GEN_24 = _GEN_23 | _GEN_16;
			_GEN_25 = ((_GEN_15 | ~_GEN_14) | _GEN_22 ? taskRequestCount : (_GEN_23 ? 2'h2 : (_GEN_16 ? 2'h1 : taskRequestCount)));
			_GEN_26 = {stateReg, (_GEN_22 ? 3'h4 : (_GEN_24 ? 3'h1 : 3'h6)), (io_connNetwork_data_qOutTask_ready ? 3'h0 : (_GEN_16 ? 3'h3 : 3'h5)), (io_connQ_pop_valid ? 3'h5 : (_GEN_20 ? 3'h1 : 3'h4)), (io_connQ_push_ready ? 3'h0 : (_GEN_19 ? 3'h5 : 3'h3)), (io_connNetwork_data_availableTask_valid ? 3'h3 : (|io_connQ_currLength[6:3] ? 3'h0 : (_GEN_18 ? 3'h1 : 3'h2))), (_GEN_1 ? 3'h2 : (_GEN_2 ? 3'h1 : (|io_connQ_currLength[6:3] ? 3'h6 : (|tasksGivenAwayCount | (requestFullCount == 32'h00000000) ? 3'h2 : 3'h1)))), (_GEN_16 ? 3'h1 : (_GEN_17 ? 3'h4 : (io_connQ_currLength > 7'h08 ? 3'h6 : 3'h0)))};
			stateReg <= _GEN_26[stateReg * 3+:3];
			if (~_GEN_6) begin
				if (_GEN_5) begin
					if (io_connNetwork_data_availableTask_valid)
						stolenTaskReg <= io_connNetwork_data_availableTask_bits;
				end
				else if (((_GEN_11 | ~_GEN_10) | io_connNetwork_data_qOutTask_ready) | ~_GEN_16)
					;
				else
					stolenTaskReg <= giveTaskReg;
			end
			if (~_GEN_8) begin
				if (_GEN_7) begin
					if (io_connQ_push_ready | ~_GEN_19)
						;
					else
						giveTaskReg <= stolenTaskReg;
				end
				else if (_GEN_9 & io_connQ_pop_valid)
					giveTaskReg <= io_connQ_pop_bits;
			end
			_GEN_27 = {_GEN_25, _GEN_25, taskRequestCount, taskRequestCount, taskRequestCount, taskRequestCount, (_GEN_1 | ~_GEN_2 ? taskRequestCount : 2'h1), taskRequestCount};
			taskRequestCount <= _GEN_27[stateReg * 2+:2];
			tasksGivenAwayCount <= _GEN_28[stateReg * 32+:32];
			if (_GEN) begin
				if (_GEN_16)
					requestFullCount <= 32'h00000005;
			end
			else if (_GEN_0) begin
				if (_GEN_1 | ~(_GEN_3 | ~(|tasksGivenAwayCount)))
					requestKilledCount <= 32'h00000005;
				if (io_connNetwork_ctrl_serveStealReq_ready)
					requestFullCount <= requestFullCount - 32'h00000001;
				else
					requestFullCount <= 32'h00000005;
			end
			else begin
				if (_GEN_5) begin
					if (io_connNetwork_ctrl_serveStealReq_ready)
						requestKilledCount <= 32'h00000005;
					else
						requestKilledCount <= requestKilledCount - 32'h00000001;
				end
				if ((_GEN_5 ? (io_connNetwork_data_availableTask_valid | (|io_connQ_currLength[6:3])) | ~_GEN_18 : _GEN_7 | (_GEN_9 ? io_connQ_pop_valid | ~_GEN_20 : ((_GEN_10 | ~_GEN_14) | _GEN_22) | ~_GEN_24)))
					;
				else
					requestFullCount <= 32'h00000005;
			end
		end
	assign io_connNetwork_ctrl_serveStealReq_valid = ~_GEN & (_GEN_0 ? ~_GEN_4 & |tasksGivenAwayCount : ~_GEN_15 & _GEN_14);
	assign io_connNetwork_ctrl_stealReq_valid = ~_GEN & _GEN_0;
	assign io_connNetwork_data_availableTask_ready = ~_GEN_6 & _GEN_5;
	assign io_connNetwork_data_qOutTask_valid = ~_GEN_13 & _GEN_10;
	assign io_connNetwork_data_qOutTask_bits = (_GEN_13 | ~_GEN_10 ? 128'h00000000000000000000000000000000 : giveTaskReg);
	assign io_connQ_push_valid = ~_GEN_8 & _GEN_7;
	assign io_connQ_push_bits = (_GEN_8 | ~_GEN_7 ? 128'h00000000000000000000000000000000 : stolenTaskReg);
	assign io_connQ_pop_ready = ~(((_GEN | _GEN_0) | _GEN_5) | _GEN_7) & _GEN_9;
endmodule
module hw_deque (
	clock,
	reset,
	io_connVec_0_currLength,
	io_connVec_0_push_ready,
	io_connVec_0_push_valid,
	io_connVec_0_push_bits,
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
	output wire io_connVec_0_push_ready;
	input io_connVec_0_push_valid;
	input [127:0] io_connVec_0_push_bits;
	input io_connVec_0_pop_ready;
	output wire io_connVec_0_pop_valid;
	output wire [127:0] io_connVec_0_pop_bits;
	output wire [7:0] io_connVec_1_currLength;
	output wire io_connVec_1_push_ready;
	input io_connVec_1_push_valid;
	input [127:0] io_connVec_1_push_bits;
	input io_connVec_1_pop_ready;
	output wire io_connVec_1_pop_valid;
	output wire [127:0] io_connVec_1_pop_bits;
	wire [127:0] _bramMem_a_dout;
	wire [127:0] _bramMem_b_dout;
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
	wire _GEN_6 = stateRegs_0 == 3'h3;
	wire _GEN_7 = stateRegs_1 == 3'h1;
	wire _GEN_8 = stateRegs_1 == 3'h2;
	wire _GEN_9 = sideReg_1 == 8'h00;
	wire _GEN_10 = stateRegs_1 == 3'h4;
	wire [7:0] _bramMem_io_b_addr_T_6 = sideReg_1 - 8'h01;
	wire _GEN_11 = (_GEN_0 | _GEN_7) | _GEN_8;
	wire _GEN_12 = stateRegs_1 == 3'h3;
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
			reg [23:0] _GEN_13;
			reg [23:0] _GEN_14;
			_GEN_13 = {stateRegs_0, stateRegs_0, stateRegs_0, 6'h00, (readLatency_0 ? 3'h2 : 3'h4), 1'h0, ~writeLatency_0, 1'h1, ((io_connVec_0_pop_ready & |currLen[7:1]) | ((io_connVec_0_pop_ready & _GEN_0) & |currLen) ? 3'h2 : {2'h0, io_connVec_0_push_valid & (currLen < 8'h42)})};
			_GEN_14 = {stateRegs_1, stateRegs_1, stateRegs_1, 6'h00, (readLatency_1 ? 3'h2 : 3'h4), 1'h0, ~writeLatency_1, 1'h1, (io_connVec_1_push_valid & (currLen < 8'h41) ? 3'h1 : {1'h0, (io_connVec_1_pop_ready & |currLen[7:1]) | (((io_connVec_1_pop_ready & ~io_connVec_0_pop_ready) & |currLen) & (stateRegs_0 != 3'h4)), 1'h0})};
			if (~_GEN_5) begin
				if (_GEN_4) begin
					if (_GEN_3)
						sideReg_0 <= 8'h00;
					else
						sideReg_0 <= _bramMem_io_a_addr_T_2;
				end
				else if (_GEN_6) begin
					if (sideReg_0 == 8'h00)
						sideReg_0 <= 8'h41;
					else
						sideReg_0 <= sideReg_0 - 8'h01;
				end
			end
			if (~_GEN_11) begin
				if (_GEN_10) begin
					if (_GEN_9)
						sideReg_1 <= 8'h41;
					else
						sideReg_1 <= _bramMem_io_b_addr_T_6;
				end
				else if (_GEN_12) begin
					if (sideReg_1 == 8'h41)
						sideReg_1 <= 8'h00;
					else
						sideReg_1 <= sideReg_1 + 8'h01;
				end
			end
			readLatency_0 <= (((_GEN | _GEN_1) | ~_GEN_2) | (readLatency_0 - 1'h1)) & readLatency_0;
			readLatency_1 <= (((_GEN_0 | _GEN_7) | ~_GEN_8) | (readLatency_1 - 1'h1)) & readLatency_1;
			writeLatency_0 <= ((_GEN | ~_GEN_1) | (writeLatency_0 - 1'h1)) & writeLatency_0;
			writeLatency_1 <= ((_GEN_0 | ~_GEN_7) | (writeLatency_1 - 1'h1)) & writeLatency_1;
			stateRegs_0 <= _GEN_13[stateRegs_0 * 3+:3];
			stateRegs_1 <= _GEN_14[stateRegs_1 * 3+:3];
		end
	DualPortBRAM #(
		.ADDR(9),
		.DATA(128)
	) bramMem(
		.clk(clock),
		.rst(reset),
		.a_addr((_GEN ? 9'h1ff : (_GEN_1 ? {1'h0, sideReg_0} : (_GEN_2 ? (_GEN_3 ? 9'h000 : {1'h0, sideReg_0 + 8'h01}) : (_GEN_4 ? (_GEN_3 ? 9'h000 : {1'h0, _bramMem_io_a_addr_T_2}) : 9'h1ff))))),
		.a_din(io_connVec_0_push_bits),
		.a_wr(~_GEN & _GEN_1),
		.a_dout(_bramMem_a_dout),
		.b_addr((_GEN_0 ? 9'h1ff : (_GEN_7 ? {1'h0, sideReg_1} : (_GEN_8 ? (_GEN_9 ? 9'h041 : {1'h0, sideReg_1 - 8'h01}) : (_GEN_10 ? (_GEN_9 ? 9'h041 : {1'h0, _bramMem_io_b_addr_T_6}) : 9'h1ff))))),
		.b_din(io_connVec_1_push_bits),
		.b_wr(~_GEN_0 & _GEN_7),
		.b_dout(_bramMem_b_dout)
	);
	assign io_connVec_0_currLength = currLen;
	assign io_connVec_0_push_ready = ~(((_GEN | _GEN_1) | _GEN_2) | _GEN_4) & _GEN_6;
	assign io_connVec_0_pop_valid = ~_GEN_5 & _GEN_4;
	assign io_connVec_0_pop_bits = (_GEN_5 | ~_GEN_4 ? 128'h00000000000000000000000000000000 : _bramMem_a_dout);
	assign io_connVec_1_currLength = currLen;
	assign io_connVec_1_push_ready = ~(((_GEN_0 | _GEN_7) | _GEN_8) | _GEN_10) & _GEN_12;
	assign io_connVec_1_pop_valid = ~_GEN_11 & _GEN_10;
	assign io_connVec_1_pop_bits = (_GEN_11 | ~_GEN_10 ? 128'h00000000000000000000000000000000 : _bramMem_b_dout);
endmodule
module SchedulerLocalNetwork (
	clock,
	reset,
	io_connPE_0_push_ready,
	io_connPE_0_push_valid,
	io_connPE_0_push_bits,
	io_connPE_0_pop_ready,
	io_connPE_0_pop_valid,
	io_connPE_0_pop_bits,
	io_connPE_1_push_ready,
	io_connPE_1_push_valid,
	io_connPE_1_push_bits,
	io_connPE_1_pop_ready,
	io_connPE_1_pop_valid,
	io_connPE_1_pop_bits,
	io_connPE_2_push_ready,
	io_connPE_2_push_valid,
	io_connPE_2_push_bits,
	io_connPE_2_pop_ready,
	io_connPE_2_pop_valid,
	io_connPE_2_pop_bits,
	io_connPE_3_push_ready,
	io_connPE_3_push_valid,
	io_connPE_3_push_bits,
	io_connPE_3_pop_ready,
	io_connPE_3_pop_valid,
	io_connPE_3_pop_bits,
	io_connVSS_0_ctrl_serveStealReq_valid,
	io_connVSS_0_ctrl_serveStealReq_ready,
	io_connVSS_0_data_availableTask_ready,
	io_connVSS_0_data_availableTask_valid,
	io_connVSS_0_data_availableTask_bits,
	io_connVSS_0_data_qOutTask_ready,
	io_connVSS_0_data_qOutTask_valid,
	io_connVSS_0_data_qOutTask_bits,
	io_ntwDataUnitOccupancyVSS_0,
	io_lengths_of_hardware_queues_0,
	io_lengths_of_hardware_queues_1,
	io_lengths_of_hardware_queues_2,
	io_lengths_of_hardware_queues_3
);
	input clock;
	input reset;
	output wire io_connPE_0_push_ready;
	input io_connPE_0_push_valid;
	input [127:0] io_connPE_0_push_bits;
	input io_connPE_0_pop_ready;
	output wire io_connPE_0_pop_valid;
	output wire [127:0] io_connPE_0_pop_bits;
	output wire io_connPE_1_push_ready;
	input io_connPE_1_push_valid;
	input [127:0] io_connPE_1_push_bits;
	input io_connPE_1_pop_ready;
	output wire io_connPE_1_pop_valid;
	output wire [127:0] io_connPE_1_pop_bits;
	output wire io_connPE_2_push_ready;
	input io_connPE_2_push_valid;
	input [127:0] io_connPE_2_push_bits;
	input io_connPE_2_pop_ready;
	output wire io_connPE_2_pop_valid;
	output wire [127:0] io_connPE_2_pop_bits;
	output wire io_connPE_3_push_ready;
	input io_connPE_3_push_valid;
	input [127:0] io_connPE_3_push_bits;
	input io_connPE_3_pop_ready;
	output wire io_connPE_3_pop_valid;
	output wire [127:0] io_connPE_3_pop_bits;
	input io_connVSS_0_ctrl_serveStealReq_valid;
	output wire io_connVSS_0_ctrl_serveStealReq_ready;
	input io_connVSS_0_data_availableTask_ready;
	output wire io_connVSS_0_data_availableTask_valid;
	output wire [127:0] io_connVSS_0_data_availableTask_bits;
	output wire io_connVSS_0_data_qOutTask_ready;
	input io_connVSS_0_data_qOutTask_valid;
	input [127:0] io_connVSS_0_data_qOutTask_bits;
	output wire io_ntwDataUnitOccupancyVSS_0;
	output wire [7:0] io_lengths_of_hardware_queues_0;
	output wire [7:0] io_lengths_of_hardware_queues_1;
	output wire [7:0] io_lengths_of_hardware_queues_2;
	output wire [7:0] io_lengths_of_hardware_queues_3;
	wire [7:0] _taskQueues_3_io_connVec_1_currLength;
	wire _taskQueues_3_io_connVec_1_push_ready;
	wire _taskQueues_3_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_3_io_connVec_1_pop_bits;
	wire [7:0] _taskQueues_2_io_connVec_1_currLength;
	wire _taskQueues_2_io_connVec_1_push_ready;
	wire _taskQueues_2_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_2_io_connVec_1_pop_bits;
	wire [7:0] _taskQueues_1_io_connVec_1_currLength;
	wire _taskQueues_1_io_connVec_1_push_ready;
	wire _taskQueues_1_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_1_io_connVec_1_pop_bits;
	wire [7:0] _taskQueues_0_io_connVec_1_currLength;
	wire _taskQueues_0_io_connVec_1_push_ready;
	wire _taskQueues_0_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_0_io_connVec_1_pop_bits;
	wire _stealServers_3_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_3_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_3_io_connNetwork_data_availableTask_ready;
	wire _stealServers_3_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_3_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_3_io_connQ_push_valid;
	wire [127:0] _stealServers_3_io_connQ_push_bits;
	wire _stealServers_3_io_connQ_pop_ready;
	wire _stealServers_2_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_2_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_2_io_connNetwork_data_availableTask_ready;
	wire _stealServers_2_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_2_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_2_io_connQ_push_valid;
	wire [127:0] _stealServers_2_io_connQ_push_bits;
	wire _stealServers_2_io_connQ_pop_ready;
	wire _stealServers_1_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_1_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_1_io_connNetwork_data_availableTask_ready;
	wire _stealServers_1_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_1_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_1_io_connQ_push_valid;
	wire [127:0] _stealServers_1_io_connQ_push_bits;
	wire _stealServers_1_io_connQ_pop_ready;
	wire _stealServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_0_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_0_io_connNetwork_data_availableTask_ready;
	wire _stealServers_0_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_0_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_0_io_connQ_push_valid;
	wire [127:0] _stealServers_0_io_connQ_push_bits;
	wire _stealServers_0_io_connQ_pop_ready;
	wire _stealNet_io_connSS_1_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_1_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_1_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_1_data_availableTask_bits;
	wire _stealNet_io_connSS_1_data_qOutTask_ready;
	wire _stealNet_io_connSS_2_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_2_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_2_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_2_data_availableTask_bits;
	wire _stealNet_io_connSS_2_data_qOutTask_ready;
	wire _stealNet_io_connSS_3_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_3_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_3_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_3_data_availableTask_bits;
	wire _stealNet_io_connSS_3_data_qOutTask_ready;
	wire _stealNet_io_connSS_4_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_4_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_4_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_4_data_availableTask_bits;
	wire _stealNet_io_connSS_4_data_qOutTask_ready;
	SchedulerNetwork stealNet(
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
		.io_connSS_1_ctrl_serveStealReq_valid(_stealServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_1_ctrl_serveStealReq_ready(_stealNet_io_connSS_1_ctrl_serveStealReq_ready),
		.io_connSS_1_ctrl_stealReq_valid(_stealServers_0_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_1_ctrl_stealReq_ready(_stealNet_io_connSS_1_ctrl_stealReq_ready),
		.io_connSS_1_data_availableTask_ready(_stealServers_0_io_connNetwork_data_availableTask_ready),
		.io_connSS_1_data_availableTask_valid(_stealNet_io_connSS_1_data_availableTask_valid),
		.io_connSS_1_data_availableTask_bits(_stealNet_io_connSS_1_data_availableTask_bits),
		.io_connSS_1_data_qOutTask_ready(_stealNet_io_connSS_1_data_qOutTask_ready),
		.io_connSS_1_data_qOutTask_valid(_stealServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connSS_1_data_qOutTask_bits(_stealServers_0_io_connNetwork_data_qOutTask_bits),
		.io_connSS_2_ctrl_serveStealReq_valid(_stealServers_1_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_2_ctrl_serveStealReq_ready(_stealNet_io_connSS_2_ctrl_serveStealReq_ready),
		.io_connSS_2_ctrl_stealReq_valid(_stealServers_1_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_2_ctrl_stealReq_ready(_stealNet_io_connSS_2_ctrl_stealReq_ready),
		.io_connSS_2_data_availableTask_ready(_stealServers_1_io_connNetwork_data_availableTask_ready),
		.io_connSS_2_data_availableTask_valid(_stealNet_io_connSS_2_data_availableTask_valid),
		.io_connSS_2_data_availableTask_bits(_stealNet_io_connSS_2_data_availableTask_bits),
		.io_connSS_2_data_qOutTask_ready(_stealNet_io_connSS_2_data_qOutTask_ready),
		.io_connSS_2_data_qOutTask_valid(_stealServers_1_io_connNetwork_data_qOutTask_valid),
		.io_connSS_2_data_qOutTask_bits(_stealServers_1_io_connNetwork_data_qOutTask_bits),
		.io_connSS_3_ctrl_serveStealReq_valid(_stealServers_2_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_3_ctrl_serveStealReq_ready(_stealNet_io_connSS_3_ctrl_serveStealReq_ready),
		.io_connSS_3_ctrl_stealReq_valid(_stealServers_2_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_3_ctrl_stealReq_ready(_stealNet_io_connSS_3_ctrl_stealReq_ready),
		.io_connSS_3_data_availableTask_ready(_stealServers_2_io_connNetwork_data_availableTask_ready),
		.io_connSS_3_data_availableTask_valid(_stealNet_io_connSS_3_data_availableTask_valid),
		.io_connSS_3_data_availableTask_bits(_stealNet_io_connSS_3_data_availableTask_bits),
		.io_connSS_3_data_qOutTask_ready(_stealNet_io_connSS_3_data_qOutTask_ready),
		.io_connSS_3_data_qOutTask_valid(_stealServers_2_io_connNetwork_data_qOutTask_valid),
		.io_connSS_3_data_qOutTask_bits(_stealServers_2_io_connNetwork_data_qOutTask_bits),
		.io_connSS_4_ctrl_serveStealReq_valid(_stealServers_3_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_4_ctrl_serveStealReq_ready(_stealNet_io_connSS_4_ctrl_serveStealReq_ready),
		.io_connSS_4_ctrl_stealReq_valid(_stealServers_3_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_4_ctrl_stealReq_ready(_stealNet_io_connSS_4_ctrl_stealReq_ready),
		.io_connSS_4_data_availableTask_ready(_stealServers_3_io_connNetwork_data_availableTask_ready),
		.io_connSS_4_data_availableTask_valid(_stealNet_io_connSS_4_data_availableTask_valid),
		.io_connSS_4_data_availableTask_bits(_stealNet_io_connSS_4_data_availableTask_bits),
		.io_connSS_4_data_qOutTask_ready(_stealNet_io_connSS_4_data_qOutTask_ready),
		.io_connSS_4_data_qOutTask_valid(_stealServers_3_io_connNetwork_data_qOutTask_valid),
		.io_connSS_4_data_qOutTask_bits(_stealServers_3_io_connNetwork_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0(io_ntwDataUnitOccupancyVSS_0)
	);
	SchedulerClient stealServers_0(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_1_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_0_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_1_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_0_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_1_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_1_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_1_data_qOutTask_ready),
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
	SchedulerClient stealServers_1(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_1_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_2_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_1_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_2_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_1_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_2_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_2_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_2_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_1_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_1_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_1_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_1_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_1_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_1_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_1_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_1_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_1_io_connVec_1_pop_bits)
	);
	SchedulerClient stealServers_2(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_2_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_3_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_2_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_3_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_2_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_3_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_3_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_3_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_2_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_2_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_2_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_2_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_2_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_2_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_2_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_2_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_2_io_connVec_1_pop_bits)
	);
	SchedulerClient stealServers_3(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_3_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_4_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_3_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_4_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_3_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_4_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_4_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_4_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_3_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_3_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_3_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_3_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_3_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_3_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_3_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_3_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_3_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_0(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_0),
		.io_connVec_0_push_ready(io_connPE_0_push_ready),
		.io_connVec_0_push_valid(io_connPE_0_push_valid),
		.io_connVec_0_push_bits(io_connPE_0_push_bits),
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
	hw_deque taskQueues_1(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_1),
		.io_connVec_0_push_ready(io_connPE_1_push_ready),
		.io_connVec_0_push_valid(io_connPE_1_push_valid),
		.io_connVec_0_push_bits(io_connPE_1_push_bits),
		.io_connVec_0_pop_ready(io_connPE_1_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_1_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_1_pop_bits),
		.io_connVec_1_currLength(_taskQueues_1_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_1_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_1_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_1_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_1_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_1_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_1_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_2(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_2),
		.io_connVec_0_push_ready(io_connPE_2_push_ready),
		.io_connVec_0_push_valid(io_connPE_2_push_valid),
		.io_connVec_0_push_bits(io_connPE_2_push_bits),
		.io_connVec_0_pop_ready(io_connPE_2_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_2_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_2_pop_bits),
		.io_connVec_1_currLength(_taskQueues_2_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_2_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_2_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_2_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_2_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_2_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_2_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_3(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_3),
		.io_connVec_0_push_ready(io_connPE_3_push_ready),
		.io_connVec_0_push_valid(io_connPE_3_push_valid),
		.io_connVec_0_push_bits(io_connPE_3_push_bits),
		.io_connVec_0_pop_ready(io_connPE_3_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_3_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_3_pop_bits),
		.io_connVec_1_currLength(_taskQueues_3_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_3_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_3_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_3_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_3_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_3_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_3_io_connVec_1_pop_bits)
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
module ram_16x128 (
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
	output wire [127:0] R0_data;
	input [3:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [127:0] W0_data;
	reg [127:0] Memory [0:15];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 128'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
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
	input [127:0] io_enq_bits;
	input io_deq_ready;
	output wire [127:0] io_deq_bits;
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
	ram_16x128 ram_ext(
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
	io_lengths_of_hardware_queues_0,
	io_lengths_of_hardware_queues_1,
	io_lengths_of_hardware_queues_2,
	io_lengths_of_hardware_queues_3
);
	input clock;
	input reset;
	output wire io_connNetwork_ctrl_serveStealReq_valid;
	input io_connNetwork_ctrl_serveStealReq_ready;
	output wire io_connNetwork_data_availableTask_ready;
	input io_connNetwork_data_availableTask_valid;
	input [127:0] io_connNetwork_data_availableTask_bits;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [127:0] io_connNetwork_data_qOutTask_bits;
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
	input [127:0] io_read_data_bits;
	output wire [3:0] io_read_burst_len;
	input io_write_address_ready;
	output wire io_write_address_valid;
	output wire [63:0] io_write_address_bits;
	input io_write_data_ready;
	output wire io_write_data_valid;
	output wire [127:0] io_write_data_bits;
	output wire [3:0] io_write_burst_len;
	output wire io_write_last;
	input io_ntwDataUnitOccupancy;
	output wire io_paused;
	input [7:0] io_lengths_of_hardware_queues_0;
	input [7:0] io_lengths_of_hardware_queues_1;
	input [7:0] io_lengths_of_hardware_queues_2;
	input [7:0] io_lengths_of_hardware_queues_3;
	wire _taskQueueBuffer_io_enq_ready;
	wire [127:0] _taskQueueBuffer_io_deq_bits;
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
			reg _GEN_16;
			reg [63:0] _GEN_17;
			reg _GEN_18;
			reg _GEN_19;
			reg _GEN_20;
			reg [63:0] _GEN_21;
			_GEN_13 = contentionCounter > 64'h0000000000000002;
			_GEN_20 = rPause == 64'h0000000000000000;
			_GEN_14 = stateReg == 4'h0;
			_GEN_15 = ((currLen == maxLength) & networkCongested) | (maxLength < (currLen + 64'h0000000000000010));
			_GEN_16 = io_write_data_ready & _GEN_2;
			_GEN_17 = maxLength - 64'h0000000000000001;
			_GEN_18 = _GEN_14 | _GEN_3;
			_GEN_19 = io_read_data_valid & _GEN_2;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h1))
				rAddr <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : rAddr[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : rAddr[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : rAddr[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : rAddr[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : rAddr[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : rAddr[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : rAddr[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : rAddr[7:0])};
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h0))
				rPause <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : rPause[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : rPause[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : rPause[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : rPause[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : rPause[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : rPause[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : rPause[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : rPause[7:0])};
			else if (_GEN_14 & (|procInterrupt | _GEN_15))
				rPause <= 64'hffffffffffffffff;
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h5))
				procInterrupt <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : procInterrupt[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : procInterrupt[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : procInterrupt[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : procInterrupt[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : procInterrupt[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : procInterrupt[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : procInterrupt[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : procInterrupt[7:0])};
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h2))
				maxLength <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : maxLength[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : maxLength[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : maxLength[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : maxLength[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : maxLength[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : maxLength[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : maxLength[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : maxLength[7:0])};
			_GEN_21 = {stateReg, stateReg, stateReg, stateReg, stateReg, (_GEN_20 ? 4'h0 : 4'ha), (_GEN_20 ? 4'h0 : 4'h9), (io_connNetwork_ctrl_serveStealReq_ready ? 4'h7 : (networkCongested | (|procInterrupt) ? 4'h0 : stateReg)), (io_connNetwork_data_qOutTask_ready | networkCongested ? 4'h0 : 4'h7), (io_read_address_ready ? 4'h5 : stateReg), (_GEN_19 ? 4'h8 : stateReg), (io_write_address_ready ? 4'h3 : stateReg), (_GEN_16 ? 4'h0 : stateReg), ((_taskQueueBuffer_io_count == 5'h0f) & io_connNetwork_data_availableTask_valid ? 4'h4 : (io_connNetwork_data_availableTask_valid & networkCongested ? 4'h2 : (networkCongested ? stateReg : 4'h0))), stateReg, (|procInterrupt ? 4'ha : (_GEN_15 ? 4'h9 : (networkCongested & (_taskQueueBuffer_io_count == 5'h10) ? 4'h4 : (networkCongested ? 4'h2 : ((~networkCongested & |currLen) & ~(|_taskQueueBuffer_io_count) ? 4'h6 : (~networkCongested & |_taskQueueBuffer_io_count ? 4'h7 : stateReg))))))};
			stateReg <= _GEN_21[stateReg * 4+:4];
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h6))
				currLen <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : currLen[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : currLen[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : currLen[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : currLen[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : currLen[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : currLen[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : currLen[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : currLen[7:0])};
			else if (~_GEN_18) begin
				if (_GEN_1) begin
					if (_GEN_16)
						currLen <= currLen + 64'h0000000000000001;
					else if (io_write_data_ready)
						currLen <= currLen + 64'h0000000000000001;
				end
				else if (_GEN_4 | ~_GEN_5)
					;
				else if (_GEN_19)
					currLen <= currLen - 64'h0000000000000001;
				else if (io_read_data_valid)
					currLen <= currLen - 64'h0000000000000001;
			end
			if ((~io_connNetwork_ctrl_serveStealReq_ready & io_ntwDataUnitOccupancy) & (contentionCounter != 64'h0000000000000004))
				contentionCounter <= contentionCounter + 64'h0000000000000001;
			else if ((io_connNetwork_ctrl_serveStealReq_ready & |contentionCounter) & ~io_ntwDataUnitOccupancy)
				contentionCounter <= contentionCounter - 64'h0000000000000001;
			networkCongested <= _GEN_13 | (_GEN_13 & networkCongested);
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h3))
				fifoTailReg <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : fifoTailReg[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : fifoTailReg[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : fifoTailReg[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : fifoTailReg[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : fifoTailReg[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : fifoTailReg[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : fifoTailReg[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : fifoTailReg[7:0])};
			else if (_GEN_18 | ~_GEN_1)
				;
			else begin : sv2v_autoblock_2
				reg _GEN_22;
				_GEN_22 = fifoTailReg < _GEN_17;
				if (_GEN_16) begin
					if (_GEN_22)
						fifoTailReg <= fifoTailReg + 64'h0000000000000001;
					else
						fifoTailReg <= 64'h0000000000000000;
				end
				else if (io_write_data_ready) begin
					if (_GEN_22)
						fifoTailReg <= fifoTailReg + 64'h0000000000000001;
					else
						fifoTailReg <= 64'h0000000000000000;
				end
			end
			if (wrReq & (_wrReq__deq_q_io_deq_bits_addr[5:3] == 3'h4))
				fifoHeadReg <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : fifoHeadReg[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : fifoHeadReg[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : fifoHeadReg[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : fifoHeadReg[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : fifoHeadReg[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : fifoHeadReg[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : fifoHeadReg[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : fifoHeadReg[7:0])};
			else if ((_GEN_14 | _GEN_7) | ~_GEN_5)
				;
			else begin : sv2v_autoblock_3
				reg _GEN_23;
				_GEN_23 = fifoHeadReg < _GEN_17;
				if (_GEN_19) begin
					if (_GEN_23)
						fifoHeadReg <= fifoHeadReg + 64'h0000000000000001;
					else
						fifoHeadReg <= 64'h0000000000000000;
				end
				else if (io_read_data_valid) begin
					if (_GEN_23)
						fifoHeadReg <= fifoHeadReg + 64'h0000000000000001;
					else
						fifoHeadReg <= 64'h0000000000000000;
				end
			end
			if (~(_GEN_14 | _GEN)) begin
				if (_GEN_0) begin
					if (io_write_address_ready)
						memDataCounter <= 5'h10;
				end
				else if (_GEN_1) begin
					if (_GEN_16 | ~io_write_data_ready)
						;
					else
						memDataCounter <= memDataCounter - 5'h01;
				end
				else if (_GEN_4) begin
					if (io_read_address_ready)
						memDataCounter <= (currLen < 64'h0000000000000010 ? currLen[4:0] : 5'h10);
				end
				else if ((~_GEN_5 | _GEN_19) | ~io_read_data_valid)
					;
				else
					memDataCounter <= memDataCounter - 5'h01;
			end
			if (wrReq & (&_wrReq__deq_q_io_deq_bits_addr[5:3]))
				queuesUtil <= {(_wrReqData__deq_q_io_deq_bits_strb[7] ? _wrReqData__deq_q_io_deq_bits_data[63:56] : queuesUtil[63:56]), (_wrReqData__deq_q_io_deq_bits_strb[6] ? _wrReqData__deq_q_io_deq_bits_data[55:48] : queuesUtil[55:48]), (_wrReqData__deq_q_io_deq_bits_strb[5] ? _wrReqData__deq_q_io_deq_bits_data[47:40] : queuesUtil[47:40]), (_wrReqData__deq_q_io_deq_bits_strb[4] ? _wrReqData__deq_q_io_deq_bits_data[39:32] : queuesUtil[39:32]), (_wrReqData__deq_q_io_deq_bits_strb[3] ? _wrReqData__deq_q_io_deq_bits_data[31:24] : queuesUtil[31:24]), (_wrReqData__deq_q_io_deq_bits_strb[2] ? _wrReqData__deq_q_io_deq_bits_data[23:16] : queuesUtil[23:16]), (_wrReqData__deq_q_io_deq_bits_strb[1] ? _wrReqData__deq_q_io_deq_bits_data[15:8] : queuesUtil[15:8]), (_wrReqData__deq_q_io_deq_bits_strb[0] ? _wrReqData__deq_q_io_deq_bits_data[7:0] : queuesUtil[7:0])};
			else
				queuesUtil <= {32'h00000000, io_lengths_of_hardware_queues_0, io_lengths_of_hardware_queues_1, io_lengths_of_hardware_queues_2, io_lengths_of_hardware_queues_3};
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
		.io_enq_bits((_GEN ? io_connNetwork_data_availableTask_bits : (_GEN_6 | ~_GEN_5 ? 128'h00000000000000000000000000000000 : io_read_data_bits))),
		.io_deq_ready(~_GEN_3 & (_GEN_1 ? io_write_data_ready : (~_GEN_11 & _GEN_8) & io_connNetwork_data_qOutTask_ready)),
		.io_deq_bits(_taskQueueBuffer_io_deq_bits),
		.io_count(_taskQueueBuffer_io_count)
	);
	assign io_connNetwork_ctrl_serveStealReq_valid = ~(((((_GEN | _GEN_0) | _GEN_1) | _GEN_4) | _GEN_5) | _GEN_8) & (stateReg == 4'h8);
	assign io_connNetwork_data_availableTask_ready = _GEN & _taskQueueBuffer_io_enq_ready;
	assign io_connNetwork_data_qOutTask_valid = ~(((_GEN | _GEN_0) | _GEN_1) | _GEN_11) & _GEN_8;
	assign io_connNetwork_data_qOutTask_bits = _taskQueueBuffer_io_deq_bits;
	assign io_read_address_valid = ~_GEN_9 & _GEN_4;
	assign io_read_address_bits = (_GEN_10 ? 64'h0000000000000000 : {fifoHeadReg[59:0], 4'h0} + rAddr);
	assign io_read_data_ready = ~_GEN_7 & _GEN_5;
	assign io_read_burst_len = (_GEN_10 ? 4'h0 : (currLen < 64'h0000000000000010 ? currLen[3:0] - 4'h1 : 4'hf));
	assign io_write_address_valid = ~_GEN & _GEN_0;
	assign io_write_address_bits = (_GEN | ~_GEN_0 ? 64'h0000000000000000 : {fifoTailReg[59:0], 4'h0} + rAddr);
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
	output wire [127:0] io_read_data_bits;
	output wire io_write_address_ready;
	input io_write_address_valid;
	input [63:0] io_write_address_bits;
	output wire io_write_data_ready;
	input io_write_data_valid;
	input [127:0] io_write_data_bits;
	input [3:0] io_writeBurst_len;
	input io_writeBurst_last;
	input [3:0] io_readBurst_len;
	input axi_ar_ready;
	output wire axi_ar_valid;
	output wire [63:0] axi_ar_bits_addr;
	output wire [7:0] axi_ar_bits_len;
	output wire axi_r_ready;
	input axi_r_valid;
	input [127:0] axi_r_bits_data;
	input axi_aw_ready;
	output wire axi_aw_valid;
	output wire [63:0] axi_aw_bits_addr;
	output wire [7:0] axi_aw_bits_len;
	input axi_w_ready;
	output wire axi_w_valid;
	output wire [127:0] axi_w_bits_data;
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
		.W0_data({21'h00000c, io_enq_bits_len, io_enq_bits_addr})
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
		.W0_data({21'h00000c, io_enq_bits_len, io_enq_bits_addr})
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
	output wire [127:0] s_axi_r_bits_data;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [127:0] s_axi_w_bits_data;
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
	input [127:0] m_axi_r_bits_data;
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
	output wire [127:0] m_axi_w_bits_data;
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
	input [127:0] io_dataIn_TDATA;
	input io_dataOut_TREADY;
	output wire io_dataOut_TVALID;
	output wire [127:0] io_dataOut_TDATA;
	assign io_dataIn_TREADY = io_dataOut_TREADY;
	assign io_dataOut_TVALID = io_dataIn_TVALID;
	assign io_dataOut_TDATA = io_dataIn_TDATA;
endmodule
module Scheduler (
	clock,
	reset,
	io_export_taskOut_0_TREADY,
	io_export_taskOut_0_TVALID,
	io_export_taskOut_0_TDATA,
	io_export_taskOut_1_TREADY,
	io_export_taskOut_1_TVALID,
	io_export_taskOut_1_TDATA,
	io_export_taskOut_2_TREADY,
	io_export_taskOut_2_TVALID,
	io_export_taskOut_2_TDATA,
	io_export_taskOut_3_TREADY,
	io_export_taskOut_3_TVALID,
	io_export_taskOut_3_TDATA,
	io_export_taskIn_0_TREADY,
	io_export_taskIn_0_TVALID,
	io_export_taskIn_0_TDATA,
	io_export_taskIn_1_TREADY,
	io_export_taskIn_1_TVALID,
	io_export_taskIn_1_TDATA,
	io_export_taskIn_2_TREADY,
	io_export_taskIn_2_TVALID,
	io_export_taskIn_2_TDATA,
	io_export_taskIn_3_TREADY,
	io_export_taskIn_3_TVALID,
	io_export_taskIn_3_TDATA,
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
	input io_export_taskOut_0_TREADY;
	output wire io_export_taskOut_0_TVALID;
	output wire [127:0] io_export_taskOut_0_TDATA;
	input io_export_taskOut_1_TREADY;
	output wire io_export_taskOut_1_TVALID;
	output wire [127:0] io_export_taskOut_1_TDATA;
	input io_export_taskOut_2_TREADY;
	output wire io_export_taskOut_2_TVALID;
	output wire [127:0] io_export_taskOut_2_TDATA;
	input io_export_taskOut_3_TREADY;
	output wire io_export_taskOut_3_TVALID;
	output wire [127:0] io_export_taskOut_3_TDATA;
	output wire io_export_taskIn_0_TREADY;
	input io_export_taskIn_0_TVALID;
	input [127:0] io_export_taskIn_0_TDATA;
	output wire io_export_taskIn_1_TREADY;
	input io_export_taskIn_1_TVALID;
	input [127:0] io_export_taskIn_1_TDATA;
	output wire io_export_taskIn_2_TREADY;
	input io_export_taskIn_2_TVALID;
	input [127:0] io_export_taskIn_2_TDATA;
	output wire io_export_taskIn_3_TREADY;
	input io_export_taskIn_3_TVALID;
	input [127:0] io_export_taskIn_3_TDATA;
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
	input [127:0] io_internal_vss_axi_full_0_r_bits_data;
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
	output wire [127:0] io_internal_vss_axi_full_0_w_bits_data;
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
	wire _axis_stream_converters_in_3_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_3_io_dataOut_TDATA;
	wire _axis_stream_converters_in_2_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_2_io_dataOut_TDATA;
	wire _axis_stream_converters_in_1_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_1_io_dataOut_TDATA;
	wire _axis_stream_converters_in_0_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_0_io_dataOut_TDATA;
	wire _axis_stream_converters_out_3_io_dataIn_TREADY;
	wire _axis_stream_converters_out_2_io_dataIn_TREADY;
	wire _axis_stream_converters_out_1_io_dataIn_TREADY;
	wire _axis_stream_converters_out_0_io_dataIn_TREADY;
	wire _module_s_axi_ar_ready;
	wire _module_s_axi_r_valid;
	wire [127:0] _module_s_axi_r_bits_data;
	wire _module_s_axi_aw_ready;
	wire _module_s_axi_w_ready;
	wire _module_s_axi_b_valid;
	wire _vssRvm_0_io_read_address_ready;
	wire _vssRvm_0_io_read_data_valid;
	wire [127:0] _vssRvm_0_io_read_data_bits;
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
	wire [127:0] _vssRvm_0_axi_w_bits_data;
	wire _vssRvm_0_axi_w_bits_last;
	wire _schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _schedulerServers_0_io_connNetwork_data_availableTask_ready;
	wire _schedulerServers_0_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _schedulerServers_0_io_connNetwork_data_qOutTask_bits;
	wire _schedulerServers_0_io_read_address_valid;
	wire [63:0] _schedulerServers_0_io_read_address_bits;
	wire _schedulerServers_0_io_read_data_ready;
	wire [3:0] _schedulerServers_0_io_read_burst_len;
	wire _schedulerServers_0_io_write_address_valid;
	wire [63:0] _schedulerServers_0_io_write_address_bits;
	wire _schedulerServers_0_io_write_data_valid;
	wire [127:0] _schedulerServers_0_io_write_data_bits;
	wire [3:0] _schedulerServers_0_io_write_burst_len;
	wire _schedulerServers_0_io_write_last;
	wire _stealNW_TQ_io_connPE_0_push_ready;
	wire _stealNW_TQ_io_connPE_0_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_0_pop_bits;
	wire _stealNW_TQ_io_connPE_1_push_ready;
	wire _stealNW_TQ_io_connPE_1_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_1_pop_bits;
	wire _stealNW_TQ_io_connPE_2_push_ready;
	wire _stealNW_TQ_io_connPE_2_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_2_pop_bits;
	wire _stealNW_TQ_io_connPE_3_push_ready;
	wire _stealNW_TQ_io_connPE_3_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_3_pop_bits;
	wire _stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVSS_0_data_availableTask_valid;
	wire [127:0] _stealNW_TQ_io_connVSS_0_data_availableTask_bits;
	wire _stealNW_TQ_io_connVSS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_ntwDataUnitOccupancyVSS_0;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_0;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_1;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_2;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_3;
	SchedulerLocalNetwork stealNW_TQ(
		.clock(clock),
		.reset(reset),
		.io_connPE_0_push_ready(_stealNW_TQ_io_connPE_0_push_ready),
		.io_connPE_0_push_valid(_axis_stream_converters_in_0_io_dataOut_TVALID),
		.io_connPE_0_push_bits(_axis_stream_converters_in_0_io_dataOut_TDATA),
		.io_connPE_0_pop_ready(_axis_stream_converters_out_0_io_dataIn_TREADY),
		.io_connPE_0_pop_valid(_stealNW_TQ_io_connPE_0_pop_valid),
		.io_connPE_0_pop_bits(_stealNW_TQ_io_connPE_0_pop_bits),
		.io_connPE_1_push_ready(_stealNW_TQ_io_connPE_1_push_ready),
		.io_connPE_1_push_valid(_axis_stream_converters_in_1_io_dataOut_TVALID),
		.io_connPE_1_push_bits(_axis_stream_converters_in_1_io_dataOut_TDATA),
		.io_connPE_1_pop_ready(_axis_stream_converters_out_1_io_dataIn_TREADY),
		.io_connPE_1_pop_valid(_stealNW_TQ_io_connPE_1_pop_valid),
		.io_connPE_1_pop_bits(_stealNW_TQ_io_connPE_1_pop_bits),
		.io_connPE_2_push_ready(_stealNW_TQ_io_connPE_2_push_ready),
		.io_connPE_2_push_valid(_axis_stream_converters_in_2_io_dataOut_TVALID),
		.io_connPE_2_push_bits(_axis_stream_converters_in_2_io_dataOut_TDATA),
		.io_connPE_2_pop_ready(_axis_stream_converters_out_2_io_dataIn_TREADY),
		.io_connPE_2_pop_valid(_stealNW_TQ_io_connPE_2_pop_valid),
		.io_connPE_2_pop_bits(_stealNW_TQ_io_connPE_2_pop_bits),
		.io_connPE_3_push_ready(_stealNW_TQ_io_connPE_3_push_ready),
		.io_connPE_3_push_valid(_axis_stream_converters_in_3_io_dataOut_TVALID),
		.io_connPE_3_push_bits(_axis_stream_converters_in_3_io_dataOut_TDATA),
		.io_connPE_3_pop_ready(_axis_stream_converters_out_3_io_dataIn_TREADY),
		.io_connPE_3_pop_valid(_stealNW_TQ_io_connPE_3_pop_valid),
		.io_connPE_3_pop_bits(_stealNW_TQ_io_connPE_3_pop_bits),
		.io_connVSS_0_ctrl_serveStealReq_valid(_schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connVSS_0_ctrl_serveStealReq_ready(_stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready),
		.io_connVSS_0_data_availableTask_ready(_schedulerServers_0_io_connNetwork_data_availableTask_ready),
		.io_connVSS_0_data_availableTask_valid(_stealNW_TQ_io_connVSS_0_data_availableTask_valid),
		.io_connVSS_0_data_availableTask_bits(_stealNW_TQ_io_connVSS_0_data_availableTask_bits),
		.io_connVSS_0_data_qOutTask_ready(_stealNW_TQ_io_connVSS_0_data_qOutTask_ready),
		.io_connVSS_0_data_qOutTask_valid(_schedulerServers_0_io_connNetwork_data_qOutTask_valid),
		.io_connVSS_0_data_qOutTask_bits(_schedulerServers_0_io_connNetwork_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0(_stealNW_TQ_io_ntwDataUnitOccupancyVSS_0),
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0),
		.io_lengths_of_hardware_queues_1(_stealNW_TQ_io_lengths_of_hardware_queues_1),
		.io_lengths_of_hardware_queues_2(_stealNW_TQ_io_lengths_of_hardware_queues_2),
		.io_lengths_of_hardware_queues_3(_stealNW_TQ_io_lengths_of_hardware_queues_3)
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
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0),
		.io_lengths_of_hardware_queues_1(_stealNW_TQ_io_lengths_of_hardware_queues_1),
		.io_lengths_of_hardware_queues_2(_stealNW_TQ_io_lengths_of_hardware_queues_2),
		.io_lengths_of_hardware_queues_3(_stealNW_TQ_io_lengths_of_hardware_queues_3)
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
	AxisDataWidthConverter axis_stream_converters_out_1(
		.io_dataIn_TREADY(_axis_stream_converters_out_1_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_1_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_1_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_1_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_1_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_1_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_out_2(
		.io_dataIn_TREADY(_axis_stream_converters_out_2_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_2_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_2_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_2_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_2_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_2_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_out_3(
		.io_dataIn_TREADY(_axis_stream_converters_out_3_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_3_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_3_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_3_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_3_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_3_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_0(
		.io_dataIn_TREADY(io_export_taskIn_0_TREADY),
		.io_dataIn_TVALID(io_export_taskIn_0_TVALID),
		.io_dataIn_TDATA(io_export_taskIn_0_TDATA),
		.io_dataOut_TREADY(_stealNW_TQ_io_connPE_0_push_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_0_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_0_io_dataOut_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_1(
		.io_dataIn_TREADY(io_export_taskIn_1_TREADY),
		.io_dataIn_TVALID(io_export_taskIn_1_TVALID),
		.io_dataIn_TDATA(io_export_taskIn_1_TDATA),
		.io_dataOut_TREADY(_stealNW_TQ_io_connPE_1_push_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_1_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_1_io_dataOut_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_2(
		.io_dataIn_TREADY(io_export_taskIn_2_TREADY),
		.io_dataIn_TVALID(io_export_taskIn_2_TVALID),
		.io_dataIn_TDATA(io_export_taskIn_2_TDATA),
		.io_dataOut_TREADY(_stealNW_TQ_io_connPE_2_push_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_2_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_2_io_dataOut_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_3(
		.io_dataIn_TREADY(io_export_taskIn_3_TREADY),
		.io_dataIn_TVALID(io_export_taskIn_3_TVALID),
		.io_dataIn_TDATA(io_export_taskIn_3_TDATA),
		.io_dataOut_TREADY(_stealNW_TQ_io_connPE_3_push_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_3_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_3_io_dataOut_TDATA)
	);
endmodule
module Queue16_UInt128 (
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
	input [127:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [127:0] io_deq_bits;
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
	ram_16x128 ram_ext(
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
module ram_2x128 (
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
	output wire [127:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [127:0] W0_data;
	reg [127:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 128'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_UInt128 (
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
	input [127:0] io_enq_bits;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [127:0] io_deq_bits;
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
	ram_2x128 ram_ext(
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
	output wire [127:0] io_connNetwork_data_qOutTask_bits;
	output wire io_s_axis_task_ready;
	input io_s_axis_task_valid;
	input [127:0] io_s_axis_task_bits;
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
	assign io_connNetwork_data_qOutTask_bits = (_GEN ? io_s_axis_task_bits : 128'h00000000000000000000000000000000);
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
	input [127:0] io_source_bits;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [127:0] io_sinks_0_bits;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [127:0] io_sinks_1_bits;
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
	input [127:0] io_m_axi_RDATA;
	input io_m_axi_RLAST;
	input io_m_axi_AWREADY;
	output wire io_m_axi_AWVALID;
	output wire [63:0] io_m_axi_AWADDR;
	output wire [7:0] io_m_axi_AWLEN;
	input io_m_axi_WREADY;
	output wire io_m_axi_WVALID;
	output wire [127:0] io_m_axi_WDATA;
	output wire io_m_axi_WLAST;
	output wire io_m_axi_BREADY;
	input io_m_axi_BVALID;
	output wire io_connNetwork_slave_data_availableTask_ready;
	input io_connNetwork_slave_data_availableTask_valid;
	input [127:0] io_connNetwork_slave_data_availableTask_bits;
	output wire io_connNetwork_master_ctrl_serveStealReq_valid;
	input io_connNetwork_master_ctrl_serveStealReq_ready;
	input io_connNetwork_master_data_qOutTask_ready;
	output wire io_connNetwork_master_data_qOutTask_valid;
	output wire [127:0] io_connNetwork_master_data_qOutTask_bits;
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
	wire [127:0] _demux_io_sinks_0_bits;
	wire _demux_io_sinks_1_valid;
	wire [127:0] _demux_io_sinks_1_bits;
	wire _demux_io_select_ready;
	wire _WriteTaskToNetwork_io_connNetwork_data_qOutTask_valid;
	wire _WriteTaskToNetwork_io_s_axis_task_ready;
	wire _sinkBuffer_io_enq_ready;
	wire _sinkBuffer_io_deq_valid;
	wire [127:0] _sinkBuffer_io_deq_bits;
	wire _queue_write_io_enq_ready;
	wire _queue_write_io_deq_valid;
	wire [127:0] _queue_write_io_deq_bits;
	wire [4:0] _queue_write_io_count;
	wire _queue_read_io_enq_ready;
	wire _queue_read_io_deq_valid;
	wire [127:0] _queue_read_io_deq_bits;
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
	Queue16_UInt128 queue_read(
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
	Queue16_UInt128 queue_write(
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
	Queue2_UInt128 sinkBuffer(
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
	assign io_m_axi_ARADDR = (_GEN_7 ? rAddr + {fifoHeadReg[59:0], 4'h0} : 64'h0000000000000000);
	assign io_m_axi_ARLEN = (_GEN_7 ? (currLen < 64'h0000000000000010 ? currLen[7:0] - 8'h01 : 8'h0f) : 8'h00);
	assign io_m_axi_RREADY = _GEN_8 & _queue_read_io_enq_ready;
	assign io_m_axi_AWVALID = _GEN_0 & _GEN_1;
	assign io_m_axi_AWADDR = (_GEN_2 ? rAddr + {fifoTailReg[59:0], 4'h0} : 64'h0000000000000000);
	assign io_m_axi_AWLEN = (_GEN_2 ? (_queue_write_io_count[4] ? 8'h0f : {3'h0, _queue_write_io_count - 5'h01}) : 8'h00);
	assign io_m_axi_WVALID = _GEN_4 & _queue_write_io_deq_valid;
	assign io_m_axi_WDATA = (_GEN_4 ? _queue_write_io_deq_bits : 128'h00000000000000000000000000000000);
	assign io_m_axi_WLAST = _GEN_4 & _view__w_bits_last_T;
	assign io_m_axi_BREADY = _GEN_0 & _GEN_5;
	assign io_connNetwork_slave_data_availableTask_ready = _sinkBuffer_io_enq_ready;
	assign io_connNetwork_master_data_qOutTask_valid = _WriteTaskToNetwork_io_connNetwork_data_qOutTask_valid;
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
	io_connSS_1_ctrl_stealReq_valid,
	io_connSS_1_ctrl_stealReq_ready,
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
	io_connSS_3_ctrl_serveStealReq_valid,
	io_connSS_3_ctrl_serveStealReq_ready,
	io_connSS_3_ctrl_stealReq_valid,
	io_connSS_3_ctrl_stealReq_ready,
	io_connSS_3_data_availableTask_ready,
	io_connSS_3_data_availableTask_valid,
	io_connSS_3_data_availableTask_bits,
	io_connSS_3_data_qOutTask_ready,
	io_connSS_3_data_qOutTask_valid,
	io_connSS_3_data_qOutTask_bits,
	io_connSS_4_ctrl_serveStealReq_valid,
	io_connSS_4_ctrl_serveStealReq_ready,
	io_connSS_4_ctrl_stealReq_valid,
	io_connSS_4_ctrl_stealReq_ready,
	io_connSS_4_data_availableTask_ready,
	io_connSS_4_data_availableTask_valid,
	io_connSS_4_data_availableTask_bits,
	io_connSS_4_data_qOutTask_ready,
	io_connSS_4_data_qOutTask_valid,
	io_connSS_4_data_qOutTask_bits,
	io_connSS_5_ctrl_serveStealReq_valid,
	io_connSS_5_ctrl_serveStealReq_ready,
	io_connSS_5_ctrl_stealReq_valid,
	io_connSS_5_ctrl_stealReq_ready,
	io_connSS_5_data_availableTask_ready,
	io_connSS_5_data_availableTask_valid,
	io_connSS_5_data_availableTask_bits,
	io_connSS_5_data_qOutTask_ready,
	io_connSS_5_data_qOutTask_valid,
	io_connSS_5_data_qOutTask_bits,
	io_ntwDataUnitOccupancyVSS_0
);
	input clock;
	input reset;
	input io_connSS_0_ctrl_serveStealReq_valid;
	output wire io_connSS_0_ctrl_serveStealReq_ready;
	input io_connSS_0_data_availableTask_ready;
	output wire io_connSS_0_data_availableTask_valid;
	output wire [127:0] io_connSS_0_data_availableTask_bits;
	output wire io_connSS_0_data_qOutTask_ready;
	input io_connSS_0_data_qOutTask_valid;
	input [127:0] io_connSS_0_data_qOutTask_bits;
	input io_connSS_1_ctrl_serveStealReq_valid;
	output wire io_connSS_1_ctrl_serveStealReq_ready;
	input io_connSS_1_ctrl_stealReq_valid;
	output wire io_connSS_1_ctrl_stealReq_ready;
	output wire io_connSS_1_data_qOutTask_ready;
	input io_connSS_1_data_qOutTask_valid;
	input [127:0] io_connSS_1_data_qOutTask_bits;
	input io_connSS_2_ctrl_serveStealReq_valid;
	output wire io_connSS_2_ctrl_serveStealReq_ready;
	input io_connSS_2_ctrl_stealReq_valid;
	output wire io_connSS_2_ctrl_stealReq_ready;
	input io_connSS_2_data_availableTask_ready;
	output wire io_connSS_2_data_availableTask_valid;
	output wire [127:0] io_connSS_2_data_availableTask_bits;
	output wire io_connSS_2_data_qOutTask_ready;
	input io_connSS_2_data_qOutTask_valid;
	input [127:0] io_connSS_2_data_qOutTask_bits;
	input io_connSS_3_ctrl_serveStealReq_valid;
	output wire io_connSS_3_ctrl_serveStealReq_ready;
	input io_connSS_3_ctrl_stealReq_valid;
	output wire io_connSS_3_ctrl_stealReq_ready;
	input io_connSS_3_data_availableTask_ready;
	output wire io_connSS_3_data_availableTask_valid;
	output wire [127:0] io_connSS_3_data_availableTask_bits;
	output wire io_connSS_3_data_qOutTask_ready;
	input io_connSS_3_data_qOutTask_valid;
	input [127:0] io_connSS_3_data_qOutTask_bits;
	input io_connSS_4_ctrl_serveStealReq_valid;
	output wire io_connSS_4_ctrl_serveStealReq_ready;
	input io_connSS_4_ctrl_stealReq_valid;
	output wire io_connSS_4_ctrl_stealReq_ready;
	input io_connSS_4_data_availableTask_ready;
	output wire io_connSS_4_data_availableTask_valid;
	output wire [127:0] io_connSS_4_data_availableTask_bits;
	output wire io_connSS_4_data_qOutTask_ready;
	input io_connSS_4_data_qOutTask_valid;
	input [127:0] io_connSS_4_data_qOutTask_bits;
	input io_connSS_5_ctrl_serveStealReq_valid;
	output wire io_connSS_5_ctrl_serveStealReq_ready;
	input io_connSS_5_ctrl_stealReq_valid;
	output wire io_connSS_5_ctrl_stealReq_ready;
	input io_connSS_5_data_availableTask_ready;
	output wire io_connSS_5_data_availableTask_valid;
	output wire [127:0] io_connSS_5_data_availableTask_bits;
	output wire io_connSS_5_data_qOutTask_ready;
	input io_connSS_5_data_qOutTask_valid;
	input [127:0] io_connSS_5_data_qOutTask_bits;
	output wire io_ntwDataUnitOccupancyVSS_0;
	wire _ctrlunits_5_io_reqTaskOut;
	wire _ctrlunits_4_io_reqTaskOut;
	wire _ctrlunits_3_io_reqTaskOut;
	wire _ctrlunits_2_io_reqTaskOut;
	wire _ctrlunits_1_io_reqTaskOut;
	wire _ctrlunits_0_io_reqTaskOut;
	wire [127:0] _dataUnits_5_io_taskOut;
	wire _dataUnits_5_io_validOut;
	wire [127:0] _dataUnits_4_io_taskOut;
	wire _dataUnits_4_io_validOut;
	wire [127:0] _dataUnits_3_io_taskOut;
	wire _dataUnits_3_io_validOut;
	wire [127:0] _dataUnits_2_io_taskOut;
	wire _dataUnits_2_io_validOut;
	wire [127:0] _dataUnits_1_io_taskOut;
	wire _dataUnits_1_io_validOut;
	wire [127:0] _dataUnits_0_io_taskOut;
	wire _dataUnits_0_io_validOut;
	SchedulerNetworkDataUnit dataUnits_0(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_5_io_taskOut),
		.io_taskOut(_dataUnits_0_io_taskOut),
		.io_validIn(_dataUnits_5_io_validOut),
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
	SchedulerNetworkDataUnit dataUnits_3(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_2_io_taskOut),
		.io_taskOut(_dataUnits_3_io_taskOut),
		.io_validIn(_dataUnits_2_io_validOut),
		.io_validOut(_dataUnits_3_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_3_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_3_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_3_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_3_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_3_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_3_data_qOutTask_bits),
		.io_occupied()
	);
	SchedulerNetworkDataUnit dataUnits_4(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_3_io_taskOut),
		.io_taskOut(_dataUnits_4_io_taskOut),
		.io_validIn(_dataUnits_3_io_validOut),
		.io_validOut(_dataUnits_4_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_4_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_4_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_4_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_4_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_4_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_4_data_qOutTask_bits),
		.io_occupied()
	);
	SchedulerNetworkDataUnit dataUnits_5(
		.clock(clock),
		.reset(reset),
		.io_taskIn(_dataUnits_4_io_taskOut),
		.io_taskOut(_dataUnits_5_io_taskOut),
		.io_validIn(_dataUnits_4_io_validOut),
		.io_validOut(_dataUnits_5_io_validOut),
		.io_connSS_availableTask_ready(io_connSS_5_data_availableTask_ready),
		.io_connSS_availableTask_valid(io_connSS_5_data_availableTask_valid),
		.io_connSS_availableTask_bits(io_connSS_5_data_availableTask_bits),
		.io_connSS_qOutTask_ready(io_connSS_5_data_qOutTask_ready),
		.io_connSS_qOutTask_valid(io_connSS_5_data_qOutTask_valid),
		.io_connSS_qOutTask_bits(io_connSS_5_data_qOutTask_bits),
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
		.io_connSS_stealReq_valid(io_connSS_1_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_1_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_2(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_3_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_2_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_2_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_2_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_2_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_2_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_3(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_4_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_3_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_3_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_3_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_3_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_3_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_4(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_5_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_4_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_4_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_4_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_4_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_4_ctrl_stealReq_ready)
	);
	SchedulerNetworkControlUnit ctrlunits_5(
		.clock(clock),
		.reset(reset),
		.io_reqTaskIn(_ctrlunits_0_io_reqTaskOut),
		.io_reqTaskOut(_ctrlunits_5_io_reqTaskOut),
		.io_connSS_serveStealReq_valid(io_connSS_5_ctrl_serveStealReq_valid),
		.io_connSS_serveStealReq_ready(io_connSS_5_ctrl_serveStealReq_ready),
		.io_connSS_stealReq_valid(io_connSS_5_ctrl_stealReq_valid),
		.io_connSS_stealReq_ready(io_connSS_5_ctrl_stealReq_ready)
	);
endmodule
module SchedulerClient_4 (
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
	input [127:0] io_connNetwork_data_availableTask_bits;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [127:0] io_connNetwork_data_qOutTask_bits;
	input [6:0] io_connQ_currLength;
	input io_connQ_push_ready;
	output wire io_connQ_push_valid;
	output wire [127:0] io_connQ_push_bits;
	output wire io_connQ_pop_ready;
	input io_connQ_pop_valid;
	input [127:0] io_connQ_pop_bits;
	reg [2:0] stateReg;
	reg [127:0] stolenTaskReg;
	reg [127:0] giveTaskReg;
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
			stolenTaskReg <= 128'h00000000000000000000000000000000;
			giveTaskReg <= 128'h00000000000000000000000000000000;
			taskRequestCount <= 2'h1;
			tasksGivenAwayCount <= 32'h00000000;
			requestKilledCount <= 32'h00000006;
			requestFullCount <= 32'h00000006;
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
					requestFullCount <= 32'h00000006;
			end
			else if (_GEN_0) begin
				if (_GEN_1 | ~(_GEN_4 | ~(|tasksGivenAwayCount)))
					requestKilledCount <= 32'h00000006;
				if (io_connNetwork_ctrl_serveStealReq_ready)
					requestFullCount <= requestFullCount - 32'h00000001;
				else
					requestFullCount <= 32'h00000006;
			end
			else begin
				if (_GEN_6) begin
					if (io_connNetwork_ctrl_serveStealReq_ready)
						requestKilledCount <= 32'h00000006;
					else
						requestKilledCount <= requestKilledCount - 32'h00000001;
				end
				if ((_GEN_6 ? (io_connNetwork_data_availableTask_valid | _GEN_3) | ~_GEN_18 : _GEN_8 | (_GEN_10 ? io_connQ_pop_valid | ~_GEN_20 : ((_GEN_11 | ~_GEN_15) | _GEN_22) | ~_GEN_24)))
					;
				else
					requestFullCount <= 32'h00000006;
			end
		end
	assign io_connNetwork_ctrl_serveStealReq_valid = ~_GEN & (_GEN_0 ? ~_GEN_5 & |tasksGivenAwayCount : ~_GEN_16 & _GEN_15);
	assign io_connNetwork_ctrl_stealReq_valid = ~_GEN & _GEN_0;
	assign io_connNetwork_data_availableTask_ready = ~_GEN_7 & _GEN_6;
	assign io_connNetwork_data_qOutTask_valid = ~_GEN_14 & _GEN_11;
	assign io_connNetwork_data_qOutTask_bits = (_GEN_14 | ~_GEN_11 ? 128'h00000000000000000000000000000000 : giveTaskReg);
	assign io_connQ_push_valid = ~_GEN_9 & _GEN_8;
	assign io_connQ_push_bits = (_GEN_9 | ~_GEN_8 ? 128'h00000000000000000000000000000000 : stolenTaskReg);
	assign io_connQ_pop_ready = ~(((_GEN | _GEN_0) | _GEN_6) | _GEN_8) & _GEN_10;
endmodule
module SchedulerLocalNetwork_1 (
	clock,
	reset,
	io_connPE_0_pop_ready,
	io_connPE_0_pop_valid,
	io_connPE_0_pop_bits,
	io_connPE_1_pop_ready,
	io_connPE_1_pop_valid,
	io_connPE_1_pop_bits,
	io_connPE_2_pop_ready,
	io_connPE_2_pop_valid,
	io_connPE_2_pop_bits,
	io_connPE_3_pop_ready,
	io_connPE_3_pop_valid,
	io_connPE_3_pop_bits,
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
	io_lengths_of_hardware_queues_0,
	io_lengths_of_hardware_queues_1,
	io_lengths_of_hardware_queues_2,
	io_lengths_of_hardware_queues_3
);
	input clock;
	input reset;
	input io_connPE_0_pop_ready;
	output wire io_connPE_0_pop_valid;
	output wire [127:0] io_connPE_0_pop_bits;
	input io_connPE_1_pop_ready;
	output wire io_connPE_1_pop_valid;
	output wire [127:0] io_connPE_1_pop_bits;
	input io_connPE_2_pop_ready;
	output wire io_connPE_2_pop_valid;
	output wire [127:0] io_connPE_2_pop_bits;
	input io_connPE_3_pop_ready;
	output wire io_connPE_3_pop_valid;
	output wire [127:0] io_connPE_3_pop_bits;
	input io_connVSS_0_ctrl_serveStealReq_valid;
	output wire io_connVSS_0_ctrl_serveStealReq_ready;
	input io_connVSS_0_data_availableTask_ready;
	output wire io_connVSS_0_data_availableTask_valid;
	output wire [127:0] io_connVSS_0_data_availableTask_bits;
	output wire io_connVSS_0_data_qOutTask_ready;
	input io_connVSS_0_data_qOutTask_valid;
	input [127:0] io_connVSS_0_data_qOutTask_bits;
	input io_connVAS_0_ctrl_serveStealReq_valid;
	output wire io_connVAS_0_ctrl_serveStealReq_ready;
	output wire io_connVAS_0_data_qOutTask_ready;
	input io_connVAS_0_data_qOutTask_valid;
	input [127:0] io_connVAS_0_data_qOutTask_bits;
	output wire io_ntwDataUnitOccupancyVSS_0;
	output wire [7:0] io_lengths_of_hardware_queues_0;
	output wire [7:0] io_lengths_of_hardware_queues_1;
	output wire [7:0] io_lengths_of_hardware_queues_2;
	output wire [7:0] io_lengths_of_hardware_queues_3;
	wire [7:0] _taskQueues_3_io_connVec_1_currLength;
	wire _taskQueues_3_io_connVec_1_push_ready;
	wire _taskQueues_3_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_3_io_connVec_1_pop_bits;
	wire [7:0] _taskQueues_2_io_connVec_1_currLength;
	wire _taskQueues_2_io_connVec_1_push_ready;
	wire _taskQueues_2_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_2_io_connVec_1_pop_bits;
	wire [7:0] _taskQueues_1_io_connVec_1_currLength;
	wire _taskQueues_1_io_connVec_1_push_ready;
	wire _taskQueues_1_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_1_io_connVec_1_pop_bits;
	wire [7:0] _taskQueues_0_io_connVec_1_currLength;
	wire _taskQueues_0_io_connVec_1_push_ready;
	wire _taskQueues_0_io_connVec_1_pop_valid;
	wire [127:0] _taskQueues_0_io_connVec_1_pop_bits;
	wire _stealServers_3_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_3_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_3_io_connNetwork_data_availableTask_ready;
	wire _stealServers_3_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_3_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_3_io_connQ_push_valid;
	wire [127:0] _stealServers_3_io_connQ_push_bits;
	wire _stealServers_3_io_connQ_pop_ready;
	wire _stealServers_2_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_2_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_2_io_connNetwork_data_availableTask_ready;
	wire _stealServers_2_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_2_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_2_io_connQ_push_valid;
	wire [127:0] _stealServers_2_io_connQ_push_bits;
	wire _stealServers_2_io_connQ_pop_ready;
	wire _stealServers_1_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_1_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_1_io_connNetwork_data_availableTask_ready;
	wire _stealServers_1_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_1_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_1_io_connQ_push_valid;
	wire [127:0] _stealServers_1_io_connQ_push_bits;
	wire _stealServers_1_io_connQ_pop_ready;
	wire _stealServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _stealServers_0_io_connNetwork_ctrl_stealReq_valid;
	wire _stealServers_0_io_connNetwork_data_availableTask_ready;
	wire _stealServers_0_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _stealServers_0_io_connNetwork_data_qOutTask_bits;
	wire _stealServers_0_io_connQ_push_valid;
	wire [127:0] _stealServers_0_io_connQ_push_bits;
	wire _stealServers_0_io_connQ_pop_ready;
	wire _stealNet_io_connSS_2_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_2_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_2_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_2_data_availableTask_bits;
	wire _stealNet_io_connSS_2_data_qOutTask_ready;
	wire _stealNet_io_connSS_3_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_3_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_3_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_3_data_availableTask_bits;
	wire _stealNet_io_connSS_3_data_qOutTask_ready;
	wire _stealNet_io_connSS_4_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_4_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_4_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_4_data_availableTask_bits;
	wire _stealNet_io_connSS_4_data_qOutTask_ready;
	wire _stealNet_io_connSS_5_ctrl_serveStealReq_ready;
	wire _stealNet_io_connSS_5_ctrl_stealReq_ready;
	wire _stealNet_io_connSS_5_data_availableTask_valid;
	wire [127:0] _stealNet_io_connSS_5_data_availableTask_bits;
	wire _stealNet_io_connSS_5_data_qOutTask_ready;
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
		.io_connSS_1_ctrl_stealReq_valid(1'h0),
		.io_connSS_1_ctrl_stealReq_ready(),
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
		.io_connSS_3_ctrl_serveStealReq_valid(_stealServers_1_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_3_ctrl_serveStealReq_ready(_stealNet_io_connSS_3_ctrl_serveStealReq_ready),
		.io_connSS_3_ctrl_stealReq_valid(_stealServers_1_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_3_ctrl_stealReq_ready(_stealNet_io_connSS_3_ctrl_stealReq_ready),
		.io_connSS_3_data_availableTask_ready(_stealServers_1_io_connNetwork_data_availableTask_ready),
		.io_connSS_3_data_availableTask_valid(_stealNet_io_connSS_3_data_availableTask_valid),
		.io_connSS_3_data_availableTask_bits(_stealNet_io_connSS_3_data_availableTask_bits),
		.io_connSS_3_data_qOutTask_ready(_stealNet_io_connSS_3_data_qOutTask_ready),
		.io_connSS_3_data_qOutTask_valid(_stealServers_1_io_connNetwork_data_qOutTask_valid),
		.io_connSS_3_data_qOutTask_bits(_stealServers_1_io_connNetwork_data_qOutTask_bits),
		.io_connSS_4_ctrl_serveStealReq_valid(_stealServers_2_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_4_ctrl_serveStealReq_ready(_stealNet_io_connSS_4_ctrl_serveStealReq_ready),
		.io_connSS_4_ctrl_stealReq_valid(_stealServers_2_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_4_ctrl_stealReq_ready(_stealNet_io_connSS_4_ctrl_stealReq_ready),
		.io_connSS_4_data_availableTask_ready(_stealServers_2_io_connNetwork_data_availableTask_ready),
		.io_connSS_4_data_availableTask_valid(_stealNet_io_connSS_4_data_availableTask_valid),
		.io_connSS_4_data_availableTask_bits(_stealNet_io_connSS_4_data_availableTask_bits),
		.io_connSS_4_data_qOutTask_ready(_stealNet_io_connSS_4_data_qOutTask_ready),
		.io_connSS_4_data_qOutTask_valid(_stealServers_2_io_connNetwork_data_qOutTask_valid),
		.io_connSS_4_data_qOutTask_bits(_stealServers_2_io_connNetwork_data_qOutTask_bits),
		.io_connSS_5_ctrl_serveStealReq_valid(_stealServers_3_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connSS_5_ctrl_serveStealReq_ready(_stealNet_io_connSS_5_ctrl_serveStealReq_ready),
		.io_connSS_5_ctrl_stealReq_valid(_stealServers_3_io_connNetwork_ctrl_stealReq_valid),
		.io_connSS_5_ctrl_stealReq_ready(_stealNet_io_connSS_5_ctrl_stealReq_ready),
		.io_connSS_5_data_availableTask_ready(_stealServers_3_io_connNetwork_data_availableTask_ready),
		.io_connSS_5_data_availableTask_valid(_stealNet_io_connSS_5_data_availableTask_valid),
		.io_connSS_5_data_availableTask_bits(_stealNet_io_connSS_5_data_availableTask_bits),
		.io_connSS_5_data_qOutTask_ready(_stealNet_io_connSS_5_data_qOutTask_ready),
		.io_connSS_5_data_qOutTask_valid(_stealServers_3_io_connNetwork_data_qOutTask_valid),
		.io_connSS_5_data_qOutTask_bits(_stealServers_3_io_connNetwork_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0(io_ntwDataUnitOccupancyVSS_0)
	);
	SchedulerClient_4 stealServers_0(
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
	SchedulerClient_4 stealServers_1(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_1_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_3_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_1_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_3_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_1_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_3_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_3_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_3_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_1_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_1_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_1_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_1_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_1_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_1_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_1_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_1_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_1_io_connVec_1_pop_bits)
	);
	SchedulerClient_4 stealServers_2(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_2_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_4_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_2_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_4_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_2_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_4_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_4_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_4_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_2_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_2_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_2_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_2_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_2_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_2_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_2_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_2_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_2_io_connVec_1_pop_bits)
	);
	SchedulerClient_4 stealServers_3(
		.clock(clock),
		.reset(reset),
		.io_connNetwork_ctrl_serveStealReq_valid(_stealServers_3_io_connNetwork_ctrl_serveStealReq_valid),
		.io_connNetwork_ctrl_serveStealReq_ready(_stealNet_io_connSS_5_ctrl_serveStealReq_ready),
		.io_connNetwork_ctrl_stealReq_valid(_stealServers_3_io_connNetwork_ctrl_stealReq_valid),
		.io_connNetwork_ctrl_stealReq_ready(_stealNet_io_connSS_5_ctrl_stealReq_ready),
		.io_connNetwork_data_availableTask_ready(_stealServers_3_io_connNetwork_data_availableTask_ready),
		.io_connNetwork_data_availableTask_valid(_stealNet_io_connSS_5_data_availableTask_valid),
		.io_connNetwork_data_availableTask_bits(_stealNet_io_connSS_5_data_availableTask_bits),
		.io_connNetwork_data_qOutTask_ready(_stealNet_io_connSS_5_data_qOutTask_ready),
		.io_connNetwork_data_qOutTask_valid(_stealServers_3_io_connNetwork_data_qOutTask_valid),
		.io_connNetwork_data_qOutTask_bits(_stealServers_3_io_connNetwork_data_qOutTask_bits),
		.io_connQ_currLength(_taskQueues_3_io_connVec_1_currLength[6:0]),
		.io_connQ_push_ready(_taskQueues_3_io_connVec_1_push_ready),
		.io_connQ_push_valid(_stealServers_3_io_connQ_push_valid),
		.io_connQ_push_bits(_stealServers_3_io_connQ_push_bits),
		.io_connQ_pop_ready(_stealServers_3_io_connQ_pop_ready),
		.io_connQ_pop_valid(_taskQueues_3_io_connVec_1_pop_valid),
		.io_connQ_pop_bits(_taskQueues_3_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_0(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_0),
		.io_connVec_0_push_ready(),
		.io_connVec_0_push_valid(1'h0),
		.io_connVec_0_push_bits(128'h00000000000000000000000000000000),
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
	hw_deque taskQueues_1(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_1),
		.io_connVec_0_push_ready(),
		.io_connVec_0_push_valid(1'h0),
		.io_connVec_0_push_bits(128'h00000000000000000000000000000000),
		.io_connVec_0_pop_ready(io_connPE_1_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_1_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_1_pop_bits),
		.io_connVec_1_currLength(_taskQueues_1_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_1_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_1_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_1_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_1_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_1_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_1_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_2(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_2),
		.io_connVec_0_push_ready(),
		.io_connVec_0_push_valid(1'h0),
		.io_connVec_0_push_bits(128'h00000000000000000000000000000000),
		.io_connVec_0_pop_ready(io_connPE_2_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_2_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_2_pop_bits),
		.io_connVec_1_currLength(_taskQueues_2_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_2_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_2_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_2_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_2_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_2_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_2_io_connVec_1_pop_bits)
	);
	hw_deque taskQueues_3(
		.clock(clock),
		.reset(reset),
		.io_connVec_0_currLength(io_lengths_of_hardware_queues_3),
		.io_connVec_0_push_ready(),
		.io_connVec_0_push_valid(1'h0),
		.io_connVec_0_push_bits(128'h00000000000000000000000000000000),
		.io_connVec_0_pop_ready(io_connPE_3_pop_ready),
		.io_connVec_0_pop_valid(io_connPE_3_pop_valid),
		.io_connVec_0_pop_bits(io_connPE_3_pop_bits),
		.io_connVec_1_currLength(_taskQueues_3_io_connVec_1_currLength),
		.io_connVec_1_push_ready(_taskQueues_3_io_connVec_1_push_ready),
		.io_connVec_1_push_valid(_stealServers_3_io_connQ_push_valid),
		.io_connVec_1_push_bits(_stealServers_3_io_connQ_push_bits),
		.io_connVec_1_pop_ready(_stealServers_3_io_connQ_pop_ready),
		.io_connVec_1_pop_valid(_taskQueues_3_io_connVec_1_pop_valid),
		.io_connVec_1_pop_bits(_taskQueues_3_io_connVec_1_pop_bits)
	);
endmodule
module SchedulerServer_1 (
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
	io_lengths_of_hardware_queues_0,
	io_lengths_of_hardware_queues_1,
	io_lengths_of_hardware_queues_2,
	io_lengths_of_hardware_queues_3
);
	input clock;
	input reset;
	output wire io_connNetwork_ctrl_serveStealReq_valid;
	input io_connNetwork_ctrl_serveStealReq_ready;
	output wire io_connNetwork_data_availableTask_ready;
	input io_connNetwork_data_availableTask_valid;
	input [127:0] io_connNetwork_data_availableTask_bits;
	input io_connNetwork_data_qOutTask_ready;
	output wire io_connNetwork_data_qOutTask_valid;
	output wire [127:0] io_connNetwork_data_qOutTask_bits;
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
	input [127:0] io_read_data_bits;
	output wire [3:0] io_read_burst_len;
	input io_write_address_ready;
	output wire io_write_address_valid;
	output wire [63:0] io_write_address_bits;
	input io_write_data_ready;
	output wire io_write_data_valid;
	output wire [127:0] io_write_data_bits;
	output wire [3:0] io_write_burst_len;
	output wire io_write_last;
	input io_ntwDataUnitOccupancy;
	output wire io_paused;
	input [7:0] io_lengths_of_hardware_queues_0;
	input [7:0] io_lengths_of_hardware_queues_1;
	input [7:0] io_lengths_of_hardware_queues_2;
	input [7:0] io_lengths_of_hardware_queues_3;
	wire _taskQueueBuffer_io_enq_ready;
	wire [127:0] _taskQueueBuffer_io_deq_bits;
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
			if ((~io_connNetwork_ctrl_serveStealReq_ready & io_ntwDataUnitOccupancy) & (contentionCounter != 64'h0000000000000009))
				contentionCounter <= contentionCounter + 64'h0000000000000001;
			else if ((io_connNetwork_ctrl_serveStealReq_ready & |contentionCounter) & ~io_ntwDataUnitOccupancy)
				contentionCounter <= contentionCounter - 64'h0000000000000001;
			networkCongested <= |contentionCounter[63:3] | ((contentionCounter > 64'h0000000000000005) & networkCongested);
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
				queuesUtil <= {32'h00000000, io_lengths_of_hardware_queues_0, io_lengths_of_hardware_queues_1, io_lengths_of_hardware_queues_2, io_lengths_of_hardware_queues_3};
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
		.io_enq_bits((_GEN ? io_connNetwork_data_availableTask_bits : (_GEN_6 | ~_GEN_5 ? 128'h00000000000000000000000000000000 : io_read_data_bits))),
		.io_deq_ready(~_GEN_3 & (_GEN_1 ? io_write_data_ready : (~_GEN_11 & _GEN_8) & io_connNetwork_data_qOutTask_ready)),
		.io_deq_bits(_taskQueueBuffer_io_deq_bits),
		.io_count(_taskQueueBuffer_io_count)
	);
	assign io_connNetwork_ctrl_serveStealReq_valid = ~(((((_GEN | _GEN_0) | _GEN_1) | _GEN_4) | _GEN_5) | _GEN_8) & (stateReg == 4'h8);
	assign io_connNetwork_data_availableTask_ready = _GEN & _taskQueueBuffer_io_enq_ready;
	assign io_connNetwork_data_qOutTask_valid = ~(((_GEN | _GEN_0) | _GEN_1) | _GEN_11) & _GEN_8;
	assign io_connNetwork_data_qOutTask_bits = _taskQueueBuffer_io_deq_bits;
	assign io_read_address_valid = ~_GEN_9 & _GEN_4;
	assign io_read_address_bits = (_GEN_10 ? 64'h0000000000000000 : {fifoHeadReg[59:0], 4'h0} + rAddr);
	assign io_read_data_ready = ~_GEN_7 & _GEN_5;
	assign io_read_burst_len = (_GEN_10 ? 4'h0 : (currLen < 64'h0000000000000010 ? currLen[3:0] - 4'h1 : 4'hf));
	assign io_write_address_valid = ~_GEN & _GEN_0;
	assign io_write_address_bits = (_GEN | ~_GEN_0 ? 64'h0000000000000000 : {fifoTailReg[59:0], 4'h0} + rAddr);
	assign io_write_data_valid = ~_GEN_3 & _GEN_1;
	assign io_write_data_bits = _taskQueueBuffer_io_deq_bits;
	assign io_write_burst_len = (_GEN ? 4'h0 : {4 {_GEN_0}});
	assign io_write_last = (~_GEN_3 & _GEN_1) & _GEN_2;
	assign io_paused = rPause[0];
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
	input [127:0] io_in_bits;
	output wire io_connStealNtw_ctrl_serveStealReq_valid;
	input io_connStealNtw_ctrl_serveStealReq_ready;
	input io_connStealNtw_data_qOutTask_ready;
	output wire io_connStealNtw_data_qOutTask_valid;
	output wire [127:0] io_connStealNtw_data_qOutTask_bits;
	reg [127:0] buffer;
	reg stateReg;
	reg [31:0] tasksGivenAwayCount;
	wire io_connStealNtw_ctrl_serveStealReq_valid_0 = |tasksGivenAwayCount & (stateReg | ~io_in_valid);
	always @(posedge clock)
		if (reset) begin
			buffer <= 128'h00000000000000000000000000000000;
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
			else if ((~stateReg & io_in_valid) & (tasksGivenAwayCount < 32'h00000004))
				tasksGivenAwayCount <= tasksGivenAwayCount + 32'h00000001;
		end
	assign io_in_ready = ~stateReg;
	assign io_connStealNtw_ctrl_serveStealReq_valid = io_connStealNtw_ctrl_serveStealReq_valid_0;
	assign io_connStealNtw_data_qOutTask_valid = stateReg;
	assign io_connStealNtw_data_qOutTask_bits = buffer;
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
	io_export_taskOut_1_TREADY,
	io_export_taskOut_1_TVALID,
	io_export_taskOut_1_TDATA,
	io_export_taskOut_2_TREADY,
	io_export_taskOut_2_TVALID,
	io_export_taskOut_2_TDATA,
	io_export_taskOut_3_TREADY,
	io_export_taskOut_3_TVALID,
	io_export_taskOut_3_TDATA,
	io_export_taskInGlobal_0_TREADY,
	io_export_taskInGlobal_0_TVALID,
	io_export_taskInGlobal_0_TDATA,
	io_export_taskInGlobal_1_TREADY,
	io_export_taskInGlobal_1_TVALID,
	io_export_taskInGlobal_1_TDATA,
	io_export_taskInGlobal_2_TREADY,
	io_export_taskInGlobal_2_TVALID,
	io_export_taskInGlobal_2_TDATA,
	io_export_taskInGlobal_3_TREADY,
	io_export_taskInGlobal_3_TVALID,
	io_export_taskInGlobal_3_TDATA,
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
	input [127:0] spawnerServerAXI_0_r_bits_data;
	input spawnerServerAXI_0_r_bits_last;
	input spawnerServerAXI_0_aw_ready;
	output wire spawnerServerAXI_0_aw_valid;
	output wire [63:0] spawnerServerAXI_0_aw_bits_addr;
	output wire [7:0] spawnerServerAXI_0_aw_bits_len;
	input spawnerServerAXI_0_w_ready;
	output wire spawnerServerAXI_0_w_valid;
	output wire [127:0] spawnerServerAXI_0_w_bits_data;
	output wire spawnerServerAXI_0_w_bits_last;
	output wire spawnerServerAXI_0_b_ready;
	input spawnerServerAXI_0_b_valid;
	input io_export_taskOut_0_TREADY;
	output wire io_export_taskOut_0_TVALID;
	output wire [127:0] io_export_taskOut_0_TDATA;
	input io_export_taskOut_1_TREADY;
	output wire io_export_taskOut_1_TVALID;
	output wire [127:0] io_export_taskOut_1_TDATA;
	input io_export_taskOut_2_TREADY;
	output wire io_export_taskOut_2_TVALID;
	output wire [127:0] io_export_taskOut_2_TDATA;
	input io_export_taskOut_3_TREADY;
	output wire io_export_taskOut_3_TVALID;
	output wire [127:0] io_export_taskOut_3_TDATA;
	output wire io_export_taskInGlobal_0_TREADY;
	input io_export_taskInGlobal_0_TVALID;
	input [127:0] io_export_taskInGlobal_0_TDATA;
	output wire io_export_taskInGlobal_1_TREADY;
	input io_export_taskInGlobal_1_TVALID;
	input [127:0] io_export_taskInGlobal_1_TDATA;
	output wire io_export_taskInGlobal_2_TREADY;
	input io_export_taskInGlobal_2_TVALID;
	input [127:0] io_export_taskInGlobal_2_TDATA;
	output wire io_export_taskInGlobal_3_TREADY;
	input io_export_taskInGlobal_3_TVALID;
	input [127:0] io_export_taskInGlobal_3_TDATA;
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
	input [127:0] io_internal_vss_axi_full_0_r_bits_data;
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
	output wire [127:0] io_internal_vss_axi_full_0_w_bits_data;
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
	input [127:0] connArgumentNotifier_0_data_qOutTask_bits;
	wire _globalsTaskBuffers_3_io_in_ready;
	wire _globalsTaskBuffers_3_io_connStealNtw_ctrl_serveStealReq_valid;
	wire _globalsTaskBuffers_3_io_connStealNtw_data_qOutTask_valid;
	wire [127:0] _globalsTaskBuffers_3_io_connStealNtw_data_qOutTask_bits;
	wire _globalsTaskBuffers_2_io_in_ready;
	wire _globalsTaskBuffers_2_io_connStealNtw_ctrl_serveStealReq_valid;
	wire _globalsTaskBuffers_2_io_connStealNtw_data_qOutTask_valid;
	wire [127:0] _globalsTaskBuffers_2_io_connStealNtw_data_qOutTask_bits;
	wire _globalsTaskBuffers_1_io_in_ready;
	wire _globalsTaskBuffers_1_io_connStealNtw_ctrl_serveStealReq_valid;
	wire _globalsTaskBuffers_1_io_connStealNtw_data_qOutTask_valid;
	wire [127:0] _globalsTaskBuffers_1_io_connStealNtw_data_qOutTask_bits;
	wire _globalsTaskBuffers_0_io_in_ready;
	wire _globalsTaskBuffers_0_io_connStealNtw_ctrl_serveStealReq_valid;
	wire _globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_valid;
	wire [127:0] _globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_bits;
	wire _axis_stream_converters_in_global_3_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_global_3_io_dataOut_TDATA;
	wire _axis_stream_converters_in_global_2_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_global_2_io_dataOut_TDATA;
	wire _axis_stream_converters_in_global_1_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_global_1_io_dataOut_TDATA;
	wire _axis_stream_converters_in_global_0_io_dataOut_TVALID;
	wire [127:0] _axis_stream_converters_in_global_0_io_dataOut_TDATA;
	wire _axis_stream_converters_out_3_io_dataIn_TREADY;
	wire _axis_stream_converters_out_2_io_dataIn_TREADY;
	wire _axis_stream_converters_out_1_io_dataIn_TREADY;
	wire _axis_stream_converters_out_0_io_dataIn_TREADY;
	wire _module_s_axi_ar_ready;
	wire _module_s_axi_r_valid;
	wire [127:0] _module_s_axi_r_bits_data;
	wire _module_s_axi_aw_ready;
	wire _module_s_axi_w_ready;
	wire _module_s_axi_b_valid;
	wire _vssRvm_0_io_read_address_ready;
	wire _vssRvm_0_io_read_data_valid;
	wire [127:0] _vssRvm_0_io_read_data_bits;
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
	wire [127:0] _vssRvm_0_axi_w_bits_data;
	wire _vssRvm_0_axi_w_bits_last;
	wire _schedulerServers_0_io_connNetwork_ctrl_serveStealReq_valid;
	wire _schedulerServers_0_io_connNetwork_data_availableTask_ready;
	wire _schedulerServers_0_io_connNetwork_data_qOutTask_valid;
	wire [127:0] _schedulerServers_0_io_connNetwork_data_qOutTask_bits;
	wire _schedulerServers_0_io_read_address_valid;
	wire [63:0] _schedulerServers_0_io_read_address_bits;
	wire _schedulerServers_0_io_read_data_ready;
	wire [3:0] _schedulerServers_0_io_read_burst_len;
	wire _schedulerServers_0_io_write_address_valid;
	wire [63:0] _schedulerServers_0_io_write_address_bits;
	wire _schedulerServers_0_io_write_data_valid;
	wire [127:0] _schedulerServers_0_io_write_data_bits;
	wire [3:0] _schedulerServers_0_io_write_burst_len;
	wire _schedulerServers_0_io_write_last;
	wire _stealNW_TQ_io_connPE_0_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_0_pop_bits;
	wire _stealNW_TQ_io_connPE_1_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_1_pop_bits;
	wire _stealNW_TQ_io_connPE_2_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_2_pop_bits;
	wire _stealNW_TQ_io_connPE_3_pop_valid;
	wire [127:0] _stealNW_TQ_io_connPE_3_pop_bits;
	wire _stealNW_TQ_io_connVSS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVSS_0_data_availableTask_valid;
	wire [127:0] _stealNW_TQ_io_connVSS_0_data_availableTask_bits;
	wire _stealNW_TQ_io_connVSS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_connVAS_0_ctrl_serveStealReq_ready;
	wire _stealNW_TQ_io_connVAS_0_data_qOutTask_ready;
	wire _stealNW_TQ_io_ntwDataUnitOccupancyVSS_0;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_0;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_1;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_2;
	wire [7:0] _stealNW_TQ_io_lengths_of_hardware_queues_3;
	wire _getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid;
	wire [127:0] _getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits;
	wire _getOutsideSpawnNetwork_io_connSS_2_ctrl_serveStealReq_ready;
	wire _getOutsideSpawnNetwork_io_connSS_2_data_qOutTask_ready;
	wire _getOutsideSpawnNetwork_io_connSS_3_ctrl_serveStealReq_ready;
	wire _getOutsideSpawnNetwork_io_connSS_3_data_qOutTask_ready;
	wire _getOutsideSpawnNetwork_io_connSS_4_ctrl_serveStealReq_ready;
	wire _getOutsideSpawnNetwork_io_connSS_4_data_qOutTask_ready;
	wire _getOutsideSpawnNetwork_io_connSS_5_ctrl_serveStealReq_ready;
	wire _getOutsideSpawnNetwork_io_connSS_5_data_qOutTask_ready;
	wire _spawnerServer_0_io_connNetwork_slave_data_availableTask_ready;
	wire _spawnerServer_0_io_connNetwork_master_ctrl_serveStealReq_valid;
	wire _spawnerServer_0_io_connNetwork_master_data_qOutTask_valid;
	wire [127:0] _spawnerServer_0_io_connNetwork_master_data_qOutTask_bits;
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
	SchedulerNetwork_1 getOutsideSpawnNetwork(
		.clock(clock),
		.reset(reset),
		.io_connSS_0_ctrl_serveStealReq_valid(1'h1),
		.io_connSS_0_ctrl_serveStealReq_ready(),
		.io_connSS_0_data_availableTask_ready(_spawnerServer_0_io_connNetwork_slave_data_availableTask_ready),
		.io_connSS_0_data_availableTask_valid(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_valid),
		.io_connSS_0_data_availableTask_bits(_getOutsideSpawnNetwork_io_connSS_0_data_availableTask_bits),
		.io_connSS_0_data_qOutTask_ready(),
		.io_connSS_0_data_qOutTask_valid(1'h0),
		.io_connSS_0_data_qOutTask_bits(128'h00000000000000000000000000000000),
		.io_connSS_1_ctrl_serveStealReq_valid(1'h0),
		.io_connSS_1_ctrl_serveStealReq_ready(),
		.io_connSS_1_ctrl_stealReq_valid(connArgumentNotifier_0_ctrl_stealReq_valid),
		.io_connSS_1_ctrl_stealReq_ready(connArgumentNotifier_0_ctrl_stealReq_ready),
		.io_connSS_1_data_qOutTask_ready(connArgumentNotifier_0_data_qOutTask_ready),
		.io_connSS_1_data_qOutTask_valid(connArgumentNotifier_0_data_qOutTask_valid),
		.io_connSS_1_data_qOutTask_bits(connArgumentNotifier_0_data_qOutTask_bits),
		.io_connSS_2_ctrl_serveStealReq_valid(_globalsTaskBuffers_0_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connSS_2_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_2_ctrl_serveStealReq_ready),
		.io_connSS_2_ctrl_stealReq_valid(1'h0),
		.io_connSS_2_ctrl_stealReq_ready(),
		.io_connSS_2_data_availableTask_ready(1'h0),
		.io_connSS_2_data_availableTask_valid(),
		.io_connSS_2_data_availableTask_bits(),
		.io_connSS_2_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_2_data_qOutTask_ready),
		.io_connSS_2_data_qOutTask_valid(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_valid),
		.io_connSS_2_data_qOutTask_bits(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_bits),
		.io_connSS_3_ctrl_serveStealReq_valid(_globalsTaskBuffers_1_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connSS_3_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_3_ctrl_serveStealReq_ready),
		.io_connSS_3_ctrl_stealReq_valid(1'h0),
		.io_connSS_3_ctrl_stealReq_ready(),
		.io_connSS_3_data_availableTask_ready(1'h0),
		.io_connSS_3_data_availableTask_valid(),
		.io_connSS_3_data_availableTask_bits(),
		.io_connSS_3_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_3_data_qOutTask_ready),
		.io_connSS_3_data_qOutTask_valid(_globalsTaskBuffers_1_io_connStealNtw_data_qOutTask_valid),
		.io_connSS_3_data_qOutTask_bits(_globalsTaskBuffers_1_io_connStealNtw_data_qOutTask_bits),
		.io_connSS_4_ctrl_serveStealReq_valid(_globalsTaskBuffers_2_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connSS_4_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_4_ctrl_serveStealReq_ready),
		.io_connSS_4_ctrl_stealReq_valid(1'h0),
		.io_connSS_4_ctrl_stealReq_ready(),
		.io_connSS_4_data_availableTask_ready(1'h0),
		.io_connSS_4_data_availableTask_valid(),
		.io_connSS_4_data_availableTask_bits(),
		.io_connSS_4_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_4_data_qOutTask_ready),
		.io_connSS_4_data_qOutTask_valid(_globalsTaskBuffers_2_io_connStealNtw_data_qOutTask_valid),
		.io_connSS_4_data_qOutTask_bits(_globalsTaskBuffers_2_io_connStealNtw_data_qOutTask_bits),
		.io_connSS_5_ctrl_serveStealReq_valid(_globalsTaskBuffers_3_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connSS_5_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_5_ctrl_serveStealReq_ready),
		.io_connSS_5_ctrl_stealReq_valid(1'h0),
		.io_connSS_5_ctrl_stealReq_ready(),
		.io_connSS_5_data_availableTask_ready(1'h0),
		.io_connSS_5_data_availableTask_valid(),
		.io_connSS_5_data_availableTask_bits(),
		.io_connSS_5_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_5_data_qOutTask_ready),
		.io_connSS_5_data_qOutTask_valid(_globalsTaskBuffers_3_io_connStealNtw_data_qOutTask_valid),
		.io_connSS_5_data_qOutTask_bits(_globalsTaskBuffers_3_io_connStealNtw_data_qOutTask_bits),
		.io_ntwDataUnitOccupancyVSS_0()
	);
	SchedulerLocalNetwork_1 stealNW_TQ(
		.clock(clock),
		.reset(reset),
		.io_connPE_0_pop_ready(_axis_stream_converters_out_0_io_dataIn_TREADY),
		.io_connPE_0_pop_valid(_stealNW_TQ_io_connPE_0_pop_valid),
		.io_connPE_0_pop_bits(_stealNW_TQ_io_connPE_0_pop_bits),
		.io_connPE_1_pop_ready(_axis_stream_converters_out_1_io_dataIn_TREADY),
		.io_connPE_1_pop_valid(_stealNW_TQ_io_connPE_1_pop_valid),
		.io_connPE_1_pop_bits(_stealNW_TQ_io_connPE_1_pop_bits),
		.io_connPE_2_pop_ready(_axis_stream_converters_out_2_io_dataIn_TREADY),
		.io_connPE_2_pop_valid(_stealNW_TQ_io_connPE_2_pop_valid),
		.io_connPE_2_pop_bits(_stealNW_TQ_io_connPE_2_pop_bits),
		.io_connPE_3_pop_ready(_axis_stream_converters_out_3_io_dataIn_TREADY),
		.io_connPE_3_pop_valid(_stealNW_TQ_io_connPE_3_pop_valid),
		.io_connPE_3_pop_bits(_stealNW_TQ_io_connPE_3_pop_bits),
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
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0),
		.io_lengths_of_hardware_queues_1(_stealNW_TQ_io_lengths_of_hardware_queues_1),
		.io_lengths_of_hardware_queues_2(_stealNW_TQ_io_lengths_of_hardware_queues_2),
		.io_lengths_of_hardware_queues_3(_stealNW_TQ_io_lengths_of_hardware_queues_3)
	);
	SchedulerServer_1 schedulerServers_0(
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
		.io_lengths_of_hardware_queues_0(_stealNW_TQ_io_lengths_of_hardware_queues_0),
		.io_lengths_of_hardware_queues_1(_stealNW_TQ_io_lengths_of_hardware_queues_1),
		.io_lengths_of_hardware_queues_2(_stealNW_TQ_io_lengths_of_hardware_queues_2),
		.io_lengths_of_hardware_queues_3(_stealNW_TQ_io_lengths_of_hardware_queues_3)
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
	AxisDataWidthConverter axis_stream_converters_out_1(
		.io_dataIn_TREADY(_axis_stream_converters_out_1_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_1_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_1_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_1_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_1_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_1_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_out_2(
		.io_dataIn_TREADY(_axis_stream_converters_out_2_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_2_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_2_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_2_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_2_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_2_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_out_3(
		.io_dataIn_TREADY(_axis_stream_converters_out_3_io_dataIn_TREADY),
		.io_dataIn_TVALID(_stealNW_TQ_io_connPE_3_pop_valid),
		.io_dataIn_TDATA(_stealNW_TQ_io_connPE_3_pop_bits),
		.io_dataOut_TREADY(io_export_taskOut_3_TREADY),
		.io_dataOut_TVALID(io_export_taskOut_3_TVALID),
		.io_dataOut_TDATA(io_export_taskOut_3_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_global_0(
		.io_dataIn_TREADY(io_export_taskInGlobal_0_TREADY),
		.io_dataIn_TVALID(io_export_taskInGlobal_0_TVALID),
		.io_dataIn_TDATA(io_export_taskInGlobal_0_TDATA),
		.io_dataOut_TREADY(_globalsTaskBuffers_0_io_in_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_global_0_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_global_0_io_dataOut_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_global_1(
		.io_dataIn_TREADY(io_export_taskInGlobal_1_TREADY),
		.io_dataIn_TVALID(io_export_taskInGlobal_1_TVALID),
		.io_dataIn_TDATA(io_export_taskInGlobal_1_TDATA),
		.io_dataOut_TREADY(_globalsTaskBuffers_1_io_in_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_global_1_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_global_1_io_dataOut_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_global_2(
		.io_dataIn_TREADY(io_export_taskInGlobal_2_TREADY),
		.io_dataIn_TVALID(io_export_taskInGlobal_2_TVALID),
		.io_dataIn_TDATA(io_export_taskInGlobal_2_TDATA),
		.io_dataOut_TREADY(_globalsTaskBuffers_2_io_in_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_global_2_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_global_2_io_dataOut_TDATA)
	);
	AxisDataWidthConverter axis_stream_converters_in_global_3(
		.io_dataIn_TREADY(io_export_taskInGlobal_3_TREADY),
		.io_dataIn_TVALID(io_export_taskInGlobal_3_TVALID),
		.io_dataIn_TDATA(io_export_taskInGlobal_3_TDATA),
		.io_dataOut_TREADY(_globalsTaskBuffers_3_io_in_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_global_3_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_global_3_io_dataOut_TDATA)
	);
	GlobalTaskBuffer globalsTaskBuffers_0(
		.clock(clock),
		.reset(reset),
		.io_in_ready(_globalsTaskBuffers_0_io_in_ready),
		.io_in_valid(_axis_stream_converters_in_global_0_io_dataOut_TVALID),
		.io_in_bits(_axis_stream_converters_in_global_0_io_dataOut_TDATA),
		.io_connStealNtw_ctrl_serveStealReq_valid(_globalsTaskBuffers_0_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connStealNtw_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_2_ctrl_serveStealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_2_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(_globalsTaskBuffers_0_io_connStealNtw_data_qOutTask_bits)
	);
	GlobalTaskBuffer globalsTaskBuffers_1(
		.clock(clock),
		.reset(reset),
		.io_in_ready(_globalsTaskBuffers_1_io_in_ready),
		.io_in_valid(_axis_stream_converters_in_global_1_io_dataOut_TVALID),
		.io_in_bits(_axis_stream_converters_in_global_1_io_dataOut_TDATA),
		.io_connStealNtw_ctrl_serveStealReq_valid(_globalsTaskBuffers_1_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connStealNtw_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_3_ctrl_serveStealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_3_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(_globalsTaskBuffers_1_io_connStealNtw_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(_globalsTaskBuffers_1_io_connStealNtw_data_qOutTask_bits)
	);
	GlobalTaskBuffer globalsTaskBuffers_2(
		.clock(clock),
		.reset(reset),
		.io_in_ready(_globalsTaskBuffers_2_io_in_ready),
		.io_in_valid(_axis_stream_converters_in_global_2_io_dataOut_TVALID),
		.io_in_bits(_axis_stream_converters_in_global_2_io_dataOut_TDATA),
		.io_connStealNtw_ctrl_serveStealReq_valid(_globalsTaskBuffers_2_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connStealNtw_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_4_ctrl_serveStealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_4_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(_globalsTaskBuffers_2_io_connStealNtw_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(_globalsTaskBuffers_2_io_connStealNtw_data_qOutTask_bits)
	);
	GlobalTaskBuffer globalsTaskBuffers_3(
		.clock(clock),
		.reset(reset),
		.io_in_ready(_globalsTaskBuffers_3_io_in_ready),
		.io_in_valid(_axis_stream_converters_in_global_3_io_dataOut_TVALID),
		.io_in_bits(_axis_stream_converters_in_global_3_io_dataOut_TDATA),
		.io_connStealNtw_ctrl_serveStealReq_valid(_globalsTaskBuffers_3_io_connStealNtw_ctrl_serveStealReq_valid),
		.io_connStealNtw_ctrl_serveStealReq_ready(_getOutsideSpawnNetwork_io_connSS_5_ctrl_serveStealReq_ready),
		.io_connStealNtw_data_qOutTask_ready(_getOutsideSpawnNetwork_io_connSS_5_data_qOutTask_ready),
		.io_connStealNtw_data_qOutTask_valid(_globalsTaskBuffers_3_io_connStealNtw_data_qOutTask_valid),
		.io_connStealNtw_data_qOutTask_bits(_globalsTaskBuffers_3_io_connStealNtw_data_qOutTask_bits)
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
	reg [1:0] priorityReg;
	wire _GEN = io_addressIn_valid & io_peAddress_valid;
	always @(posedge clock)
		if (reset) begin
			stateReg <= 1'h0;
			addressReg <= 64'h0000000000000000;
			priorityReg <= 2'h3;
		end
		else if (stateReg)
			stateReg <= stateReg & ~io_addressOut_ready;
		else begin
			stateReg <= (io_addressIn_valid | io_peAddress_valid) | stateReg;
			if (_GEN) begin
				addressReg <= (|priorityReg ? io_addressIn_bits : io_peAddress_bits);
				priorityReg <= priorityReg - 2'h1;
			end
			else begin
				if (io_peAddress_valid)
					addressReg <= io_peAddress_bits;
				else if (io_addressIn_valid)
					addressReg <= io_addressIn_bits;
				if (io_peAddress_valid | ~(io_addressIn_valid & |priorityReg))
					;
				else
					priorityReg <= priorityReg - 2'h1;
			end
		end
	assign io_addressIn_ready = ~stateReg & (_GEN ? |priorityReg : ~io_peAddress_valid & io_addressIn_valid);
	assign io_peAddress_ready = ~stateReg & (_GEN ? ~(|priorityReg) : io_peAddress_valid);
	assign io_addressOut_valid = stateReg;
	assign io_addressOut_bits = addressReg;
endmodule
module ArgumentNotifierNetworkUnit_1 (
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
	reg [1:0] priorityReg;
	wire _GEN = io_addressIn_valid & io_peAddress_valid;
	always @(posedge clock)
		if (reset) begin
			stateReg <= 1'h0;
			addressReg <= 64'h0000000000000000;
			priorityReg <= 2'h2;
		end
		else if (stateReg)
			stateReg <= stateReg & ~io_addressOut_ready;
		else begin
			stateReg <= (io_addressIn_valid | io_peAddress_valid) | stateReg;
			if (_GEN) begin
				addressReg <= (|priorityReg ? io_addressIn_bits : io_peAddress_bits);
				priorityReg <= priorityReg - 2'h1;
			end
			else begin
				if (io_peAddress_valid)
					addressReg <= io_peAddress_bits;
				else if (io_addressIn_valid)
					addressReg <= io_addressIn_bits;
				if (io_peAddress_valid | ~(io_addressIn_valid & |priorityReg))
					;
				else
					priorityReg <= priorityReg - 2'h1;
			end
		end
	assign io_addressIn_ready = ~stateReg & (_GEN ? |priorityReg : ~io_peAddress_valid & io_addressIn_valid);
	assign io_peAddress_ready = ~stateReg & (_GEN ? ~(|priorityReg) : io_peAddress_valid);
	assign io_addressOut_valid = stateReg;
	assign io_addressOut_bits = addressReg;
endmodule
module ArgumentNotifierNetworkUnit_2 (
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
module ArgumentNotifierNetworkUnit_3 (
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
module elasticDemux_1 (
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
	io_connPE_1_bits,
	io_connPE_2_ready,
	io_connPE_2_valid,
	io_connPE_2_bits,
	io_connPE_3_ready,
	io_connPE_3_valid,
	io_connPE_3_bits
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
	output wire io_connPE_2_ready;
	input io_connPE_2_valid;
	input [63:0] io_connPE_2_bits;
	output wire io_connPE_3_ready;
	input io_connPE_3_valid;
	input [63:0] io_connPE_3_bits;
	wire _demux_io_source_ready;
	wire _demux_io_sinks_0_valid;
	wire [63:0] _demux_io_sinks_0_bits;
	wire _demux_io_select_ready;
	wire _arbs_0_io_sources_0_ready;
	wire _queues_3_io_addressOut_valid;
	wire [63:0] _queues_3_io_addressOut_bits;
	wire _queues_2_io_addressOut_valid;
	wire [63:0] _queues_2_io_addressOut_bits;
	wire _queues_1_io_addressOut_valid;
	wire [63:0] _queues_1_io_addressOut_bits;
	wire _queues_0_io_addressOut_valid;
	wire [63:0] _queues_0_io_addressOut_bits;
	wire _networkUnits_3_io_peAddress_ready;
	wire _networkUnits_3_io_addressOut_valid;
	wire [63:0] _networkUnits_3_io_addressOut_bits;
	wire _networkUnits_2_io_addressIn_ready;
	wire _networkUnits_2_io_peAddress_ready;
	wire _networkUnits_2_io_addressOut_valid;
	wire [63:0] _networkUnits_2_io_addressOut_bits;
	wire _networkUnits_1_io_addressIn_ready;
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
		.io_addressIn_ready(_networkUnits_1_io_addressIn_ready),
		.io_addressIn_valid(_networkUnits_2_io_addressOut_valid),
		.io_addressIn_bits(_networkUnits_2_io_addressOut_bits),
		.io_peAddress_ready(_networkUnits_1_io_peAddress_ready),
		.io_peAddress_valid(_queues_1_io_addressOut_valid),
		.io_peAddress_bits(_queues_1_io_addressOut_bits),
		.io_addressOut_ready(_networkUnits_0_io_addressIn_ready),
		.io_addressOut_valid(_networkUnits_1_io_addressOut_valid),
		.io_addressOut_bits(_networkUnits_1_io_addressOut_bits)
	);
	ArgumentNotifierNetworkUnit_2 networkUnits_2(
		.clock(clock),
		.reset(reset),
		.io_addressIn_ready(_networkUnits_2_io_addressIn_ready),
		.io_addressIn_valid(_networkUnits_3_io_addressOut_valid),
		.io_addressIn_bits(_networkUnits_3_io_addressOut_bits),
		.io_peAddress_ready(_networkUnits_2_io_peAddress_ready),
		.io_peAddress_valid(_queues_2_io_addressOut_valid),
		.io_peAddress_bits(_queues_2_io_addressOut_bits),
		.io_addressOut_ready(_networkUnits_1_io_addressIn_ready),
		.io_addressOut_valid(_networkUnits_2_io_addressOut_valid),
		.io_addressOut_bits(_networkUnits_2_io_addressOut_bits)
	);
	ArgumentNotifierNetworkUnit_3 networkUnits_3(
		.clock(clock),
		.reset(reset),
		.io_peAddress_ready(_networkUnits_3_io_peAddress_ready),
		.io_peAddress_valid(_queues_3_io_addressOut_valid),
		.io_peAddress_bits(_queues_3_io_addressOut_bits),
		.io_addressOut_ready(_networkUnits_2_io_addressIn_ready),
		.io_addressOut_valid(_networkUnits_3_io_addressOut_valid),
		.io_addressOut_bits(_networkUnits_3_io_addressOut_bits)
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
	AllocatorBuffer queues_2(
		.clock(clock),
		.reset(reset),
		.io_addressIn_ready(io_connPE_2_ready),
		.io_addressIn_valid(io_connPE_2_valid),
		.io_addressIn_bits(io_connPE_2_bits),
		.io_addressOut_ready(_networkUnits_2_io_peAddress_ready),
		.io_addressOut_valid(_queues_2_io_addressOut_valid),
		.io_addressOut_bits(_queues_2_io_addressOut_bits)
	);
	AllocatorBuffer queues_3(
		.clock(clock),
		.reset(reset),
		.io_addressIn_ready(io_connPE_3_ready),
		.io_addressIn_valid(io_connPE_3_valid),
		.io_addressIn_bits(io_connPE_3_bits),
		.io_addressOut_ready(_networkUnits_3_io_peAddress_ready),
		.io_addressOut_valid(_queues_3_io_addressOut_valid),
		.io_addressOut_bits(_queues_3_io_addressOut_bits)
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
	elasticDemux_1 demux(
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
module elasticDemux_2 (
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
module elasticDemux_3 (
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
	input [127:0] io_source_bits_data;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [1:0] io_sinks_0_bits_id;
	output wire [63:0] io_sinks_0_bits_addr;
	output wire [127:0] io_sinks_0_bits_data;
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
module ram_2x133 (
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
	output wire [132:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [132:0] W0_data;
	reg [132:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 133'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_3 (
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
	input [127:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [127:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [132:0] _ram_ext_R0_data;
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
	ram_2x133 ram_ext(
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
	assign io_deq_bits_data = _ram_ext_R0_data[129:2];
	assign io_deq_bits_resp = _ram_ext_R0_data[131:130];
	assign io_deq_bits_last = _ram_ext_R0_data[132];
endmodule
module ram_2x195 (
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
	output wire [194:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [194:0] W0_data;
	reg [194:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 195'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
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
	input [127:0] io_enq_bits_data;
	input io_enq_bits_sel;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [63:0] io_deq_bits_addr;
	output wire [127:0] io_deq_bits_data;
	output wire io_deq_bits_sel;
	wire [194:0] _ram_ext_R0_data;
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
	ram_2x195 ram_ext(
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
	assign io_deq_bits_data = _ram_ext_R0_data[193:66];
	assign io_deq_bits_sel = _ram_ext_R0_data[194];
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
	output wire [127:0] io_connStealNtw_data_qOutTask_bits;
	input io_m_axi_counter_ar_ready;
	output wire io_m_axi_counter_ar_valid;
	output wire [1:0] io_m_axi_counter_ar_bits_id;
	output wire [63:0] io_m_axi_counter_ar_bits_addr;
	output wire io_m_axi_counter_r_ready;
	input io_m_axi_counter_r_valid;
	input [1:0] io_m_axi_counter_r_bits_id;
	input [127:0] io_m_axi_counter_r_bits_data;
	input [1:0] io_m_axi_counter_r_bits_resp;
	input io_m_axi_counter_r_bits_last;
	input io_m_axi_counter_aw_ready;
	output wire io_m_axi_counter_aw_valid;
	output wire [1:0] io_m_axi_counter_aw_bits_id;
	output wire [63:0] io_m_axi_counter_aw_bits_addr;
	input io_m_axi_counter_w_ready;
	output wire io_m_axi_counter_w_valid;
	output wire [127:0] io_m_axi_counter_w_bits_data;
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
	input [127:0] io_m_axi_task_r_bits_data;
	output wire io_done;
	wire _spawn_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _spawn_rTaskCount_io_empty;
	wire _spawn_rTaskCount_io_full;
	wire _update_sinkBuffered__sinkBuffer_2_io_enq_ready;
	wire _update_sinkBuffered__sinkBuffer_1_io_enq_ready;
	wire _update_sinkBuffered__sinkBuffer_1_io_deq_valid;
	wire [1:0] _update_sinkBuffered__sinkBuffer_1_io_deq_bits_id;
	wire [63:0] _update_sinkBuffered__sinkBuffer_1_io_deq_bits_addr;
	wire [127:0] _update_sinkBuffered__sinkBuffer_1_io_deq_bits_data;
	wire _update_sinkBuffered__sinkBuffer_1_io_deq_bits_sel;
	wire _update_sinkBuffered__sinkBuffer_io_enq_ready;
	wire _update_sinkBuffered__sinkBuffer_io_deq_valid;
	wire [1:0] _update_sinkBuffered__sinkBuffer_io_deq_bits_id;
	wire [127:0] _update_sinkBuffered__sinkBuffer_io_deq_bits_data;
	wire [1:0] _update_sinkBuffered__sinkBuffer_io_deq_bits_resp;
	wire _update_sinkBuffered__sinkBuffer_io_deq_bits_last;
	wire _update_sinkBuffer_io_enq_ready;
	wire _update_sinkBuffer_io_deq_valid;
	wire [1:0] _update_sinkBuffer_io_deq_bits_id;
	wire [127:0] _update_sinkBuffer_io_deq_bits_data;
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
		.io_sources_0_bits({io_connNetwork_bits[63:4], 4'h0}),
		.io_sources_1_ready(_input_arbInput_io_sources_1_ready),
		.io_sources_1_valid(_input_sourceBuffer_io_deq_valid),
		.io_sources_1_bits(_input_sourceBuffer_io_deq_bits_addr),
		.io_sink_ready(_input_sourceBuffer_1_io_enq_ready),
		.io_sink_valid(_input_arbInput_io_sink_valid),
		.io_sink_bits(_input_arbInput_io_sink_bits),
		.io_select_ready(_input_arbInput_io_select_valid),
		.io_select_valid(_input_arbInput_io_select_valid)
	);
	elasticDemux_2 input_dmuxInput(
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
	elasticDemux_3 update_dmux(
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
	Queue2_ReadDataChannel_3 update_sinkBuffer(
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
	Queue2_ReadDataChannel_3 update_sinkBuffered__sinkBuffer(
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
		.io_enq_bits_data({96'h000000000000000000000000, _update_sinkBuffer_io_deq_bits_data[31:0] - update_decrement}),
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
		.io_enq_bits_size(3'h4),
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
	Queue2_UInt128 spawn_sinkBuffered__sinkBuffer(
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
	output wire [127:0] io_connStealNtw_data_qOutTask_bits;
	input io_m_axi_counter_ar_ready;
	output wire io_m_axi_counter_ar_valid;
	output wire [1:0] io_m_axi_counter_ar_bits_id;
	output wire [63:0] io_m_axi_counter_ar_bits_addr;
	output wire io_m_axi_counter_r_ready;
	input io_m_axi_counter_r_valid;
	input [1:0] io_m_axi_counter_r_bits_id;
	input [127:0] io_m_axi_counter_r_bits_data;
	input [1:0] io_m_axi_counter_r_bits_resp;
	input io_m_axi_counter_r_bits_last;
	input io_m_axi_counter_aw_ready;
	output wire io_m_axi_counter_aw_valid;
	output wire [1:0] io_m_axi_counter_aw_bits_id;
	output wire [63:0] io_m_axi_counter_aw_bits_addr;
	input io_m_axi_counter_w_ready;
	output wire io_m_axi_counter_w_valid;
	output wire [127:0] io_m_axi_counter_w_bits_data;
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
	input [127:0] io_m_axi_task_r_bits_data;
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
module AxisDataWidthConverter_16 (
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
	io_export_argIn_2_TREADY,
	io_export_argIn_2_TVALID,
	io_export_argIn_2_TDATA,
	io_export_argIn_3_TREADY,
	io_export_argIn_3_TVALID,
	io_export_argIn_3_TDATA,
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
	output wire io_export_argIn_2_TREADY;
	input io_export_argIn_2_TVALID;
	input [63:0] io_export_argIn_2_TDATA;
	output wire io_export_argIn_3_TREADY;
	input io_export_argIn_3_TVALID;
	input [63:0] io_export_argIn_3_TDATA;
	output wire io_export_done;
	output wire connStealNtw_0_ctrl_stealReq_valid;
	input connStealNtw_0_ctrl_stealReq_ready;
	input connStealNtw_0_data_qOutTask_ready;
	output wire connStealNtw_0_data_qOutTask_valid;
	output wire [127:0] connStealNtw_0_data_qOutTask_bits;
	input axi_full_argRoute_0_ar_ready;
	output wire axi_full_argRoute_0_ar_valid;
	output wire [1:0] axi_full_argRoute_0_ar_bits_id;
	output wire [63:0] axi_full_argRoute_0_ar_bits_addr;
	output wire axi_full_argRoute_0_r_ready;
	input axi_full_argRoute_0_r_valid;
	input [1:0] axi_full_argRoute_0_r_bits_id;
	input [127:0] axi_full_argRoute_0_r_bits_data;
	input [1:0] axi_full_argRoute_0_r_bits_resp;
	input axi_full_argRoute_0_r_bits_last;
	input axi_full_argRoute_0_aw_ready;
	output wire axi_full_argRoute_0_aw_valid;
	output wire [1:0] axi_full_argRoute_0_aw_bits_id;
	output wire [63:0] axi_full_argRoute_0_aw_bits_addr;
	input axi_full_argRoute_0_w_ready;
	output wire axi_full_argRoute_0_w_valid;
	output wire [127:0] axi_full_argRoute_0_w_bits_data;
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
	input [127:0] axi_full_argRoute_1_r_bits_data;
	wire _axis_stream_converters_in_3_io_dataOut_TVALID;
	wire [63:0] _axis_stream_converters_in_3_io_dataOut_TDATA;
	wire _axis_stream_converters_in_2_io_dataOut_TVALID;
	wire [63:0] _axis_stream_converters_in_2_io_dataOut_TDATA;
	wire _axis_stream_converters_in_1_io_dataOut_TVALID;
	wire [63:0] _axis_stream_converters_in_1_io_dataOut_TDATA;
	wire _axis_stream_converters_in_0_io_dataOut_TVALID;
	wire [63:0] _axis_stream_converters_in_0_io_dataOut_TDATA;
	wire _argRouteServers_0_io_connNetwork_ready;
	wire _argSide_io_connVAS_0_valid;
	wire [63:0] _argSide_io_connVAS_0_bits;
	wire _argSide_io_connPE_0_ready;
	wire _argSide_io_connPE_1_ready;
	wire _argSide_io_connPE_2_ready;
	wire _argSide_io_connPE_3_ready;
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
		.io_connPE_1_bits(_axis_stream_converters_in_1_io_dataOut_TDATA),
		.io_connPE_2_ready(_argSide_io_connPE_2_ready),
		.io_connPE_2_valid(_axis_stream_converters_in_2_io_dataOut_TVALID),
		.io_connPE_2_bits(_axis_stream_converters_in_2_io_dataOut_TDATA),
		.io_connPE_3_ready(_argSide_io_connPE_3_ready),
		.io_connPE_3_valid(_axis_stream_converters_in_3_io_dataOut_TVALID),
		.io_connPE_3_bits(_axis_stream_converters_in_3_io_dataOut_TDATA)
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
	AxisDataWidthConverter_16 axis_stream_converters_in_0(
		.io_dataIn_TREADY(io_export_argIn_0_TREADY),
		.io_dataIn_TVALID(io_export_argIn_0_TVALID),
		.io_dataIn_TDATA(io_export_argIn_0_TDATA),
		.io_dataOut_TREADY(_argSide_io_connPE_0_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_0_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_0_io_dataOut_TDATA)
	);
	AxisDataWidthConverter_16 axis_stream_converters_in_1(
		.io_dataIn_TREADY(io_export_argIn_1_TREADY),
		.io_dataIn_TVALID(io_export_argIn_1_TVALID),
		.io_dataIn_TDATA(io_export_argIn_1_TDATA),
		.io_dataOut_TREADY(_argSide_io_connPE_1_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_1_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_1_io_dataOut_TDATA)
	);
	AxisDataWidthConverter_16 axis_stream_converters_in_2(
		.io_dataIn_TREADY(io_export_argIn_2_TREADY),
		.io_dataIn_TVALID(io_export_argIn_2_TVALID),
		.io_dataIn_TDATA(io_export_argIn_2_TDATA),
		.io_dataOut_TREADY(_argSide_io_connPE_2_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_2_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_2_io_dataOut_TDATA)
	);
	AxisDataWidthConverter_16 axis_stream_converters_in_3(
		.io_dataIn_TREADY(io_export_argIn_3_TREADY),
		.io_dataIn_TVALID(io_export_argIn_3_TVALID),
		.io_dataIn_TDATA(io_export_argIn_3_TDATA),
		.io_dataOut_TREADY(_argSide_io_connPE_3_ready),
		.io_dataOut_TVALID(_axis_stream_converters_in_3_io_dataOut_TVALID),
		.io_dataOut_TDATA(_axis_stream_converters_in_3_io_dataOut_TDATA)
	);
endmodule
module ram_2x12 (
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
	output wire [11:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [11:0] W0_data;
	reg [11:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 12'bxxxxxxxxxxxx);
endmodule
module Queue2_AddressChannel_6 (
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
	input [8:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_prot;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [8:0] io_deq_bits_addr;
	output wire [2:0] io_deq_bits_prot;
	wire [11:0] _ram_ext_R0_data;
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
	ram_2x12 ram_ext(
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
	assign io_deq_bits_addr = _ram_ext_R0_data[8:0];
	assign io_deq_bits_prot = _ram_ext_R0_data[11:9];
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
module elasticDemux_4 (
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
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [8:0] io_source_bits_addr;
	input [2:0] io_source_bits_prot;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [8:0] io_sinks_0_bits_addr;
	output wire [2:0] io_sinks_0_bits_prot;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [8:0] io_sinks_1_bits_addr;
	output wire [2:0] io_sinks_1_bits_prot;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [8:0] io_sinks_2_bits_addr;
	output wire [2:0] io_sinks_2_bits_prot;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_0_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
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
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [63:0] io_sink_bits_data;
	output wire [1:0] io_sink_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire [3:0] _GEN = {io_sources_0_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [255:0] _GEN_0 = {io_sources_0_bits_data, io_sources_2_bits_data, io_sources_1_bits_data, io_sources_0_bits_data};
	wire [7:0] _GEN_1 = {io_sources_0_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire valid = io_select_valid & _GEN[io_select_bits];
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & (io_select_bits == 2'h0);
	assign io_sources_1_ready = fire & (io_select_bits == 2'h1);
	assign io_sources_2_ready = fire & (io_select_bits == 2'h2);
	assign io_sink_valid = valid;
	assign io_sink_bits_data = _GEN_0[io_select_bits * 64+:64];
	assign io_sink_bits_resp = _GEN_1[io_select_bits * 2+:2];
	assign io_select_ready = fire;
endmodule
module elasticDemux_6 (
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
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_0_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
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
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire [3:0] _GEN = {io_sources_0_valid, io_sources_2_valid, io_sources_1_valid, io_sources_0_valid};
	wire [7:0] _GEN_0 = {io_sources_0_bits_resp, io_sources_2_bits_resp, io_sources_1_bits_resp, io_sources_0_bits_resp};
	wire valid = io_select_valid & _GEN[io_select_bits];
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & (io_select_bits == 2'h0);
	assign io_sources_1_ready = fire & (io_select_bits == 2'h1);
	assign io_sources_2_ready = fire & (io_select_bits == 2'h2);
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
	m_axil_2_b_bits_resp
);
	input clock;
	input reset;
	output wire s_axil_ar_ready;
	input s_axil_ar_valid;
	input [8:0] s_axil_ar_bits_addr;
	input [2:0] s_axil_ar_bits_prot;
	input s_axil_r_ready;
	output wire s_axil_r_valid;
	output wire [63:0] s_axil_r_bits_data;
	output wire [1:0] s_axil_r_bits_resp;
	output wire s_axil_aw_ready;
	input s_axil_aw_valid;
	input [8:0] s_axil_aw_bits_addr;
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
	output wire [8:0] m_axil_0_ar_bits_addr;
	output wire [2:0] m_axil_0_ar_bits_prot;
	output wire m_axil_0_r_ready;
	input m_axil_0_r_valid;
	input [63:0] m_axil_0_r_bits_data;
	input [1:0] m_axil_0_r_bits_resp;
	input m_axil_0_aw_ready;
	output wire m_axil_0_aw_valid;
	output wire [8:0] m_axil_0_aw_bits_addr;
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
	output wire [8:0] m_axil_1_ar_bits_addr;
	output wire [2:0] m_axil_1_ar_bits_prot;
	output wire m_axil_1_r_ready;
	input m_axil_1_r_valid;
	input [63:0] m_axil_1_r_bits_data;
	input [1:0] m_axil_1_r_bits_resp;
	input m_axil_1_aw_ready;
	output wire m_axil_1_aw_valid;
	output wire [8:0] m_axil_1_aw_bits_addr;
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
	output wire [8:0] m_axil_2_ar_bits_addr;
	output wire [2:0] m_axil_2_ar_bits_prot;
	output wire m_axil_2_r_ready;
	input m_axil_2_r_valid;
	input [63:0] m_axil_2_r_bits_data;
	input [1:0] m_axil_2_r_bits_resp;
	input m_axil_2_aw_ready;
	output wire m_axil_2_aw_valid;
	output wire [8:0] m_axil_2_aw_bits_addr;
	output wire [2:0] m_axil_2_aw_bits_prot;
	input m_axil_2_w_ready;
	output wire m_axil_2_w_valid;
	output wire [63:0] m_axil_2_w_bits_data;
	output wire [7:0] m_axil_2_w_bits_strb;
	output wire m_axil_2_b_ready;
	input m_axil_2_b_valid;
	input [1:0] m_axil_2_b_bits_resp;
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
	wire [8:0] _s_axil__sourceBuffer_1_io_deq_bits_addr;
	wire [2:0] _s_axil__sourceBuffer_1_io_deq_bits_prot;
	wire _s_axil__sinkBuffer_io_enq_ready;
	wire _s_axil__sourceBuffer_io_deq_valid;
	wire [8:0] _s_axil__sourceBuffer_io_deq_bits_addr;
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
	Queue2_AddressChannel_6 s_axil__sourceBuffer(
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
	Queue2_AddressChannel_6 s_axil__sourceBuffer_1(
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
	elasticDemux_4 read_demux(
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
	elasticDemux_4 write_demux(
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
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(_s_axil__sourceBuffer_1_io_deq_valid & ~write_eagerFork_regs_1),
		.io_select_bits(_s_axil__sourceBuffer_1_io_deq_bits_addr[7:6])
	);
	elasticDemux_6 write_demux_1(
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
	input [8:0] s_axi_ar_bits_addr;
	input [2:0] s_axi_ar_bits_prot;
	input s_axi_r_ready;
	output wire s_axi_r_valid;
	output wire [31:0] s_axi_r_bits_data;
	output wire [1:0] s_axi_r_bits_resp;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [8:0] s_axi_aw_bits_addr;
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
	output wire [8:0] m_axi_ar_bits_addr;
	output wire [2:0] m_axi_ar_bits_prot;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [63:0] m_axi_r_bits_data;
	input [1:0] m_axi_r_bits_resp;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [8:0] m_axi_aw_bits_addr;
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
module elasticDemux_7 (
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
module ram_2x132 (
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
	output wire [131:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [131:0] W0_data;
	reg [131:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 132'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_6 (
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
	input [127:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits_id;
	output wire [127:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [131:0] _ram_ext_R0_data;
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
	ram_2x132 ram_ext(
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
	assign io_deq_bits_data = _ram_ext_R0_data[128:1];
	assign io_deq_bits_resp = _ram_ext_R0_data[130:129];
	assign io_deq_bits_last = _ram_ext_R0_data[131];
endmodule
module elasticBasicArbiter_2 (
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
	input [127:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [127:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	input io_sources_1_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire io_sink_bits_id;
	output wire [127:0] io_sink_bits_data;
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
	Queue2_ReadDataChannel_6 sink_sinkBuffer(
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
module elasticDemux_9 (
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
	input [127:0] io_source_bits_data;
	input [15:0] io_source_bits_strb;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [127:0] io_sinks_0_bits_data;
	output wire [15:0] io_sinks_0_bits_strb;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [127:0] io_sinks_1_bits_data;
	output wire [15:0] io_sinks_1_bits_strb;
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
module Queue2_WriteResponseChannel_4 (
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
module elasticBasicArbiter_3 (
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
	Queue2_WriteResponseChannel_4 sink_sinkBuffer(
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
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
	input [127:0] m_axi_0_r_bits_data;
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
	output wire [127:0] m_axi_0_w_bits_data;
	output wire [15:0] m_axi_0_w_bits_strb;
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
	input [127:0] m_axi_1_r_bits_data;
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
	output wire [127:0] m_axi_1_w_bits_data;
	output wire [15:0] m_axi_1_w_bits_strb;
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
	elasticDemux_7 read_demux(
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
	elasticBasicArbiter_2 read_arbiter(
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
	elasticDemux_7 write_demux(
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
	elasticDemux_9 write_demux_1(
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
	elasticBasicArbiter_3 write_arbiter(
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
module ram_2x18 (
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
	output wire [17:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [17:0] W0_data;
	reg [17:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 18'bxxxxxxxxxxxxxxxxxx);
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
	input [4:0] io_enq_bits_addr;
	input [7:0] io_enq_bits_len;
	input [2:0] io_enq_bits_size;
	input [1:0] io_enq_bits_burst;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [4:0] io_deq_bits_addr;
	output wire [7:0] io_deq_bits_len;
	output wire [2:0] io_deq_bits_size;
	output wire [1:0] io_deq_bits_burst;
	wire [17:0] _ram_ext_R0_data;
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
	ram_2x18 ram_ext(
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
	assign io_deq_bits_addr = _ram_ext_R0_data[4:0];
	assign io_deq_bits_len = _ram_ext_R0_data[12:5];
	assign io_deq_bits_size = _ram_ext_R0_data[15:13];
	assign io_deq_bits_burst = _ram_ext_R0_data[17:16];
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
	io_deq_bits_addr
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [4:0] io_enq_bits_addr;
	input [2:0] io_enq_bits_size;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [4:0] io_deq_bits_addr;
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
		.R0_data(io_deq_bits_addr),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data(io_enq_bits_addr)
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
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
	sink_bits_addr
);
	input clock;
	input reset;
	output wire source_ready;
	input source_valid;
	input [4:0] source_bits_addr;
	input [7:0] source_bits_len;
	input [2:0] source_bits_size;
	input [1:0] source_bits_burst;
	input sink_ready;
	output wire sink_valid;
	output wire [4:0] sink_bits_addr;
	wire _sink__sinkBuffer_io_enq_ready;
	wire _source__sourceBuffer_io_deq_valid;
	wire [4:0] _source__sourceBuffer_io_deq_bits_addr;
	wire [7:0] _source__sourceBuffer_io_deq_bits_len;
	wire [2:0] _source__sourceBuffer_io_deq_bits_size;
	wire [1:0] _source__sourceBuffer_io_deq_bits_burst;
	reg [4:0] addr;
	reg [7:0] ctr;
	reg generating;
	wire sink__valid = _source__sourceBuffer_io_deq_valid & _sink__sinkBuffer_io_enq_ready;
	wire last = ctr == 8'h00;
	wire [11:0] _result_addr_T = {7'h00, addr} << _source__sourceBuffer_io_deq_bits_size;
	wire last_1 = _source__sourceBuffer_io_deq_bits_len == 8'h00;
	always @(posedge clock) begin
		if (sink__valid) begin
			if (generating) begin
				if (~last) begin
					if (_source__sourceBuffer_io_deq_bits_burst == 2'h1)
						addr <= addr + 5'h01;
					else if (_source__sourceBuffer_io_deq_bits_burst == 2'h2)
						addr <= (~_source__sourceBuffer_io_deq_bits_len[4:0] & addr) | (_source__sourceBuffer_io_deq_bits_len[4:0] & (addr + 5'h01));
					ctr <= ctr - 8'h01;
				end
			end
			else if (~last_1) begin
				addr <= (_source__sourceBuffer_io_deq_bits_addr >> _source__sourceBuffer_io_deq_bits_size) + 5'h01;
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
		.io_enq_bits_addr((~generating | (_source__sourceBuffer_io_deq_bits_burst == 2'h0) ? _source__sourceBuffer_io_deq_bits_addr : _result_addr_T[4:0])),
		.io_enq_bits_size(_source__sourceBuffer_io_deq_bits_size),
		.io_enq_bits_last((generating ? last : last_1)),
		.io_deq_ready(sink_ready),
		.io_deq_valid(sink_valid),
		.io_deq_bits_addr(sink_bits_addr)
	);
endmodule
module SteerRight_1 (
	dataIn,
	offsetIn,
	dataOut
);
	input [255:0] dataIn;
	input offsetIn;
	output wire [127:0] dataOut;
	assign dataOut = (offsetIn ? dataIn[255:128] : dataIn[127:0]);
endmodule
module SteerLeft_2 (
	dataIn,
	offsetIn,
	dataOut
);
	input [127:0] dataIn;
	input offsetIn;
	output wire [255:0] dataOut;
	assign dataOut = (offsetIn ? {dataIn, 128'h00000000000000000000000000000000} : {128'h00000000000000000000000000000000, dataIn});
endmodule
module SteerLeft_3 (
	dataIn,
	offsetIn,
	dataOut
);
	input [15:0] dataIn;
	input offsetIn;
	output wire [31:0] dataOut;
	assign dataOut = (offsetIn ? {dataIn, 16'h0000} : {16'h0000, dataIn});
endmodule
module Upscale_1 (
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
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
	wire _write_offsetQueue_io_enq_ready;
	wire _write_offsetQueue_io_deq_valid;
	wire _write_offsetQueue_io_deq_bits;
	wire _write_addressGenerator_source_ready;
	wire _write_addressGenerator_sink_valid;
	wire [4:0] _write_addressGenerator_sink_bits_addr;
	wire _read_offsetQueue_io_enq_ready;
	wire _read_offsetQueue_io_deq_valid;
	wire _read_offsetQueue_io_deq_bits;
	wire _read_addressGenerator_source_ready;
	wire _read_addressGenerator_sink_valid;
	wire [4:0] _read_addressGenerator_sink_bits_addr;
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
	AddressGenerator_2 read_addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_read_addressGenerator_source_ready),
		.source_valid(s_axi_ar_valid & ~read_ar_eagerFork_regs_0),
		.source_bits_addr(s_axi_ar_bits_addr[4:0]),
		.source_bits_len(s_axi_ar_bits_len),
		.source_bits_size(s_axi_ar_bits_size),
		.source_bits_burst(s_axi_ar_bits_burst),
		.sink_ready(_read_offsetQueue_io_enq_ready),
		.sink_valid(_read_addressGenerator_sink_valid),
		.sink_bits_addr(_read_addressGenerator_sink_bits_addr)
	);
	Queue16_UInt1 read_offsetQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_offsetQueue_io_enq_ready),
		.io_enq_valid(_read_addressGenerator_sink_valid),
		.io_enq_bits(_read_addressGenerator_sink_bits_addr[4]),
		.io_deq_ready(m_axi_r_ready_0),
		.io_deq_valid(_read_offsetQueue_io_deq_valid),
		.io_deq_bits(_read_offsetQueue_io_deq_bits)
	);
	SteerRight_1 read_r_steerRight(
		.dataIn(m_axi_r_bits_data),
		.offsetIn(_read_offsetQueue_io_deq_bits),
		.dataOut(s_axi_r_bits_data)
	);
	AddressGenerator_2 write_addressGenerator(
		.clock(clock),
		.reset(reset),
		.source_ready(_write_addressGenerator_source_ready),
		.source_valid(s_axi_aw_valid & ~write_aw_eagerFork_regs_0),
		.source_bits_addr(s_axi_aw_bits_addr[4:0]),
		.source_bits_len(s_axi_aw_bits_len),
		.source_bits_size(s_axi_aw_bits_size),
		.source_bits_burst(s_axi_aw_bits_burst),
		.sink_ready(_write_offsetQueue_io_enq_ready),
		.sink_valid(_write_addressGenerator_sink_valid),
		.sink_bits_addr(_write_addressGenerator_sink_bits_addr)
	);
	Queue16_UInt1 write_offsetQueue(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_write_offsetQueue_io_enq_ready),
		.io_enq_valid(_write_addressGenerator_sink_valid),
		.io_enq_bits(_write_addressGenerator_sink_bits_addr[4]),
		.io_deq_ready(s_axi_w_ready_0),
		.io_deq_valid(_write_offsetQueue_io_deq_valid),
		.io_deq_bits(_write_offsetQueue_io_deq_bits)
	);
	SteerLeft_2 write_w_steerLeft(
		.dataIn(s_axi_w_bits_data),
		.offsetIn(_write_offsetQueue_io_deq_bits),
		.dataOut(m_axi_w_bits_data)
	);
	SteerLeft_3 write_w_steerLeftStrobe(
		.dataIn(s_axi_w_bits_strb),
		.offsetIn(_write_offsetQueue_io_deq_bits),
		.dataOut(m_axi_w_bits_strb)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_r_valid = s_axi_r_valid_0;
	assign s_axi_r_bits_resp = m_axi_r_bits_resp;
	assign s_axi_r_bits_last = m_axi_r_bits_last;
	assign s_axi_aw_ready = s_axi_aw_ready_0;
	assign s_axi_w_ready = s_axi_w_ready_0;
	assign s_axi_b_valid = m_axi_b_valid;
	assign s_axi_b_bits_resp = m_axi_b_bits_resp;
	assign m_axi_ar_valid = s_axi_ar_valid & ~read_ar_eagerFork_regs_1;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = s_axi_ar_bits_len;
	assign m_axi_ar_bits_size = s_axi_ar_bits_size;
	assign m_axi_ar_bits_burst = s_axi_ar_bits_burst;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_aw_valid = s_axi_aw_valid & ~write_aw_eagerFork_regs_1;
	assign m_axi_aw_bits_addr = s_axi_aw_bits_addr;
	assign m_axi_aw_bits_len = s_axi_aw_bits_len;
	assign m_axi_aw_bits_size = s_axi_aw_bits_size;
	assign m_axi_aw_bits_burst = s_axi_aw_bits_burst;
	assign m_axi_aw_bits_lock = s_axi_aw_bits_lock;
	assign m_axi_aw_bits_cache = s_axi_aw_bits_cache;
	assign m_axi_aw_bits_prot = s_axi_aw_bits_prot;
	assign m_axi_aw_bits_qos = s_axi_aw_bits_qos;
	assign m_axi_aw_bits_region = s_axi_aw_bits_region;
	assign m_axi_w_valid = m_axi_w_valid_0;
	assign m_axi_w_bits_last = s_axi_w_bits_last;
	assign m_axi_b_ready = s_axi_b_ready;
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
module Queue2_ReadAddressChannel_3 (
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
	Queue2_ReadAddressChannel_3 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(choice),
		.io_enq_bits_addr((choice ? io_sources_1_bits_addr : io_sources_0_bits_addr)),
		.io_enq_bits_len((choice ? io_sources_1_bits_len : io_sources_0_bits_len)),
		.io_enq_bits_size((choice ? io_sources_1_bits_size : io_sources_0_bits_size)),
		.io_enq_bits_burst((choice ? io_sources_1_bits_burst : io_sources_0_bits_burst)),
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
module elasticDemux_10 (
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
	Queue2_WriteAddressChannel_2 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(choice),
		.io_enq_bits_addr((choice ? io_sources_1_bits_addr : io_sources_0_bits_addr)),
		.io_enq_bits_len((choice ? io_sources_1_bits_len : io_sources_0_bits_len)),
		.io_enq_bits_size((choice ? io_sources_1_bits_size : io_sources_0_bits_size)),
		.io_enq_bits_burst((choice ? io_sources_1_bits_burst : io_sources_0_bits_burst)),
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
module elasticDemux_11 (
	io_source_ready,
	io_source_valid,
	io_source_bits_resp,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_resp,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_resp,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [1:0] io_source_bits_resp;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [1:0] io_sinks_0_bits_resp;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [1:0] io_sinks_1_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits ? io_sinks_1_ready : io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_1_valid = valid & io_select_bits;
	assign io_sinks_1_bits_resp = io_source_bits_resp;
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
	elasticDemux_10 read_demux(
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
		.io_sink_ready(m_axi_w_ready),
		.io_sink_valid(m_axi_w_valid),
		.io_sink_bits_data(m_axi_w_bits_data),
		.io_sink_bits_strb(m_axi_w_bits_strb),
		.io_select_ready(_write_mux_io_select_ready),
		.io_select_valid(_write_portQueue_io_deq_valid),
		.io_select_bits(_write_portQueue_io_deq_bits)
	);
	elasticDemux_11 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(m_axi_b_valid & ~write_eagerFork_regs_0),
		.io_source_bits_resp(m_axi_b_bits_resp),
		.io_sinks_0_ready(s_axi_0_b_ready),
		.io_sinks_0_valid(s_axi_0_b_valid),
		.io_sinks_0_bits_resp(s_axi_0_b_bits_resp),
		.io_sinks_1_ready(s_axi_1_b_ready),
		.io_sinks_1_valid(s_axi_1_b_valid),
		.io_sinks_1_bits_resp(s_axi_1_b_bits_resp),
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
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
	wire _upscale_1_s_axi_ar_ready;
	wire _upscale_1_s_axi_r_valid;
	wire [127:0] _upscale_1_s_axi_r_bits_data;
	wire [1:0] _upscale_1_s_axi_r_bits_resp;
	wire _upscale_1_s_axi_r_bits_last;
	wire _upscale_1_s_axi_aw_ready;
	wire _upscale_1_s_axi_w_ready;
	wire _upscale_1_s_axi_b_valid;
	wire _upscale_1_m_axi_ar_valid;
	wire [63:0] _upscale_1_m_axi_ar_bits_addr;
	wire [7:0] _upscale_1_m_axi_ar_bits_len;
	wire [2:0] _upscale_1_m_axi_ar_bits_size;
	wire [1:0] _upscale_1_m_axi_ar_bits_burst;
	wire _upscale_1_m_axi_ar_bits_lock;
	wire [3:0] _upscale_1_m_axi_ar_bits_cache;
	wire [2:0] _upscale_1_m_axi_ar_bits_prot;
	wire [3:0] _upscale_1_m_axi_ar_bits_qos;
	wire [3:0] _upscale_1_m_axi_ar_bits_region;
	wire _upscale_1_m_axi_r_ready;
	wire _upscale_1_m_axi_aw_valid;
	wire [63:0] _upscale_1_m_axi_aw_bits_addr;
	wire [7:0] _upscale_1_m_axi_aw_bits_len;
	wire [2:0] _upscale_1_m_axi_aw_bits_size;
	wire [1:0] _upscale_1_m_axi_aw_bits_burst;
	wire _upscale_1_m_axi_aw_bits_lock;
	wire [3:0] _upscale_1_m_axi_aw_bits_cache;
	wire [2:0] _upscale_1_m_axi_aw_bits_prot;
	wire [3:0] _upscale_1_m_axi_aw_bits_qos;
	wire [3:0] _upscale_1_m_axi_aw_bits_region;
	wire _upscale_1_m_axi_w_valid;
	wire [255:0] _upscale_1_m_axi_w_bits_data;
	wire [31:0] _upscale_1_m_axi_w_bits_strb;
	wire _upscale_1_m_axi_w_bits_last;
	wire _upscale_1_m_axi_b_ready;
	wire _upscale_0_s_axi_ar_ready;
	wire _upscale_0_s_axi_r_valid;
	wire [127:0] _upscale_0_s_axi_r_bits_data;
	wire [1:0] _upscale_0_s_axi_r_bits_resp;
	wire _upscale_0_s_axi_r_bits_last;
	wire _upscale_0_s_axi_aw_ready;
	wire _upscale_0_s_axi_w_ready;
	wire _upscale_0_s_axi_b_valid;
	wire _upscale_0_m_axi_ar_valid;
	wire [63:0] _upscale_0_m_axi_ar_bits_addr;
	wire [7:0] _upscale_0_m_axi_ar_bits_len;
	wire [2:0] _upscale_0_m_axi_ar_bits_size;
	wire [1:0] _upscale_0_m_axi_ar_bits_burst;
	wire _upscale_0_m_axi_ar_bits_lock;
	wire [3:0] _upscale_0_m_axi_ar_bits_cache;
	wire [2:0] _upscale_0_m_axi_ar_bits_prot;
	wire [3:0] _upscale_0_m_axi_ar_bits_qos;
	wire [3:0] _upscale_0_m_axi_ar_bits_region;
	wire _upscale_0_m_axi_r_ready;
	wire _upscale_0_m_axi_aw_valid;
	wire [63:0] _upscale_0_m_axi_aw_bits_addr;
	wire [7:0] _upscale_0_m_axi_aw_bits_len;
	wire [2:0] _upscale_0_m_axi_aw_bits_size;
	wire [1:0] _upscale_0_m_axi_aw_bits_burst;
	wire _upscale_0_m_axi_aw_bits_lock;
	wire [3:0] _upscale_0_m_axi_aw_bits_cache;
	wire [2:0] _upscale_0_m_axi_aw_bits_prot;
	wire [3:0] _upscale_0_m_axi_aw_bits_qos;
	wire [3:0] _upscale_0_m_axi_aw_bits_region;
	wire _upscale_0_m_axi_w_valid;
	wire [255:0] _upscale_0_m_axi_w_bits_data;
	wire [31:0] _upscale_0_m_axi_w_bits_strb;
	wire _upscale_0_m_axi_w_bits_last;
	wire _upscale_0_m_axi_b_ready;
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
	wire [127:0] _idDemux_m_axi_0_w_bits_data;
	wire [15:0] _idDemux_m_axi_0_w_bits_strb;
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
	wire [127:0] _idDemux_m_axi_1_w_bits_data;
	wire [15:0] _idDemux_m_axi_1_w_bits_strb;
	wire _idDemux_m_axi_1_w_bits_last;
	wire _idDemux_m_axi_1_b_ready;
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
		.m_axi_0_ar_ready(_upscale_0_s_axi_ar_ready),
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
		.m_axi_0_r_valid(_upscale_0_s_axi_r_valid),
		.m_axi_0_r_bits_data(_upscale_0_s_axi_r_bits_data),
		.m_axi_0_r_bits_resp(_upscale_0_s_axi_r_bits_resp),
		.m_axi_0_r_bits_last(_upscale_0_s_axi_r_bits_last),
		.m_axi_0_aw_ready(_upscale_0_s_axi_aw_ready),
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
		.m_axi_0_w_ready(_upscale_0_s_axi_w_ready),
		.m_axi_0_w_valid(_idDemux_m_axi_0_w_valid),
		.m_axi_0_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.m_axi_0_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.m_axi_0_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.m_axi_0_b_ready(_idDemux_m_axi_0_b_ready),
		.m_axi_0_b_valid(_upscale_0_s_axi_b_valid),
		.m_axi_1_ar_ready(_upscale_1_s_axi_ar_ready),
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
		.m_axi_1_r_valid(_upscale_1_s_axi_r_valid),
		.m_axi_1_r_bits_data(_upscale_1_s_axi_r_bits_data),
		.m_axi_1_r_bits_resp(_upscale_1_s_axi_r_bits_resp),
		.m_axi_1_r_bits_last(_upscale_1_s_axi_r_bits_last),
		.m_axi_1_aw_ready(_upscale_1_s_axi_aw_ready),
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
		.m_axi_1_w_ready(_upscale_1_s_axi_w_ready),
		.m_axi_1_w_valid(_idDemux_m_axi_1_w_valid),
		.m_axi_1_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.m_axi_1_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.m_axi_1_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.m_axi_1_b_ready(_idDemux_m_axi_1_b_ready),
		.m_axi_1_b_valid(_upscale_1_s_axi_b_valid)
	);
	Upscale_1 upscale_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_upscale_0_s_axi_ar_ready),
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
		.s_axi_r_valid(_upscale_0_s_axi_r_valid),
		.s_axi_r_bits_data(_upscale_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_upscale_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_upscale_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_upscale_0_s_axi_aw_ready),
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
		.s_axi_w_ready(_upscale_0_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_0_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_0_b_ready),
		.s_axi_b_valid(_upscale_0_s_axi_b_valid),
		.s_axi_b_bits_resp(),
		.m_axi_ar_ready(_module_s_axi_0_ar_ready),
		.m_axi_ar_valid(_upscale_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_upscale_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_upscale_0_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_upscale_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_upscale_0_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_upscale_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_upscale_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_upscale_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_upscale_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_upscale_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_upscale_0_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_0_r_valid),
		.m_axi_r_bits_data(_module_s_axi_0_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_0_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_0_aw_ready),
		.m_axi_aw_valid(_upscale_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_upscale_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_upscale_0_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_upscale_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_upscale_0_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_upscale_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_upscale_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_upscale_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_upscale_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_upscale_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_0_w_ready),
		.m_axi_w_valid(_upscale_0_m_axi_w_valid),
		.m_axi_w_bits_data(_upscale_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_upscale_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_upscale_0_m_axi_w_bits_last),
		.m_axi_b_ready(_upscale_0_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_0_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_0_b_bits_resp)
	);
	Upscale_1 upscale_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_upscale_1_s_axi_ar_ready),
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
		.s_axi_r_valid(_upscale_1_s_axi_r_valid),
		.s_axi_r_bits_data(_upscale_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_upscale_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_upscale_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_upscale_1_s_axi_aw_ready),
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
		.s_axi_w_ready(_upscale_1_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_1_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_1_b_ready),
		.s_axi_b_valid(_upscale_1_s_axi_b_valid),
		.s_axi_b_bits_resp(),
		.m_axi_ar_ready(_module_s_axi_1_ar_ready),
		.m_axi_ar_valid(_upscale_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_upscale_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_upscale_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_upscale_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_upscale_1_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_upscale_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_upscale_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_upscale_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_upscale_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_upscale_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_upscale_1_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_1_r_valid),
		.m_axi_r_bits_data(_module_s_axi_1_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_1_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_1_aw_ready),
		.m_axi_aw_valid(_upscale_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_upscale_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_upscale_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_upscale_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_upscale_1_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_upscale_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_upscale_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_upscale_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_upscale_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_upscale_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_1_w_ready),
		.m_axi_w_valid(_upscale_1_m_axi_w_valid),
		.m_axi_w_bits_data(_upscale_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_upscale_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_upscale_1_m_axi_w_bits_last),
		.m_axi_b_ready(_upscale_1_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_1_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_1_b_bits_resp)
	);
	IdMux module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_0_ar_ready(_module_s_axi_0_ar_ready),
		.s_axi_0_ar_valid(_upscale_0_m_axi_ar_valid),
		.s_axi_0_ar_bits_addr(_upscale_0_m_axi_ar_bits_addr),
		.s_axi_0_ar_bits_len(_upscale_0_m_axi_ar_bits_len),
		.s_axi_0_ar_bits_size(_upscale_0_m_axi_ar_bits_size),
		.s_axi_0_ar_bits_burst(_upscale_0_m_axi_ar_bits_burst),
		.s_axi_0_ar_bits_lock(_upscale_0_m_axi_ar_bits_lock),
		.s_axi_0_ar_bits_cache(_upscale_0_m_axi_ar_bits_cache),
		.s_axi_0_ar_bits_prot(_upscale_0_m_axi_ar_bits_prot),
		.s_axi_0_ar_bits_qos(_upscale_0_m_axi_ar_bits_qos),
		.s_axi_0_ar_bits_region(_upscale_0_m_axi_ar_bits_region),
		.s_axi_0_r_ready(_upscale_0_m_axi_r_ready),
		.s_axi_0_r_valid(_module_s_axi_0_r_valid),
		.s_axi_0_r_bits_data(_module_s_axi_0_r_bits_data),
		.s_axi_0_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.s_axi_0_r_bits_last(_module_s_axi_0_r_bits_last),
		.s_axi_0_aw_ready(_module_s_axi_0_aw_ready),
		.s_axi_0_aw_valid(_upscale_0_m_axi_aw_valid),
		.s_axi_0_aw_bits_addr(_upscale_0_m_axi_aw_bits_addr),
		.s_axi_0_aw_bits_len(_upscale_0_m_axi_aw_bits_len),
		.s_axi_0_aw_bits_size(_upscale_0_m_axi_aw_bits_size),
		.s_axi_0_aw_bits_burst(_upscale_0_m_axi_aw_bits_burst),
		.s_axi_0_aw_bits_lock(_upscale_0_m_axi_aw_bits_lock),
		.s_axi_0_aw_bits_cache(_upscale_0_m_axi_aw_bits_cache),
		.s_axi_0_aw_bits_prot(_upscale_0_m_axi_aw_bits_prot),
		.s_axi_0_aw_bits_qos(_upscale_0_m_axi_aw_bits_qos),
		.s_axi_0_aw_bits_region(_upscale_0_m_axi_aw_bits_region),
		.s_axi_0_w_ready(_module_s_axi_0_w_ready),
		.s_axi_0_w_valid(_upscale_0_m_axi_w_valid),
		.s_axi_0_w_bits_data(_upscale_0_m_axi_w_bits_data),
		.s_axi_0_w_bits_strb(_upscale_0_m_axi_w_bits_strb),
		.s_axi_0_w_bits_last(_upscale_0_m_axi_w_bits_last),
		.s_axi_0_b_ready(_upscale_0_m_axi_b_ready),
		.s_axi_0_b_valid(_module_s_axi_0_b_valid),
		.s_axi_0_b_bits_resp(_module_s_axi_0_b_bits_resp),
		.s_axi_1_ar_ready(_module_s_axi_1_ar_ready),
		.s_axi_1_ar_valid(_upscale_1_m_axi_ar_valid),
		.s_axi_1_ar_bits_addr(_upscale_1_m_axi_ar_bits_addr),
		.s_axi_1_ar_bits_len(_upscale_1_m_axi_ar_bits_len),
		.s_axi_1_ar_bits_size(_upscale_1_m_axi_ar_bits_size),
		.s_axi_1_ar_bits_burst(_upscale_1_m_axi_ar_bits_burst),
		.s_axi_1_ar_bits_lock(_upscale_1_m_axi_ar_bits_lock),
		.s_axi_1_ar_bits_cache(_upscale_1_m_axi_ar_bits_cache),
		.s_axi_1_ar_bits_prot(_upscale_1_m_axi_ar_bits_prot),
		.s_axi_1_ar_bits_qos(_upscale_1_m_axi_ar_bits_qos),
		.s_axi_1_ar_bits_region(_upscale_1_m_axi_ar_bits_region),
		.s_axi_1_r_ready(_upscale_1_m_axi_r_ready),
		.s_axi_1_r_valid(_module_s_axi_1_r_valid),
		.s_axi_1_r_bits_data(_module_s_axi_1_r_bits_data),
		.s_axi_1_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.s_axi_1_r_bits_last(_module_s_axi_1_r_bits_last),
		.s_axi_1_aw_ready(_module_s_axi_1_aw_ready),
		.s_axi_1_aw_valid(_upscale_1_m_axi_aw_valid),
		.s_axi_1_aw_bits_addr(_upscale_1_m_axi_aw_bits_addr),
		.s_axi_1_aw_bits_len(_upscale_1_m_axi_aw_bits_len),
		.s_axi_1_aw_bits_size(_upscale_1_m_axi_aw_bits_size),
		.s_axi_1_aw_bits_burst(_upscale_1_m_axi_aw_bits_burst),
		.s_axi_1_aw_bits_lock(_upscale_1_m_axi_aw_bits_lock),
		.s_axi_1_aw_bits_cache(_upscale_1_m_axi_aw_bits_cache),
		.s_axi_1_aw_bits_prot(_upscale_1_m_axi_aw_bits_prot),
		.s_axi_1_aw_bits_qos(_upscale_1_m_axi_aw_bits_qos),
		.s_axi_1_aw_bits_region(_upscale_1_m_axi_aw_bits_region),
		.s_axi_1_w_ready(_module_s_axi_1_w_ready),
		.s_axi_1_w_valid(_upscale_1_m_axi_w_valid),
		.s_axi_1_w_bits_data(_upscale_1_m_axi_w_bits_data),
		.s_axi_1_w_bits_strb(_upscale_1_m_axi_w_bits_strb),
		.s_axi_1_w_bits_last(_upscale_1_m_axi_w_bits_last),
		.s_axi_1_b_ready(_upscale_1_m_axi_b_ready),
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
module AxiUserYanker (
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
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
	input [127:0] m_axi_r_bits_data;
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
	output wire [127:0] m_axi_w_bits_data;
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
module ram_2x145 (
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
	output wire [144:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [144:0] W0_data;
	reg [144:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 145'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_WriteDataChannel_4 (
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
	input [127:0] io_enq_bits_data;
	input [15:0] io_enq_bits_strb;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [127:0] io_deq_bits_data;
	output wire [15:0] io_deq_bits_strb;
	output wire io_deq_bits_last;
	wire [144:0] _ram_ext_R0_data;
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
	ram_2x145 ram_ext(
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
	assign io_deq_bits_data = _ram_ext_R0_data[127:0];
	assign io_deq_bits_strb = _ram_ext_R0_data[143:128];
	assign io_deq_bits_last = _ram_ext_R0_data[144];
endmodule
module ram_64x3 (
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
	output wire [2:0] R0_data;
	input [5:0] W0_addr;
	input W0_en;
	input W0_clk;
	input [2:0] W0_data;
	reg [2:0] Memory [0:63];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 3'bxxx);
endmodule
module Queue64_Control (
	clock,
	reset,
	io_enq_ready,
	io_enq_valid,
	io_enq_bits_beatFirst,
	io_enq_bits_beatLast,
	io_enq_bits_transferFirst,
	io_enq_bits_transferLast,
	io_deq_ready,
	io_deq_valid,
	io_deq_bits_beatFirst,
	io_deq_bits_beatLast,
	io_deq_bits_transferLast
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input io_enq_bits_beatFirst;
	input io_enq_bits_beatLast;
	input io_enq_bits_transferFirst;
	input io_enq_bits_transferLast;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire io_deq_bits_beatFirst;
	output wire io_deq_bits_beatLast;
	output wire io_deq_bits_transferLast;
	wire [2:0] _ram_ext_R0_data;
	reg [5:0] enq_ptr_value;
	reg [5:0] deq_ptr_value;
	reg maybe_full;
	wire ptr_match = enq_ptr_value == deq_ptr_value;
	wire empty = ptr_match & ~maybe_full;
	wire full = ptr_match & maybe_full;
	wire do_enq = ~full & io_enq_valid;
	always @(posedge clock)
		if (reset) begin
			enq_ptr_value <= 6'h00;
			deq_ptr_value <= 6'h00;
			maybe_full <= 1'h0;
		end
		else begin : sv2v_autoblock_1
			reg do_deq;
			do_deq = io_deq_ready & ~empty;
			if (do_enq)
				enq_ptr_value <= enq_ptr_value + 6'h01;
			if (do_deq)
				deq_ptr_value <= deq_ptr_value + 6'h01;
			if (~(do_enq == do_deq))
				maybe_full <= do_enq;
		end
	ram_64x3 ram_ext(
		.R0_addr(deq_ptr_value),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(enq_ptr_value),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_transferLast, io_enq_bits_beatLast, io_enq_bits_beatFirst})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_beatFirst = _ram_ext_R0_data[0];
	assign io_deq_bits_beatLast = _ram_ext_R0_data[1];
	assign io_deq_bits_transferLast = _ram_ext_R0_data[2];
endmodule
module ram_2x261 (
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
	output wire [260:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [260:0] W0_data;
	reg [260:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 261'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_8 (
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
	input [255:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [1:0] io_deq_bits_id;
	output wire [255:0] io_deq_bits_data;
	output wire [1:0] io_deq_bits_resp;
	output wire io_deq_bits_last;
	wire [260:0] _ram_ext_R0_data;
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
	ram_2x261 ram_ext(
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
	assign io_deq_bits_data = _ram_ext_R0_data[257:2];
	assign io_deq_bits_resp = _ram_ext_R0_data[259:258];
	assign io_deq_bits_last = _ram_ext_R0_data[260];
endmodule
module elasticMux_3 (
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
	io_sink_ready,
	io_sink_valid,
	io_sink_bits_id,
	io_sink_bits_data,
	io_sink_bits_resp,
	io_sink_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_sources_0_ready;
	input io_sources_0_valid;
	input [1:0] io_sources_0_bits_id;
	input [255:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [1:0] io_sources_1_bits_id;
	input [255:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	input io_sources_1_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_id;
	output wire [255:0] io_sink_bits_data;
	output wire [1:0] io_sink_bits_resp;
	output wire io_sink_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & (io_select_bits ? io_sources_1_valid : io_sources_0_valid);
	wire fire = valid & io_sink_ready;
	assign io_sources_0_ready = fire & ~io_select_bits;
	assign io_sources_1_ready = fire & io_select_bits;
	assign io_sink_valid = valid;
	assign io_sink_bits_id = (io_select_bits ? io_sources_1_bits_id : io_sources_0_bits_id);
	assign io_sink_bits_data = (io_select_bits ? io_sources_1_bits_data : io_sources_0_bits_data);
	assign io_sink_bits_resp = (io_select_bits ? io_sources_1_bits_resp : io_sources_0_bits_resp);
	assign io_sink_bits_last = (io_select_bits ? io_sources_1_bits_last : io_sources_0_bits_last);
	assign io_select_ready = fire;
endmodule
module elasticDemux_12 (
	io_source_ready,
	io_source_valid,
	io_source_bits_id,
	io_source_bits_data,
	io_source_bits_resp,
	io_source_bits_last,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_id,
	io_sinks_0_bits_data,
	io_sinks_0_bits_resp,
	io_sinks_0_bits_last,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [1:0] io_source_bits_id;
	input [255:0] io_source_bits_data;
	input [1:0] io_source_bits_resp;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [1:0] io_sinks_0_bits_id;
	output wire [255:0] io_sinks_0_bits_data;
	output wire [1:0] io_sinks_0_bits_resp;
	output wire io_sinks_0_bits_last;
	output wire io_select_ready;
	input io_select_valid;
	input io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire fire = valid & (io_select_bits | io_sinks_0_ready);
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & ~io_select_bits;
	assign io_sinks_0_bits_id = io_source_bits_id;
	assign io_sinks_0_bits_data = io_source_bits_data;
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_0_bits_last = io_source_bits_last;
	assign io_select_ready = fire;
endmodule
module Widen (
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
	s_axi_b_ready,
	s_axi_b_valid,
	s_axi_b_bits_id,
	s_axi_b_bits_resp,
	m_axi_ar_ready,
	m_axi_ar_valid,
	m_axi_ar_bits_id,
	m_axi_ar_bits_addr,
	m_axi_ar_bits_len,
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
	output wire [255:0] s_axi_r_bits_data;
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
	input [255:0] s_axi_w_bits_data;
	input [31:0] s_axi_w_bits_strb;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	output wire [1:0] s_axi_b_bits_id;
	output wire [1:0] s_axi_b_bits_resp;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [1:0] m_axi_ar_bits_id;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
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
	wire read_fork0_result_ready;
	wire _read_fork1_eagerFork_result_valid_T_4;
	wire _read_fork1_fork0_eagerFork_result_valid_T_2;
	wire read_wireControl_ready;
	wire _read_fork1_demux_io_source_ready;
	wire _read_fork1_demux_io_sinks_0_valid;
	wire [1:0] _read_fork1_demux_io_sinks_0_bits_id;
	wire [255:0] _read_fork1_demux_io_sinks_0_bits_data;
	wire [1:0] _read_fork1_demux_io_sinks_0_bits_resp;
	wire _read_fork1_demux_io_sinks_0_bits_last;
	wire _read_fork1_demux_io_select_ready;
	wire _read_fork1_mux_io_sources_0_ready;
	wire _read_fork1_mux_io_sink_valid;
	wire [1:0] _read_fork1_mux_io_sink_bits_id;
	wire [255:0] _read_fork1_mux_io_sink_bits_data;
	wire [1:0] _read_fork1_mux_io_sink_bits_resp;
	wire _read_fork1_mux_io_sink_bits_last;
	wire _read_fork1_mux_io_select_ready;
	wire _read_fork1_sourceBuffer_1_io_enq_ready;
	wire _read_fork1_sourceBuffer_1_io_deq_valid;
	wire [1:0] _read_fork1_sourceBuffer_1_io_deq_bits_id;
	wire [255:0] _read_fork1_sourceBuffer_1_io_deq_bits_data;
	wire [1:0] _read_fork1_sourceBuffer_1_io_deq_bits_resp;
	wire _read_fork1_sourceBuffer_1_io_deq_bits_last;
	wire _read_fork1_sourceBuffer_io_deq_valid;
	wire _read_fork1_sourceBuffer_io_deq_bits_beatFirst;
	wire _read_fork1_sourceBuffer_io_deq_bits_beatLast;
	wire [2:0] read_fork0_control_wire0_bits_size = s_axi_ar_bits_size;
	wire [4:0] read_fork0_transform0_mask1 = 5'h1f;
	wire read_fork0_control_wire0_ready = read_wireControl_ready;
	wire read_fork0_control_wire0_valid;
	wire read_fork0_control_wire0_bits_first;
	wire read_fork0_control_wire0_bits_last;
	wire [7:0] read_fork0_transform0_mask0 = (8'h01 << s_axi_ar_bits_size) - 8'h01;
	wire [7:0] read_fork0_transform0_addr0 = s_axi_ar_bits_addr[7:0] & ~read_fork0_transform0_mask0;
	wire [7:0] read_fork0_transform0_addr1 = s_axi_ar_bits_addr[7:0] & {3'h7, ~read_fork0_transform0_mask1};
	wire [16:0] read_fork0_transform0_dtsize = ({1'h0, {7'h00, {1'h0, s_axi_ar_bits_len} + 9'h001} << s_axi_ar_bits_size} + {9'h000, read_fork0_transform0_addr0}) - {9'h000, read_fork0_transform0_addr1};
	wire [16:0] read_fork0_transform0_len0 = {5'h00, read_fork0_transform0_dtsize[16:5]};
	wire [16:0] read_fork0_transform0_len1 = (|(read_fork0_transform0_dtsize[4:0] & read_fork0_transform0_mask1) ? read_fork0_transform0_len0 + 17'h00001 : read_fork0_transform0_len0);
	wire read_wireControl_valid = read_fork0_control_wire0_valid;
	wire read_wireControl_bits_transferFirst = read_fork0_control_wire0_bits_first;
	wire read_wireControl_bits_transferLast = read_fork0_control_wire0_bits_last;
	reg read_fork0_control_state;
	wire [7:0] read_fork0_control_mask = (8'h01 << (3'h5 - s_axi_ar_bits_size)) - 8'h01;
	reg [6:0] read_fork0_control_index;
	reg [7:0] read_fork0_control_counter;
	wire [63:0] _read_fork0_control_nextIndex_T_5 = s_axi_ar_bits_addr >> s_axi_ar_bits_size;
	wire [6:0] read_fork0_control_wire0_bits_index = (read_fork0_control_state ? ({1'h0, read_fork0_control_mask[6:0] & read_fork0_control_index} == read_fork0_control_mask ? 7'h00 : read_fork0_control_index + 7'h01) : _read_fork0_control_nextIndex_T_5[6:0] & read_fork0_control_mask[6:0]);
	assign read_fork0_control_wire0_bits_first = ~read_fork0_control_state;
	assign read_fork0_control_wire0_bits_last = (read_fork0_control_state ? read_fork0_control_counter == s_axi_ar_bits_len : s_axi_ar_bits_len == 8'h00);
	wire [7:0] read_fork0_control_transform0_mask = (8'h01 << (3'h5 - read_fork0_control_wire0_bits_size)) - 8'h01;
	wire [6:0] _GEN = read_fork0_control_transform0_mask[6:0] & read_fork0_control_wire0_bits_index;
	wire read_wireControl_bits_beatFirst = read_fork0_control_wire0_bits_first | (_GEN == 7'h00);
	wire read_wireControl_bits_beatLast = read_fork0_control_wire0_bits_last | ({1'h0, _GEN} == read_fork0_control_transform0_mask);
	reg read_fork0_eagerFork_regs_0;
	reg read_fork0_eagerFork_regs_1;
	assign read_fork0_control_wire0_valid = s_axi_ar_valid & ~read_fork0_eagerFork_regs_1;
	wire read_fork0_eagerFork_s_axi_ar_ready_qual1_0 = m_axi_ar_ready | read_fork0_eagerFork_regs_0;
	wire read_fork0_eagerFork_s_axi_ar_ready_qual1_1 = read_fork0_result_ready | read_fork0_eagerFork_regs_1;
	wire s_axi_ar_ready_0 = read_fork0_eagerFork_s_axi_ar_ready_qual1_0 & read_fork0_eagerFork_s_axi_ar_ready_qual1_1;
	wire s_axi_r_valid_0 = ((_read_fork1_mux_io_sink_valid & _read_fork1_fork0_eagerFork_result_valid_T_2) & _read_fork1_sourceBuffer_io_deq_valid) & _read_fork1_eagerFork_result_valid_T_4;
	wire read_fork1_fork0_join0_mkJoin_fire = s_axi_r_ready & s_axi_r_valid_0;
	reg read_fork1_fork0_eagerFork_regs_0;
	reg read_fork1_fork0_eagerFork_regs_1;
	assign _read_fork1_fork0_eagerFork_result_valid_T_2 = ~read_fork1_fork0_eagerFork_regs_1;
	wire read_fork1_fork0_eagerFork_wireMuxSink_ready_qual1_0 = _read_fork1_demux_io_source_ready | read_fork1_fork0_eagerFork_regs_0;
	wire read_fork1_fork0_eagerFork_wireMuxSink_ready_qual1_1 = read_fork1_fork0_join0_mkJoin_fire | read_fork1_fork0_eagerFork_regs_1;
	wire read_fork1_wireMuxSink_ready = read_fork1_fork0_eagerFork_wireMuxSink_ready_qual1_0 & read_fork1_fork0_eagerFork_wireMuxSink_ready_qual1_1;
	reg read_fork1_eagerFork_regs_0;
	reg read_fork1_eagerFork_regs_1;
	reg read_fork1_eagerFork_regs_2;
	assign _read_fork1_eagerFork_result_valid_T_4 = ~read_fork1_eagerFork_regs_2;
	wire read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_0 = _read_fork1_mux_io_select_ready | read_fork1_eagerFork_regs_0;
	wire read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_1 = _read_fork1_demux_io_select_ready | read_fork1_eagerFork_regs_1;
	wire read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_2 = read_fork1_fork0_join0_mkJoin_fire | read_fork1_eagerFork_regs_2;
	wire _read_fork1_eagerFork_sourceBuffer_io_deq_ready_T_1 = (read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_0 & read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_1) & read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_2;
	wire _GEN_0 = read_fork0_control_wire0_valid & read_fork0_control_state;
	wire _read_fork0_control_WIRE = _GEN_0 & read_fork0_control_wire0_bits_last;
	wire _read_fork0_control_WIRE_1 = _GEN_0 & ~read_fork0_control_wire0_bits_last;
	wire _read_fork0_control_WIRE_2 = (read_fork0_control_wire0_valid & ~read_fork0_control_state) & read_fork0_control_wire0_bits_last;
	wire _read_fork0_control_WIRE_3 = (read_fork0_control_wire0_valid & ~read_fork0_control_state) & ~read_fork0_control_wire0_bits_last;
	assign read_fork0_result_ready = (read_fork0_control_wire0_valid & read_fork0_control_wire0_bits_last) & read_fork0_control_wire0_ready;
	wire [3:0] read_fork0_control_cond = {_read_fork0_control_WIRE_3, _read_fork0_control_WIRE_2, _read_fork0_control_WIRE_1, _read_fork0_control_WIRE};
	wire read_fork0_control_errorAtLeastTwoActions = read_fork0_control_wire0_valid & |(read_fork0_control_cond & ({_read_fork0_control_WIRE_3, _read_fork0_control_WIRE_2, _read_fork0_control_WIRE_1, _read_fork0_control_WIRE} - 4'h1));
	wire read_fork0_control_errorNoAction = read_fork0_control_wire0_valid & (read_fork0_control_cond == 4'h0);
	always @(posedge clock) begin
		if ((1 & read_fork0_control_errorAtLeastTwoActions) & ~reset)
			$fwrite(32'h80000002, "elastic.Transducer: at least two actions are taken in the same clock cycle!\n");
		if (((1 & read_fork0_control_errorAtLeastTwoActions) & _read_fork0_control_WIRE) & ~reset)
			$fwrite(32'h80000002, "elastic.Transducer: action 'funcName'\n");
		if (((1 & read_fork0_control_errorAtLeastTwoActions) & _read_fork0_control_WIRE_1) & ~reset)
			$fwrite(32'h80000002, "elastic.Transducer: action 'funcName'\n");
		if (((1 & read_fork0_control_errorAtLeastTwoActions) & _read_fork0_control_WIRE_2) & ~reset)
			$fwrite(32'h80000002, "elastic.Transducer: action 'funcName'\n");
		if (((1 & read_fork0_control_errorAtLeastTwoActions) & _read_fork0_control_WIRE_3) & ~reset)
			$fwrite(32'h80000002, "elastic.Transducer: action 'funcName'\n");
		if ((1 & read_fork0_control_errorNoAction) & ~reset)
			$fwrite(32'h80000002, "elastic.Transducer: no action was taken!\n");
	end
	always @(posedge clock)
		if (reset) begin
			read_fork0_control_state <= 1'h0;
			read_fork0_control_index <= 7'h00;
			read_fork0_control_counter <= 8'h00;
			read_fork0_eagerFork_regs_0 <= 1'h0;
			read_fork0_eagerFork_regs_1 <= 1'h0;
			read_fork1_fork0_eagerFork_regs_0 <= 1'h0;
			read_fork1_fork0_eagerFork_regs_1 <= 1'h0;
			read_fork1_eagerFork_regs_0 <= 1'h0;
			read_fork1_eagerFork_regs_1 <= 1'h0;
			read_fork1_eagerFork_regs_2 <= 1'h0;
		end
		else begin
			if (read_fork0_control_wire0_valid) begin
				if (read_fork0_control_state)
					read_fork0_control_state <= ~(read_fork0_control_wire0_bits_last & read_fork0_control_wire0_ready) & read_fork0_control_state;
				else
					read_fork0_control_state <= (~read_fork0_control_wire0_bits_last & read_fork0_control_wire0_ready) | read_fork0_control_state;
			end
			if (read_fork0_control_wire0_valid & read_fork0_control_wire0_ready) begin
				read_fork0_control_index <= read_fork0_control_wire0_bits_index;
				if (read_fork0_control_wire0_bits_last)
					read_fork0_control_counter <= 8'h00;
				else
					read_fork0_control_counter <= read_fork0_control_counter + 8'h01;
			end
			read_fork0_eagerFork_regs_0 <= (read_fork0_eagerFork_s_axi_ar_ready_qual1_0 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_fork0_eagerFork_regs_1 <= (read_fork0_eagerFork_s_axi_ar_ready_qual1_1 & s_axi_ar_valid) & ~s_axi_ar_ready_0;
			read_fork1_fork0_eagerFork_regs_0 <= (read_fork1_fork0_eagerFork_wireMuxSink_ready_qual1_0 & _read_fork1_mux_io_sink_valid) & ~read_fork1_wireMuxSink_ready;
			read_fork1_fork0_eagerFork_regs_1 <= (read_fork1_fork0_eagerFork_wireMuxSink_ready_qual1_1 & _read_fork1_mux_io_sink_valid) & ~read_fork1_wireMuxSink_ready;
			read_fork1_eagerFork_regs_0 <= (read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_0 & _read_fork1_sourceBuffer_io_deq_valid) & ~_read_fork1_eagerFork_sourceBuffer_io_deq_ready_T_1;
			read_fork1_eagerFork_regs_1 <= (read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_1 & _read_fork1_sourceBuffer_io_deq_valid) & ~_read_fork1_eagerFork_sourceBuffer_io_deq_ready_T_1;
			read_fork1_eagerFork_regs_2 <= (read_fork1_eagerFork_sourceBuffer_io_deq_ready_qual1_2 & _read_fork1_sourceBuffer_io_deq_valid) & ~_read_fork1_eagerFork_sourceBuffer_io_deq_ready_T_1;
		end
	Queue64_Control read_fork1_sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(read_wireControl_ready),
		.io_enq_valid(read_wireControl_valid),
		.io_enq_bits_beatFirst(read_wireControl_bits_beatFirst),
		.io_enq_bits_beatLast(read_wireControl_bits_beatLast),
		.io_enq_bits_transferFirst(read_wireControl_bits_transferFirst),
		.io_enq_bits_transferLast(read_wireControl_bits_transferLast),
		.io_deq_ready(_read_fork1_eagerFork_sourceBuffer_io_deq_ready_T_1),
		.io_deq_valid(_read_fork1_sourceBuffer_io_deq_valid),
		.io_deq_bits_beatFirst(_read_fork1_sourceBuffer_io_deq_bits_beatFirst),
		.io_deq_bits_beatLast(_read_fork1_sourceBuffer_io_deq_bits_beatLast),
		.io_deq_bits_transferLast(s_axi_r_bits_last)
	);
	Queue2_ReadDataChannel_8 read_fork1_sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_read_fork1_sourceBuffer_1_io_enq_ready),
		.io_enq_valid(_read_fork1_demux_io_sinks_0_valid),
		.io_enq_bits_id(_read_fork1_demux_io_sinks_0_bits_id),
		.io_enq_bits_data(_read_fork1_demux_io_sinks_0_bits_data),
		.io_enq_bits_resp(_read_fork1_demux_io_sinks_0_bits_resp),
		.io_enq_bits_last(_read_fork1_demux_io_sinks_0_bits_last),
		.io_deq_ready(_read_fork1_mux_io_sources_0_ready),
		.io_deq_valid(_read_fork1_sourceBuffer_1_io_deq_valid),
		.io_deq_bits_id(_read_fork1_sourceBuffer_1_io_deq_bits_id),
		.io_deq_bits_data(_read_fork1_sourceBuffer_1_io_deq_bits_data),
		.io_deq_bits_resp(_read_fork1_sourceBuffer_1_io_deq_bits_resp),
		.io_deq_bits_last(_read_fork1_sourceBuffer_1_io_deq_bits_last)
	);
	elasticMux_3 read_fork1_mux(
		.io_sources_0_ready(_read_fork1_mux_io_sources_0_ready),
		.io_sources_0_valid(_read_fork1_sourceBuffer_1_io_deq_valid),
		.io_sources_0_bits_id(_read_fork1_sourceBuffer_1_io_deq_bits_id),
		.io_sources_0_bits_data(_read_fork1_sourceBuffer_1_io_deq_bits_data),
		.io_sources_0_bits_resp(_read_fork1_sourceBuffer_1_io_deq_bits_resp),
		.io_sources_0_bits_last(_read_fork1_sourceBuffer_1_io_deq_bits_last),
		.io_sources_1_ready(m_axi_r_ready),
		.io_sources_1_valid(m_axi_r_valid),
		.io_sources_1_bits_id(m_axi_r_bits_id),
		.io_sources_1_bits_data(m_axi_r_bits_data),
		.io_sources_1_bits_resp(m_axi_r_bits_resp),
		.io_sources_1_bits_last(m_axi_r_bits_last),
		.io_sink_ready(read_fork1_wireMuxSink_ready),
		.io_sink_valid(_read_fork1_mux_io_sink_valid),
		.io_sink_bits_id(_read_fork1_mux_io_sink_bits_id),
		.io_sink_bits_data(_read_fork1_mux_io_sink_bits_data),
		.io_sink_bits_resp(_read_fork1_mux_io_sink_bits_resp),
		.io_sink_bits_last(_read_fork1_mux_io_sink_bits_last),
		.io_select_ready(_read_fork1_mux_io_select_ready),
		.io_select_valid(_read_fork1_sourceBuffer_io_deq_valid & ~read_fork1_eagerFork_regs_0),
		.io_select_bits(_read_fork1_sourceBuffer_io_deq_bits_beatFirst)
	);
	elasticDemux_12 read_fork1_demux(
		.io_source_ready(_read_fork1_demux_io_source_ready),
		.io_source_valid(_read_fork1_mux_io_sink_valid & ~read_fork1_fork0_eagerFork_regs_0),
		.io_source_bits_id(_read_fork1_mux_io_sink_bits_id),
		.io_source_bits_data(_read_fork1_mux_io_sink_bits_data),
		.io_source_bits_resp(_read_fork1_mux_io_sink_bits_resp),
		.io_source_bits_last(_read_fork1_mux_io_sink_bits_last),
		.io_sinks_0_ready(_read_fork1_sourceBuffer_1_io_enq_ready),
		.io_sinks_0_valid(_read_fork1_demux_io_sinks_0_valid),
		.io_sinks_0_bits_id(_read_fork1_demux_io_sinks_0_bits_id),
		.io_sinks_0_bits_data(_read_fork1_demux_io_sinks_0_bits_data),
		.io_sinks_0_bits_resp(_read_fork1_demux_io_sinks_0_bits_resp),
		.io_sinks_0_bits_last(_read_fork1_demux_io_sinks_0_bits_last),
		.io_select_ready(_read_fork1_demux_io_select_ready),
		.io_select_valid(_read_fork1_sourceBuffer_io_deq_valid & ~read_fork1_eagerFork_regs_1),
		.io_select_bits(_read_fork1_sourceBuffer_io_deq_bits_beatLast)
	);
	assign s_axi_ar_ready = s_axi_ar_ready_0;
	assign s_axi_r_valid = s_axi_r_valid_0;
	assign s_axi_r_bits_id = _read_fork1_mux_io_sink_bits_id;
	assign s_axi_r_bits_data = _read_fork1_mux_io_sink_bits_data;
	assign s_axi_r_bits_resp = _read_fork1_mux_io_sink_bits_resp;
	assign s_axi_aw_ready = m_axi_aw_ready;
	assign s_axi_w_ready = m_axi_w_ready;
	assign s_axi_b_valid = m_axi_b_valid;
	assign s_axi_b_bits_id = m_axi_b_bits_id;
	assign s_axi_b_bits_resp = m_axi_b_bits_resp;
	assign m_axi_ar_valid = s_axi_ar_valid & ~read_fork0_eagerFork_regs_0;
	assign m_axi_ar_bits_id = s_axi_ar_bits_id;
	assign m_axi_ar_bits_addr = s_axi_ar_bits_addr;
	assign m_axi_ar_bits_len = read_fork0_transform0_len1[7:0] - 8'h01;
	assign m_axi_ar_bits_burst = s_axi_ar_bits_burst;
	assign m_axi_ar_bits_lock = s_axi_ar_bits_lock;
	assign m_axi_ar_bits_cache = s_axi_ar_bits_cache;
	assign m_axi_ar_bits_prot = s_axi_ar_bits_prot;
	assign m_axi_ar_bits_qos = s_axi_ar_bits_qos;
	assign m_axi_ar_bits_region = s_axi_ar_bits_region;
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
	assign m_axi_b_ready = s_axi_b_ready;
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
	wire [8:0] _GEN_1 = {1'h0, s_axi_ARLEN};
	wire crossing = {5'h00, ({56'h00000000000000, {1'h0, _GEN_1 + 9'h001, 5'h00} + {3'h0, s_axi_ARADDR[11:5], 5'h00}} - 71'h000000000000000001) & 71'h000000000000000fff} < {64'h0000000000000000, s_axi_ARADDR[11:5], 5'h00};
	reg [8:0] sent_len;
	wire [8:0] source_bits = _GEN_1 + 9'h001;
	wire [70:0] _GEN_2 = {68'h00000000000000000, s_axi_AWSIZE};
	wire [70:0] _mask_T_3 = 71'h000000000000000001 << _GEN_2;
	wire [63:0] mask_1 = ~(_mask_T_3[63:0] - 64'h0000000000000001);
	wire [11:0] _GEN_3 = mask_1[11:0] & s_axi_AWADDR[11:0];
	wire crossing_1 = {5'h00, ({55'h00000000000000, {4'h0, _GEN_3} + {1'h0, {7'h00, s_axi_AWLEN + 8'h01} << s_axi_AWSIZE}} - 71'h000000000000000001) & 71'h000000000000000fff} < {64'h0000000000000000, _GEN_3};
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
	wire _GEN_4 = _nextState_T == sink_1_bits;
	wire _GEN_5 = sink_1_bits == 9'h001;
	wire sink_1_ready = sink_1_valid & (valid ? _GEN_4 & fire_1 : ~(|sink_1_bits) | (_GEN_5 & fire_1));
	assign _GEN_0 = valid | (|sink_1_bits);
	wire allValid_2 = (m_axi_RVALID & sink_valid) & _GEN;
	wire fire_2 = s_axi_RREADY & allValid_2;
	reg [8:0] state_1;
	reg valid_1;
	wire [8:0] _nextState_T_2 = state_1 + 9'h001;
	wire [8:0] sink_bits;
	wire _GEN_6 = _nextState_T_2 == sink_bits;
	wire _GEN_7 = sink_bits == 9'h001;
	wire sink_ready = sink_valid & (valid_1 ? _GEN_6 & fire_2 : ~(|sink_bits) | (_GEN_7 & fire_2));
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
	wire [13:0] _GEN_8 = 14'h1000 - {2'h0, _GEN_3};
	wire [70:0] first_len = {57'h000000000000000, _GEN_8} >> _GEN_2;
	wire [70:0] _GEN_9 = {62'h0000000000000000, sent_len_1};
	wire [70:0] _aw_bool_len_wire_bits_aw_addr_T_1 = _GEN_9 << _GEN_2;
	wire _GEN_10 = s_axi_AWVALID & crossing_1;
	wire [70:0] first_len_1 = {57'h000000000000000, _GEN_8} >> _GEN_2;
	wire _cond_WIRE_0 = _GEN_10 & ~(|sent_len_1);
	wire [8:0] _GEN_11 = {1'h0, s_axi_AWLEN};
	wire [8:0] _rem_len_T_1 = _GEN_11 - sent_len_1;
	wire [70:0] _aw_bool_len_wire_bits_aw_addr_T_6 = _GEN_9 << _GEN_2;
	wire _cond_WIRE_1 = _GEN_10 & |sent_len_1;
	wire source_2_bits = crossing_1 & ~(|sent_len_1);
	wire [8:0] source_1_bits = (crossing_1 ? (|sent_len_1 ? _rem_len_T_1 + 9'h001 : first_len_1[8:0]) : _GEN_11 + 9'h001);
	wire _cond_WIRE_2 = s_axi_AWVALID & ~crossing_1;
	wire [2:0] cond = {_cond_WIRE_2, _cond_WIRE_1, _cond_WIRE_0};
	wire errorAtLeastTwoActions = s_axi_AWVALID & |(cond & ({_cond_WIRE_2, _cond_WIRE_1, _cond_WIRE_0} - 3'h1));
	wire errorNoAction = s_axi_AWVALID & (cond == 3'h0);
	wire [13:0] _GEN_12 = 14'h1000 - {2'h0, s_axi_ARADDR[11:5], 5'h00};
	wire [7:0] _GEN_13 = _GEN_12[12:5] - 8'h01;
	wire [63:0] _GEN_14 = {50'h0000000000000, sent_len, 5'h00};
	wire [63:0] _view__ar_bits_addr_T_2 = _GEN_14 + s_axi_ARADDR;
	wire _GEN_15 = result_valid & crossing;
	wire _cond_WIRE_1_0 = _GEN_15 & ~(|sent_len);
	wire [63:0] _view__ar_bits_addr_T_7 = _GEN_14 + s_axi_ARADDR;
	wire _cond_WIRE_1_1 = _GEN_15 & |sent_len;
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
		reg _GEN_16;
		reg _GEN_17;
		_GEN_16 = ~(|sink_1_bits) | _GEN_5;
		_GEN_17 = ~(|sink_bits) | _GEN_7;
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
				sent_len <= (~crossing | (|sent_len) ? 9'h000 : _GEN_12[13:5]);
			if (s_axi_AWVALID & ready_1)
				sent_len_1 <= (~crossing_1 | (|sent_len_1) ? 9'h000 : first_len_1[8:0]);
			regs_0 <= (ready_qual1_0 & s_axi_ARVALID) & ~ready;
			regs_1 <= (ready_qual1_1 & s_axi_ARVALID) & ~ready;
			if (sink_1_valid) begin
				if (valid)
					valid <= ~(_GEN_4 & fire_1) & valid;
				else
					valid <= (~_GEN_16 & fire_1) | valid;
			end
			if (sink_valid) begin
				if (valid_1)
					valid_1 <= ~(_GEN_6 & fire_2) & valid_1;
				else
					valid_1 <= (~_GEN_17 & fire_2) | valid_1;
			end
			regs_1_0 <= (ready_qual1_1_0 & s_axi_AWVALID) & ~ready_1;
			regs_1_1 <= (ready_qual1_1_1 & s_axi_AWVALID) & ~ready_1;
			regs_1_2 <= (ready_qual1_1_2 & s_axi_AWVALID) & ~ready_1;
		end
		if (sink_1_valid) begin
			if (valid) begin
				if (fire_1)
					state <= (_GEN_4 ? 9'h000 : _nextState_T);
			end
			else if (_GEN_16 | ~fire_1)
				;
			else
				state <= 9'h001;
		end
		if (sink_valid) begin
			if (valid_1) begin
				if (fire_2)
					state_1 <= (_GEN_6 ? 9'h000 : _nextState_T_2);
			end
			else if (_GEN_17 | ~fire_2)
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
	assign s_axi_RLAST = (valid_1 ? _GEN_6 : _GEN_7);
	assign s_axi_AWREADY = (s_axi_AWVALID & ~(crossing_1 & ~(|sent_len_1))) & ready_1;
	assign s_axi_WREADY = fire_1;
	assign s_axi_BVALID = ~sink_2_bits & allValid;
	assign s_axi_BID = m_axi_BID;
	assign s_axi_BRESP = m_axi_BRESP;
	assign m_axi_ARVALID = result_valid;
	assign m_axi_ARID = s_axi_ARID;
	assign m_axi_ARADDR = (crossing & |sent_len ? {_view__ar_bits_addr_T_7[63:5], 5'h00} : (_GEN_15 & |sent_len ? {_view__ar_bits_addr_T_2[63:5], 5'h00} : s_axi_ARADDR));
	assign m_axi_ARLEN = (crossing ? (|sent_len ? s_axi_ARLEN - sent_len[7:0] : _GEN_13) : (_GEN_15 ? (|sent_len ? s_axi_ARLEN - sent_len[7:0] : _GEN_13) : s_axi_ARLEN));
	assign m_axi_ARBURST = s_axi_ARBURST;
	assign m_axi_ARLOCK = s_axi_ARLOCK;
	assign m_axi_ARCACHE = s_axi_ARCACHE;
	assign m_axi_ARPROT = s_axi_ARPROT;
	assign m_axi_ARQOS = s_axi_ARQOS;
	assign m_axi_ARREGION = s_axi_ARREGION;
	assign m_axi_RREADY = fire_2;
	assign m_axi_AWVALID = s_axi_AWVALID & ~regs_1_1;
	assign m_axi_AWID = s_axi_AWID;
	assign m_axi_AWADDR = (crossing_1 & |sent_len_1 ? (s_axi_AWADDR + _aw_bool_len_wire_bits_aw_addr_T_6[63:0]) & mask_1 : (_GEN_10 & |sent_len_1 ? (s_axi_AWADDR + _aw_bool_len_wire_bits_aw_addr_T_1[63:0]) & mask_1 : s_axi_AWADDR));
	assign m_axi_AWLEN = (crossing_1 ? (|sent_len_1 ? _rem_len_T_1[7:0] : first_len_1[7:0] - 8'h01) : (_GEN_10 ? (|sent_len_1 ? s_axi_AWLEN - sent_len_1[7:0] : first_len[7:0] - 8'h01) : s_axi_AWLEN));
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
	assign m_axi_WLAST = (valid ? _GEN_4 : _GEN_5);
	assign m_axi_BREADY = sink_2_ready;
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
	input [127:0] io_sources_0_bits_data;
	input [1:0] io_sources_0_bits_resp;
	input io_sources_0_bits_last;
	output wire io_sources_1_ready;
	input io_sources_1_valid;
	input [127:0] io_sources_1_bits_data;
	input [1:0] io_sources_1_bits_resp;
	input io_sources_1_bits_last;
	output wire io_sources_2_ready;
	input io_sources_2_valid;
	input [127:0] io_sources_2_bits_data;
	input [1:0] io_sources_2_bits_resp;
	input io_sources_2_bits_last;
	output wire io_sources_3_ready;
	input io_sources_3_valid;
	input [127:0] io_sources_3_bits_data;
	input [1:0] io_sources_3_bits_resp;
	input io_sources_3_bits_last;
	input io_sink_ready;
	output wire io_sink_valid;
	output wire [1:0] io_sink_bits_id;
	output wire [127:0] io_sink_bits_data;
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
	wire [511:0] _GEN_1 = {io_sources_3_bits_data, io_sources_2_bits_data, io_sources_1_bits_data, io_sources_0_bits_data};
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
	Queue2_ReadDataChannel_3 sink_sinkBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sink_sinkBuffer_io_enq_ready),
		.io_enq_valid(fire),
		.io_enq_bits_id(_GEN[choice * 2+:2]),
		.io_enq_bits_data(_GEN_1[choice * 128+:128]),
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
	input [127:0] io_source_bits_data;
	input [15:0] io_source_bits_strb;
	input io_source_bits_last;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [127:0] io_sinks_0_bits_data;
	output wire [15:0] io_sinks_0_bits_strb;
	output wire io_sinks_0_bits_last;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [127:0] io_sinks_1_bits_data;
	output wire [15:0] io_sinks_1_bits_strb;
	output wire io_sinks_1_bits_last;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [127:0] io_sinks_2_bits_data;
	output wire [15:0] io_sinks_2_bits_strb;
	output wire io_sinks_2_bits_last;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [127:0] io_sinks_3_bits_data;
	output wire [15:0] io_sinks_3_bits_strb;
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
module Queue2_WriteResponseChannel_6 (
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
module elasticBasicArbiter_7 (
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
	Queue2_WriteResponseChannel_6 sink_sinkBuffer(
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
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
	input [127:0] m_axi_0_r_bits_data;
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
	output wire [127:0] m_axi_0_w_bits_data;
	output wire [15:0] m_axi_0_w_bits_strb;
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
	input [127:0] m_axi_1_r_bits_data;
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
	output wire [127:0] m_axi_1_w_bits_data;
	output wire [15:0] m_axi_1_w_bits_strb;
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
	input [127:0] m_axi_2_r_bits_data;
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
	output wire [127:0] m_axi_2_w_bits_data;
	output wire [15:0] m_axi_2_w_bits_strb;
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
	input [127:0] m_axi_3_r_bits_data;
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
	output wire [127:0] m_axi_3_w_bits_data;
	output wire [15:0] m_axi_3_w_bits_strb;
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
	elasticBasicArbiter_7 write_arbiter(
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
module elasticBasicArbiter_8 (
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
module Queue2_WriteAddressChannel_4 (
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
module elasticBasicArbiter_9 (
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
	Queue2_WriteAddressChannel_4 sink_sinkBuffer(
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
module elasticMux_4 (
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
module elasticDemux_17 (
	io_source_ready,
	io_source_valid,
	io_source_bits_resp,
	io_sinks_0_ready,
	io_sinks_0_valid,
	io_sinks_0_bits_resp,
	io_sinks_1_ready,
	io_sinks_1_valid,
	io_sinks_1_bits_resp,
	io_sinks_2_ready,
	io_sinks_2_valid,
	io_sinks_2_bits_resp,
	io_sinks_3_ready,
	io_sinks_3_valid,
	io_sinks_3_bits_resp,
	io_select_ready,
	io_select_valid,
	io_select_bits
);
	output wire io_source_ready;
	input io_source_valid;
	input [1:0] io_source_bits_resp;
	input io_sinks_0_ready;
	output wire io_sinks_0_valid;
	output wire [1:0] io_sinks_0_bits_resp;
	input io_sinks_1_ready;
	output wire io_sinks_1_valid;
	output wire [1:0] io_sinks_1_bits_resp;
	input io_sinks_2_ready;
	output wire io_sinks_2_valid;
	output wire [1:0] io_sinks_2_bits_resp;
	input io_sinks_3_ready;
	output wire io_sinks_3_valid;
	output wire [1:0] io_sinks_3_bits_resp;
	output wire io_select_ready;
	input io_select_valid;
	input [1:0] io_select_bits;
	wire valid = io_select_valid & io_source_valid;
	wire [3:0] _GEN = {io_sinks_3_ready, io_sinks_2_ready, io_sinks_1_ready, io_sinks_0_ready};
	wire fire = valid & _GEN[io_select_bits];
	assign io_source_ready = fire;
	assign io_sinks_0_valid = valid & (io_select_bits == 2'h0);
	assign io_sinks_0_bits_resp = io_source_bits_resp;
	assign io_sinks_1_valid = valid & (io_select_bits == 2'h1);
	assign io_sinks_1_bits_resp = io_source_bits_resp;
	assign io_sinks_2_valid = valid & (io_select_bits == 2'h2);
	assign io_sinks_2_bits_resp = io_source_bits_resp;
	assign io_sinks_3_valid = valid & (&io_select_bits);
	assign io_sinks_3_bits_resp = io_source_bits_resp;
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
	elasticBasicArbiter_8 read_arbiter(
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
	elasticBasicArbiter_9 write_arbiter(
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
	elasticMux_4 write_mux(
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
	elasticDemux_17 write_demux(
		.io_source_ready(_write_demux_io_source_ready),
		.io_source_valid(m_axi_b_valid & ~write_eagerFork_regs_0),
		.io_source_bits_resp(m_axi_b_bits_resp),
		.io_sinks_0_ready(s_axi_0_b_ready),
		.io_sinks_0_valid(s_axi_0_b_valid),
		.io_sinks_0_bits_resp(s_axi_0_b_bits_resp),
		.io_sinks_1_ready(s_axi_1_b_ready),
		.io_sinks_1_valid(s_axi_1_b_valid),
		.io_sinks_1_bits_resp(s_axi_1_b_bits_resp),
		.io_sinks_2_ready(s_axi_2_b_ready),
		.io_sinks_2_valid(s_axi_2_b_valid),
		.io_sinks_2_bits_resp(s_axi_2_b_bits_resp),
		.io_sinks_3_ready(s_axi_3_b_ready),
		.io_sinks_3_valid(s_axi_3_b_valid),
		.io_sinks_3_bits_resp(s_axi_3_b_bits_resp),
		.io_select_ready(_write_demux_io_select_ready),
		.io_select_valid(m_axi_b_valid & ~write_eagerFork_regs_1),
		.io_select_bits(m_axi_b_bits_id)
	);
	assign m_axi_r_ready = m_axi_r_ready_0;
	assign m_axi_b_ready = m_axi_b_ready_0;
endmodule
module ProtocolConverter_1 (
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
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
	wire _upscale_3_s_axi_ar_ready;
	wire _upscale_3_s_axi_r_valid;
	wire [127:0] _upscale_3_s_axi_r_bits_data;
	wire [1:0] _upscale_3_s_axi_r_bits_resp;
	wire _upscale_3_s_axi_r_bits_last;
	wire _upscale_3_s_axi_aw_ready;
	wire _upscale_3_s_axi_w_ready;
	wire _upscale_3_s_axi_b_valid;
	wire [1:0] _upscale_3_s_axi_b_bits_resp;
	wire _upscale_3_m_axi_ar_valid;
	wire [63:0] _upscale_3_m_axi_ar_bits_addr;
	wire [7:0] _upscale_3_m_axi_ar_bits_len;
	wire [2:0] _upscale_3_m_axi_ar_bits_size;
	wire [1:0] _upscale_3_m_axi_ar_bits_burst;
	wire _upscale_3_m_axi_ar_bits_lock;
	wire [3:0] _upscale_3_m_axi_ar_bits_cache;
	wire [2:0] _upscale_3_m_axi_ar_bits_prot;
	wire [3:0] _upscale_3_m_axi_ar_bits_qos;
	wire [3:0] _upscale_3_m_axi_ar_bits_region;
	wire _upscale_3_m_axi_r_ready;
	wire _upscale_3_m_axi_aw_valid;
	wire [63:0] _upscale_3_m_axi_aw_bits_addr;
	wire [7:0] _upscale_3_m_axi_aw_bits_len;
	wire [2:0] _upscale_3_m_axi_aw_bits_size;
	wire [1:0] _upscale_3_m_axi_aw_bits_burst;
	wire _upscale_3_m_axi_aw_bits_lock;
	wire [3:0] _upscale_3_m_axi_aw_bits_cache;
	wire [2:0] _upscale_3_m_axi_aw_bits_prot;
	wire [3:0] _upscale_3_m_axi_aw_bits_qos;
	wire [3:0] _upscale_3_m_axi_aw_bits_region;
	wire _upscale_3_m_axi_w_valid;
	wire [255:0] _upscale_3_m_axi_w_bits_data;
	wire [31:0] _upscale_3_m_axi_w_bits_strb;
	wire _upscale_3_m_axi_w_bits_last;
	wire _upscale_3_m_axi_b_ready;
	wire _upscale_2_s_axi_ar_ready;
	wire _upscale_2_s_axi_r_valid;
	wire [127:0] _upscale_2_s_axi_r_bits_data;
	wire [1:0] _upscale_2_s_axi_r_bits_resp;
	wire _upscale_2_s_axi_r_bits_last;
	wire _upscale_2_s_axi_aw_ready;
	wire _upscale_2_s_axi_w_ready;
	wire _upscale_2_s_axi_b_valid;
	wire [1:0] _upscale_2_s_axi_b_bits_resp;
	wire _upscale_2_m_axi_ar_valid;
	wire [63:0] _upscale_2_m_axi_ar_bits_addr;
	wire [7:0] _upscale_2_m_axi_ar_bits_len;
	wire [2:0] _upscale_2_m_axi_ar_bits_size;
	wire [1:0] _upscale_2_m_axi_ar_bits_burst;
	wire _upscale_2_m_axi_ar_bits_lock;
	wire [3:0] _upscale_2_m_axi_ar_bits_cache;
	wire [2:0] _upscale_2_m_axi_ar_bits_prot;
	wire [3:0] _upscale_2_m_axi_ar_bits_qos;
	wire [3:0] _upscale_2_m_axi_ar_bits_region;
	wire _upscale_2_m_axi_r_ready;
	wire _upscale_2_m_axi_aw_valid;
	wire [63:0] _upscale_2_m_axi_aw_bits_addr;
	wire [7:0] _upscale_2_m_axi_aw_bits_len;
	wire [2:0] _upscale_2_m_axi_aw_bits_size;
	wire [1:0] _upscale_2_m_axi_aw_bits_burst;
	wire _upscale_2_m_axi_aw_bits_lock;
	wire [3:0] _upscale_2_m_axi_aw_bits_cache;
	wire [2:0] _upscale_2_m_axi_aw_bits_prot;
	wire [3:0] _upscale_2_m_axi_aw_bits_qos;
	wire [3:0] _upscale_2_m_axi_aw_bits_region;
	wire _upscale_2_m_axi_w_valid;
	wire [255:0] _upscale_2_m_axi_w_bits_data;
	wire [31:0] _upscale_2_m_axi_w_bits_strb;
	wire _upscale_2_m_axi_w_bits_last;
	wire _upscale_2_m_axi_b_ready;
	wire _upscale_1_s_axi_ar_ready;
	wire _upscale_1_s_axi_r_valid;
	wire [127:0] _upscale_1_s_axi_r_bits_data;
	wire [1:0] _upscale_1_s_axi_r_bits_resp;
	wire _upscale_1_s_axi_r_bits_last;
	wire _upscale_1_s_axi_aw_ready;
	wire _upscale_1_s_axi_w_ready;
	wire _upscale_1_s_axi_b_valid;
	wire [1:0] _upscale_1_s_axi_b_bits_resp;
	wire _upscale_1_m_axi_ar_valid;
	wire [63:0] _upscale_1_m_axi_ar_bits_addr;
	wire [7:0] _upscale_1_m_axi_ar_bits_len;
	wire [2:0] _upscale_1_m_axi_ar_bits_size;
	wire [1:0] _upscale_1_m_axi_ar_bits_burst;
	wire _upscale_1_m_axi_ar_bits_lock;
	wire [3:0] _upscale_1_m_axi_ar_bits_cache;
	wire [2:0] _upscale_1_m_axi_ar_bits_prot;
	wire [3:0] _upscale_1_m_axi_ar_bits_qos;
	wire [3:0] _upscale_1_m_axi_ar_bits_region;
	wire _upscale_1_m_axi_r_ready;
	wire _upscale_1_m_axi_aw_valid;
	wire [63:0] _upscale_1_m_axi_aw_bits_addr;
	wire [7:0] _upscale_1_m_axi_aw_bits_len;
	wire [2:0] _upscale_1_m_axi_aw_bits_size;
	wire [1:0] _upscale_1_m_axi_aw_bits_burst;
	wire _upscale_1_m_axi_aw_bits_lock;
	wire [3:0] _upscale_1_m_axi_aw_bits_cache;
	wire [2:0] _upscale_1_m_axi_aw_bits_prot;
	wire [3:0] _upscale_1_m_axi_aw_bits_qos;
	wire [3:0] _upscale_1_m_axi_aw_bits_region;
	wire _upscale_1_m_axi_w_valid;
	wire [255:0] _upscale_1_m_axi_w_bits_data;
	wire [31:0] _upscale_1_m_axi_w_bits_strb;
	wire _upscale_1_m_axi_w_bits_last;
	wire _upscale_1_m_axi_b_ready;
	wire _upscale_0_s_axi_ar_ready;
	wire _upscale_0_s_axi_r_valid;
	wire [127:0] _upscale_0_s_axi_r_bits_data;
	wire [1:0] _upscale_0_s_axi_r_bits_resp;
	wire _upscale_0_s_axi_r_bits_last;
	wire _upscale_0_s_axi_aw_ready;
	wire _upscale_0_s_axi_w_ready;
	wire _upscale_0_s_axi_b_valid;
	wire [1:0] _upscale_0_s_axi_b_bits_resp;
	wire _upscale_0_m_axi_ar_valid;
	wire [63:0] _upscale_0_m_axi_ar_bits_addr;
	wire [7:0] _upscale_0_m_axi_ar_bits_len;
	wire [2:0] _upscale_0_m_axi_ar_bits_size;
	wire [1:0] _upscale_0_m_axi_ar_bits_burst;
	wire _upscale_0_m_axi_ar_bits_lock;
	wire [3:0] _upscale_0_m_axi_ar_bits_cache;
	wire [2:0] _upscale_0_m_axi_ar_bits_prot;
	wire [3:0] _upscale_0_m_axi_ar_bits_qos;
	wire [3:0] _upscale_0_m_axi_ar_bits_region;
	wire _upscale_0_m_axi_r_ready;
	wire _upscale_0_m_axi_aw_valid;
	wire [63:0] _upscale_0_m_axi_aw_bits_addr;
	wire [7:0] _upscale_0_m_axi_aw_bits_len;
	wire [2:0] _upscale_0_m_axi_aw_bits_size;
	wire [1:0] _upscale_0_m_axi_aw_bits_burst;
	wire _upscale_0_m_axi_aw_bits_lock;
	wire [3:0] _upscale_0_m_axi_aw_bits_cache;
	wire [2:0] _upscale_0_m_axi_aw_bits_prot;
	wire [3:0] _upscale_0_m_axi_aw_bits_qos;
	wire [3:0] _upscale_0_m_axi_aw_bits_region;
	wire _upscale_0_m_axi_w_valid;
	wire [255:0] _upscale_0_m_axi_w_bits_data;
	wire [31:0] _upscale_0_m_axi_w_bits_strb;
	wire _upscale_0_m_axi_w_bits_last;
	wire _upscale_0_m_axi_b_ready;
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
	wire [127:0] _idDemux_m_axi_0_w_bits_data;
	wire [15:0] _idDemux_m_axi_0_w_bits_strb;
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
	wire [127:0] _idDemux_m_axi_1_w_bits_data;
	wire [15:0] _idDemux_m_axi_1_w_bits_strb;
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
	wire [127:0] _idDemux_m_axi_2_w_bits_data;
	wire [15:0] _idDemux_m_axi_2_w_bits_strb;
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
	wire [127:0] _idDemux_m_axi_3_w_bits_data;
	wire [15:0] _idDemux_m_axi_3_w_bits_strb;
	wire _idDemux_m_axi_3_w_bits_last;
	wire _idDemux_m_axi_3_b_ready;
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
		.s_axi_b_bits_id(s_axi_b_bits_id),
		.s_axi_b_bits_resp(s_axi_b_bits_resp),
		.m_axi_0_ar_ready(_upscale_0_s_axi_ar_ready),
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
		.m_axi_0_r_valid(_upscale_0_s_axi_r_valid),
		.m_axi_0_r_bits_data(_upscale_0_s_axi_r_bits_data),
		.m_axi_0_r_bits_resp(_upscale_0_s_axi_r_bits_resp),
		.m_axi_0_r_bits_last(_upscale_0_s_axi_r_bits_last),
		.m_axi_0_aw_ready(_upscale_0_s_axi_aw_ready),
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
		.m_axi_0_w_ready(_upscale_0_s_axi_w_ready),
		.m_axi_0_w_valid(_idDemux_m_axi_0_w_valid),
		.m_axi_0_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.m_axi_0_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.m_axi_0_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.m_axi_0_b_ready(_idDemux_m_axi_0_b_ready),
		.m_axi_0_b_valid(_upscale_0_s_axi_b_valid),
		.m_axi_0_b_bits_resp(_upscale_0_s_axi_b_bits_resp),
		.m_axi_1_ar_ready(_upscale_1_s_axi_ar_ready),
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
		.m_axi_1_r_valid(_upscale_1_s_axi_r_valid),
		.m_axi_1_r_bits_data(_upscale_1_s_axi_r_bits_data),
		.m_axi_1_r_bits_resp(_upscale_1_s_axi_r_bits_resp),
		.m_axi_1_r_bits_last(_upscale_1_s_axi_r_bits_last),
		.m_axi_1_aw_ready(_upscale_1_s_axi_aw_ready),
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
		.m_axi_1_w_ready(_upscale_1_s_axi_w_ready),
		.m_axi_1_w_valid(_idDemux_m_axi_1_w_valid),
		.m_axi_1_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.m_axi_1_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.m_axi_1_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.m_axi_1_b_ready(_idDemux_m_axi_1_b_ready),
		.m_axi_1_b_valid(_upscale_1_s_axi_b_valid),
		.m_axi_1_b_bits_resp(_upscale_1_s_axi_b_bits_resp),
		.m_axi_2_ar_ready(_upscale_2_s_axi_ar_ready),
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
		.m_axi_2_r_valid(_upscale_2_s_axi_r_valid),
		.m_axi_2_r_bits_data(_upscale_2_s_axi_r_bits_data),
		.m_axi_2_r_bits_resp(_upscale_2_s_axi_r_bits_resp),
		.m_axi_2_r_bits_last(_upscale_2_s_axi_r_bits_last),
		.m_axi_2_aw_ready(_upscale_2_s_axi_aw_ready),
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
		.m_axi_2_w_ready(_upscale_2_s_axi_w_ready),
		.m_axi_2_w_valid(_idDemux_m_axi_2_w_valid),
		.m_axi_2_w_bits_data(_idDemux_m_axi_2_w_bits_data),
		.m_axi_2_w_bits_strb(_idDemux_m_axi_2_w_bits_strb),
		.m_axi_2_w_bits_last(_idDemux_m_axi_2_w_bits_last),
		.m_axi_2_b_ready(_idDemux_m_axi_2_b_ready),
		.m_axi_2_b_valid(_upscale_2_s_axi_b_valid),
		.m_axi_2_b_bits_resp(_upscale_2_s_axi_b_bits_resp),
		.m_axi_3_ar_ready(_upscale_3_s_axi_ar_ready),
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
		.m_axi_3_r_valid(_upscale_3_s_axi_r_valid),
		.m_axi_3_r_bits_data(_upscale_3_s_axi_r_bits_data),
		.m_axi_3_r_bits_resp(_upscale_3_s_axi_r_bits_resp),
		.m_axi_3_r_bits_last(_upscale_3_s_axi_r_bits_last),
		.m_axi_3_aw_ready(_upscale_3_s_axi_aw_ready),
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
		.m_axi_3_w_ready(_upscale_3_s_axi_w_ready),
		.m_axi_3_w_valid(_idDemux_m_axi_3_w_valid),
		.m_axi_3_w_bits_data(_idDemux_m_axi_3_w_bits_data),
		.m_axi_3_w_bits_strb(_idDemux_m_axi_3_w_bits_strb),
		.m_axi_3_w_bits_last(_idDemux_m_axi_3_w_bits_last),
		.m_axi_3_b_ready(_idDemux_m_axi_3_b_ready),
		.m_axi_3_b_valid(_upscale_3_s_axi_b_valid),
		.m_axi_3_b_bits_resp(_upscale_3_s_axi_b_bits_resp)
	);
	Upscale_1 upscale_0(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_upscale_0_s_axi_ar_ready),
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
		.s_axi_r_valid(_upscale_0_s_axi_r_valid),
		.s_axi_r_bits_data(_upscale_0_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_upscale_0_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_upscale_0_s_axi_r_bits_last),
		.s_axi_aw_ready(_upscale_0_s_axi_aw_ready),
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
		.s_axi_w_ready(_upscale_0_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_0_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_0_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_0_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_0_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_0_b_ready),
		.s_axi_b_valid(_upscale_0_s_axi_b_valid),
		.s_axi_b_bits_resp(_upscale_0_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_0_ar_ready),
		.m_axi_ar_valid(_upscale_0_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_upscale_0_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_upscale_0_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_upscale_0_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_upscale_0_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_upscale_0_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_upscale_0_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_upscale_0_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_upscale_0_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_upscale_0_m_axi_ar_bits_region),
		.m_axi_r_ready(_upscale_0_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_0_r_valid),
		.m_axi_r_bits_data(_module_s_axi_0_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_0_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_0_aw_ready),
		.m_axi_aw_valid(_upscale_0_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_upscale_0_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_upscale_0_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_upscale_0_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_upscale_0_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_upscale_0_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_upscale_0_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_upscale_0_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_upscale_0_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_upscale_0_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_0_w_ready),
		.m_axi_w_valid(_upscale_0_m_axi_w_valid),
		.m_axi_w_bits_data(_upscale_0_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_upscale_0_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_upscale_0_m_axi_w_bits_last),
		.m_axi_b_ready(_upscale_0_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_0_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_0_b_bits_resp)
	);
	Upscale_1 upscale_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_upscale_1_s_axi_ar_ready),
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
		.s_axi_r_valid(_upscale_1_s_axi_r_valid),
		.s_axi_r_bits_data(_upscale_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_upscale_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_upscale_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_upscale_1_s_axi_aw_ready),
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
		.s_axi_w_ready(_upscale_1_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_1_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_1_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_1_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_1_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_1_b_ready),
		.s_axi_b_valid(_upscale_1_s_axi_b_valid),
		.s_axi_b_bits_resp(_upscale_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_1_ar_ready),
		.m_axi_ar_valid(_upscale_1_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_upscale_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_upscale_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_upscale_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_upscale_1_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_upscale_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_upscale_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_upscale_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_upscale_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_upscale_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_upscale_1_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_1_r_valid),
		.m_axi_r_bits_data(_module_s_axi_1_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_1_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_1_aw_ready),
		.m_axi_aw_valid(_upscale_1_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_upscale_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_upscale_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_upscale_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_upscale_1_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_upscale_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_upscale_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_upscale_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_upscale_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_upscale_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_1_w_ready),
		.m_axi_w_valid(_upscale_1_m_axi_w_valid),
		.m_axi_w_bits_data(_upscale_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_upscale_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_upscale_1_m_axi_w_bits_last),
		.m_axi_b_ready(_upscale_1_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_1_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_1_b_bits_resp)
	);
	Upscale_1 upscale_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_upscale_2_s_axi_ar_ready),
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
		.s_axi_r_valid(_upscale_2_s_axi_r_valid),
		.s_axi_r_bits_data(_upscale_2_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_upscale_2_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_upscale_2_s_axi_r_bits_last),
		.s_axi_aw_ready(_upscale_2_s_axi_aw_ready),
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
		.s_axi_w_ready(_upscale_2_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_2_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_2_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_2_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_2_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_2_b_ready),
		.s_axi_b_valid(_upscale_2_s_axi_b_valid),
		.s_axi_b_bits_resp(_upscale_2_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_2_ar_ready),
		.m_axi_ar_valid(_upscale_2_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_upscale_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_upscale_2_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_upscale_2_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_upscale_2_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_upscale_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_upscale_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_upscale_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_upscale_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_upscale_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_upscale_2_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_2_r_valid),
		.m_axi_r_bits_data(_module_s_axi_2_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_2_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_2_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_2_aw_ready),
		.m_axi_aw_valid(_upscale_2_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_upscale_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_upscale_2_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_upscale_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_upscale_2_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_upscale_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_upscale_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_upscale_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_upscale_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_upscale_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_2_w_ready),
		.m_axi_w_valid(_upscale_2_m_axi_w_valid),
		.m_axi_w_bits_data(_upscale_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_upscale_2_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_upscale_2_m_axi_w_bits_last),
		.m_axi_b_ready(_upscale_2_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_2_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_2_b_bits_resp)
	);
	Upscale_1 upscale_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_upscale_3_s_axi_ar_ready),
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
		.s_axi_r_valid(_upscale_3_s_axi_r_valid),
		.s_axi_r_bits_data(_upscale_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_upscale_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_upscale_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_upscale_3_s_axi_aw_ready),
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
		.s_axi_w_ready(_upscale_3_s_axi_w_ready),
		.s_axi_w_valid(_idDemux_m_axi_3_w_valid),
		.s_axi_w_bits_data(_idDemux_m_axi_3_w_bits_data),
		.s_axi_w_bits_strb(_idDemux_m_axi_3_w_bits_strb),
		.s_axi_w_bits_last(_idDemux_m_axi_3_w_bits_last),
		.s_axi_b_ready(_idDemux_m_axi_3_b_ready),
		.s_axi_b_valid(_upscale_3_s_axi_b_valid),
		.s_axi_b_bits_resp(_upscale_3_s_axi_b_bits_resp),
		.m_axi_ar_ready(_module_s_axi_3_ar_ready),
		.m_axi_ar_valid(_upscale_3_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_upscale_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_upscale_3_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_upscale_3_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_upscale_3_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_upscale_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_upscale_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_upscale_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_upscale_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_upscale_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_upscale_3_m_axi_r_ready),
		.m_axi_r_valid(_module_s_axi_3_r_valid),
		.m_axi_r_bits_data(_module_s_axi_3_r_bits_data),
		.m_axi_r_bits_resp(_module_s_axi_3_r_bits_resp),
		.m_axi_r_bits_last(_module_s_axi_3_r_bits_last),
		.m_axi_aw_ready(_module_s_axi_3_aw_ready),
		.m_axi_aw_valid(_upscale_3_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_upscale_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_upscale_3_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_upscale_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_upscale_3_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_upscale_3_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_upscale_3_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_upscale_3_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_upscale_3_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_upscale_3_m_axi_aw_bits_region),
		.m_axi_w_ready(_module_s_axi_3_w_ready),
		.m_axi_w_valid(_upscale_3_m_axi_w_valid),
		.m_axi_w_bits_data(_upscale_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_upscale_3_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_upscale_3_m_axi_w_bits_last),
		.m_axi_b_ready(_upscale_3_m_axi_b_ready),
		.m_axi_b_valid(_module_s_axi_3_b_valid),
		.m_axi_b_bits_resp(_module_s_axi_3_b_bits_resp)
	);
	IdMux_1 module_0(
		.clock(clock),
		.reset(reset),
		.s_axi_0_ar_ready(_module_s_axi_0_ar_ready),
		.s_axi_0_ar_valid(_upscale_0_m_axi_ar_valid),
		.s_axi_0_ar_bits_addr(_upscale_0_m_axi_ar_bits_addr),
		.s_axi_0_ar_bits_len(_upscale_0_m_axi_ar_bits_len),
		.s_axi_0_ar_bits_size(_upscale_0_m_axi_ar_bits_size),
		.s_axi_0_ar_bits_burst(_upscale_0_m_axi_ar_bits_burst),
		.s_axi_0_ar_bits_lock(_upscale_0_m_axi_ar_bits_lock),
		.s_axi_0_ar_bits_cache(_upscale_0_m_axi_ar_bits_cache),
		.s_axi_0_ar_bits_prot(_upscale_0_m_axi_ar_bits_prot),
		.s_axi_0_ar_bits_qos(_upscale_0_m_axi_ar_bits_qos),
		.s_axi_0_ar_bits_region(_upscale_0_m_axi_ar_bits_region),
		.s_axi_0_r_ready(_upscale_0_m_axi_r_ready),
		.s_axi_0_r_valid(_module_s_axi_0_r_valid),
		.s_axi_0_r_bits_data(_module_s_axi_0_r_bits_data),
		.s_axi_0_r_bits_resp(_module_s_axi_0_r_bits_resp),
		.s_axi_0_r_bits_last(_module_s_axi_0_r_bits_last),
		.s_axi_0_aw_ready(_module_s_axi_0_aw_ready),
		.s_axi_0_aw_valid(_upscale_0_m_axi_aw_valid),
		.s_axi_0_aw_bits_addr(_upscale_0_m_axi_aw_bits_addr),
		.s_axi_0_aw_bits_len(_upscale_0_m_axi_aw_bits_len),
		.s_axi_0_aw_bits_size(_upscale_0_m_axi_aw_bits_size),
		.s_axi_0_aw_bits_burst(_upscale_0_m_axi_aw_bits_burst),
		.s_axi_0_aw_bits_lock(_upscale_0_m_axi_aw_bits_lock),
		.s_axi_0_aw_bits_cache(_upscale_0_m_axi_aw_bits_cache),
		.s_axi_0_aw_bits_prot(_upscale_0_m_axi_aw_bits_prot),
		.s_axi_0_aw_bits_qos(_upscale_0_m_axi_aw_bits_qos),
		.s_axi_0_aw_bits_region(_upscale_0_m_axi_aw_bits_region),
		.s_axi_0_w_ready(_module_s_axi_0_w_ready),
		.s_axi_0_w_valid(_upscale_0_m_axi_w_valid),
		.s_axi_0_w_bits_data(_upscale_0_m_axi_w_bits_data),
		.s_axi_0_w_bits_strb(_upscale_0_m_axi_w_bits_strb),
		.s_axi_0_w_bits_last(_upscale_0_m_axi_w_bits_last),
		.s_axi_0_b_ready(_upscale_0_m_axi_b_ready),
		.s_axi_0_b_valid(_module_s_axi_0_b_valid),
		.s_axi_0_b_bits_resp(_module_s_axi_0_b_bits_resp),
		.s_axi_1_ar_ready(_module_s_axi_1_ar_ready),
		.s_axi_1_ar_valid(_upscale_1_m_axi_ar_valid),
		.s_axi_1_ar_bits_addr(_upscale_1_m_axi_ar_bits_addr),
		.s_axi_1_ar_bits_len(_upscale_1_m_axi_ar_bits_len),
		.s_axi_1_ar_bits_size(_upscale_1_m_axi_ar_bits_size),
		.s_axi_1_ar_bits_burst(_upscale_1_m_axi_ar_bits_burst),
		.s_axi_1_ar_bits_lock(_upscale_1_m_axi_ar_bits_lock),
		.s_axi_1_ar_bits_cache(_upscale_1_m_axi_ar_bits_cache),
		.s_axi_1_ar_bits_prot(_upscale_1_m_axi_ar_bits_prot),
		.s_axi_1_ar_bits_qos(_upscale_1_m_axi_ar_bits_qos),
		.s_axi_1_ar_bits_region(_upscale_1_m_axi_ar_bits_region),
		.s_axi_1_r_ready(_upscale_1_m_axi_r_ready),
		.s_axi_1_r_valid(_module_s_axi_1_r_valid),
		.s_axi_1_r_bits_data(_module_s_axi_1_r_bits_data),
		.s_axi_1_r_bits_resp(_module_s_axi_1_r_bits_resp),
		.s_axi_1_r_bits_last(_module_s_axi_1_r_bits_last),
		.s_axi_1_aw_ready(_module_s_axi_1_aw_ready),
		.s_axi_1_aw_valid(_upscale_1_m_axi_aw_valid),
		.s_axi_1_aw_bits_addr(_upscale_1_m_axi_aw_bits_addr),
		.s_axi_1_aw_bits_len(_upscale_1_m_axi_aw_bits_len),
		.s_axi_1_aw_bits_size(_upscale_1_m_axi_aw_bits_size),
		.s_axi_1_aw_bits_burst(_upscale_1_m_axi_aw_bits_burst),
		.s_axi_1_aw_bits_lock(_upscale_1_m_axi_aw_bits_lock),
		.s_axi_1_aw_bits_cache(_upscale_1_m_axi_aw_bits_cache),
		.s_axi_1_aw_bits_prot(_upscale_1_m_axi_aw_bits_prot),
		.s_axi_1_aw_bits_qos(_upscale_1_m_axi_aw_bits_qos),
		.s_axi_1_aw_bits_region(_upscale_1_m_axi_aw_bits_region),
		.s_axi_1_w_ready(_module_s_axi_1_w_ready),
		.s_axi_1_w_valid(_upscale_1_m_axi_w_valid),
		.s_axi_1_w_bits_data(_upscale_1_m_axi_w_bits_data),
		.s_axi_1_w_bits_strb(_upscale_1_m_axi_w_bits_strb),
		.s_axi_1_w_bits_last(_upscale_1_m_axi_w_bits_last),
		.s_axi_1_b_ready(_upscale_1_m_axi_b_ready),
		.s_axi_1_b_valid(_module_s_axi_1_b_valid),
		.s_axi_1_b_bits_resp(_module_s_axi_1_b_bits_resp),
		.s_axi_2_ar_ready(_module_s_axi_2_ar_ready),
		.s_axi_2_ar_valid(_upscale_2_m_axi_ar_valid),
		.s_axi_2_ar_bits_addr(_upscale_2_m_axi_ar_bits_addr),
		.s_axi_2_ar_bits_len(_upscale_2_m_axi_ar_bits_len),
		.s_axi_2_ar_bits_size(_upscale_2_m_axi_ar_bits_size),
		.s_axi_2_ar_bits_burst(_upscale_2_m_axi_ar_bits_burst),
		.s_axi_2_ar_bits_lock(_upscale_2_m_axi_ar_bits_lock),
		.s_axi_2_ar_bits_cache(_upscale_2_m_axi_ar_bits_cache),
		.s_axi_2_ar_bits_prot(_upscale_2_m_axi_ar_bits_prot),
		.s_axi_2_ar_bits_qos(_upscale_2_m_axi_ar_bits_qos),
		.s_axi_2_ar_bits_region(_upscale_2_m_axi_ar_bits_region),
		.s_axi_2_r_ready(_upscale_2_m_axi_r_ready),
		.s_axi_2_r_valid(_module_s_axi_2_r_valid),
		.s_axi_2_r_bits_data(_module_s_axi_2_r_bits_data),
		.s_axi_2_r_bits_resp(_module_s_axi_2_r_bits_resp),
		.s_axi_2_r_bits_last(_module_s_axi_2_r_bits_last),
		.s_axi_2_aw_ready(_module_s_axi_2_aw_ready),
		.s_axi_2_aw_valid(_upscale_2_m_axi_aw_valid),
		.s_axi_2_aw_bits_addr(_upscale_2_m_axi_aw_bits_addr),
		.s_axi_2_aw_bits_len(_upscale_2_m_axi_aw_bits_len),
		.s_axi_2_aw_bits_size(_upscale_2_m_axi_aw_bits_size),
		.s_axi_2_aw_bits_burst(_upscale_2_m_axi_aw_bits_burst),
		.s_axi_2_aw_bits_lock(_upscale_2_m_axi_aw_bits_lock),
		.s_axi_2_aw_bits_cache(_upscale_2_m_axi_aw_bits_cache),
		.s_axi_2_aw_bits_prot(_upscale_2_m_axi_aw_bits_prot),
		.s_axi_2_aw_bits_qos(_upscale_2_m_axi_aw_bits_qos),
		.s_axi_2_aw_bits_region(_upscale_2_m_axi_aw_bits_region),
		.s_axi_2_w_ready(_module_s_axi_2_w_ready),
		.s_axi_2_w_valid(_upscale_2_m_axi_w_valid),
		.s_axi_2_w_bits_data(_upscale_2_m_axi_w_bits_data),
		.s_axi_2_w_bits_strb(_upscale_2_m_axi_w_bits_strb),
		.s_axi_2_w_bits_last(_upscale_2_m_axi_w_bits_last),
		.s_axi_2_b_ready(_upscale_2_m_axi_b_ready),
		.s_axi_2_b_valid(_module_s_axi_2_b_valid),
		.s_axi_2_b_bits_resp(_module_s_axi_2_b_bits_resp),
		.s_axi_3_ar_ready(_module_s_axi_3_ar_ready),
		.s_axi_3_ar_valid(_upscale_3_m_axi_ar_valid),
		.s_axi_3_ar_bits_addr(_upscale_3_m_axi_ar_bits_addr),
		.s_axi_3_ar_bits_len(_upscale_3_m_axi_ar_bits_len),
		.s_axi_3_ar_bits_size(_upscale_3_m_axi_ar_bits_size),
		.s_axi_3_ar_bits_burst(_upscale_3_m_axi_ar_bits_burst),
		.s_axi_3_ar_bits_lock(_upscale_3_m_axi_ar_bits_lock),
		.s_axi_3_ar_bits_cache(_upscale_3_m_axi_ar_bits_cache),
		.s_axi_3_ar_bits_prot(_upscale_3_m_axi_ar_bits_prot),
		.s_axi_3_ar_bits_qos(_upscale_3_m_axi_ar_bits_qos),
		.s_axi_3_ar_bits_region(_upscale_3_m_axi_ar_bits_region),
		.s_axi_3_r_ready(_upscale_3_m_axi_r_ready),
		.s_axi_3_r_valid(_module_s_axi_3_r_valid),
		.s_axi_3_r_bits_data(_module_s_axi_3_r_bits_data),
		.s_axi_3_r_bits_resp(_module_s_axi_3_r_bits_resp),
		.s_axi_3_r_bits_last(_module_s_axi_3_r_bits_last),
		.s_axi_3_aw_ready(_module_s_axi_3_aw_ready),
		.s_axi_3_aw_valid(_upscale_3_m_axi_aw_valid),
		.s_axi_3_aw_bits_addr(_upscale_3_m_axi_aw_bits_addr),
		.s_axi_3_aw_bits_len(_upscale_3_m_axi_aw_bits_len),
		.s_axi_3_aw_bits_size(_upscale_3_m_axi_aw_bits_size),
		.s_axi_3_aw_bits_burst(_upscale_3_m_axi_aw_bits_burst),
		.s_axi_3_aw_bits_lock(_upscale_3_m_axi_aw_bits_lock),
		.s_axi_3_aw_bits_cache(_upscale_3_m_axi_aw_bits_cache),
		.s_axi_3_aw_bits_prot(_upscale_3_m_axi_aw_bits_prot),
		.s_axi_3_aw_bits_qos(_upscale_3_m_axi_aw_bits_qos),
		.s_axi_3_aw_bits_region(_upscale_3_m_axi_aw_bits_region),
		.s_axi_3_w_ready(_module_s_axi_3_w_ready),
		.s_axi_3_w_valid(_upscale_3_m_axi_w_valid),
		.s_axi_3_w_bits_data(_upscale_3_m_axi_w_bits_data),
		.s_axi_3_w_bits_strb(_upscale_3_m_axi_w_bits_strb),
		.s_axi_3_w_bits_last(_upscale_3_m_axi_w_bits_last),
		.s_axi_3_b_ready(_upscale_3_m_axi_b_ready),
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
module AxiUserYanker_1 (
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
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
	input [127:0] m_axi_r_bits_data;
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
	output wire [127:0] m_axi_w_bits_data;
	output wire [15:0] m_axi_w_bits_strb;
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
module ProtocolConverter_4 (
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
	output wire [127:0] s_axi_r_bits_data;
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
	input [127:0] s_axi_w_bits_data;
	input [15:0] s_axi_w_bits_strb;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
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
	output wire m_axi_b_ready;
	input m_axi_b_valid;
	input [1:0] m_axi_b_bits_resp;
	Upscale_1 upscale_0(
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
		.s_axi_b_bits_resp(),
		.m_axi_ar_ready(m_axi_ar_ready),
		.m_axi_ar_valid(m_axi_ar_valid),
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
		.m_axi_r_bits_data(m_axi_r_bits_data),
		.m_axi_r_bits_resp(m_axi_r_bits_resp),
		.m_axi_r_bits_last(m_axi_r_bits_last),
		.m_axi_aw_ready(m_axi_aw_ready),
		.m_axi_aw_valid(m_axi_aw_valid),
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
		.m_axi_w_bits_last(),
		.m_axi_b_ready(m_axi_b_ready),
		.m_axi_b_valid(m_axi_b_valid),
		.m_axi_b_bits_resp(m_axi_b_bits_resp)
	);
endmodule
module AxiUserYanker_4 (
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
	output wire [127:0] s_axi_r_bits_data;
	output wire s_axi_r_bits_last;
	output wire s_axi_aw_ready;
	input s_axi_aw_valid;
	input [63:0] s_axi_aw_bits_addr;
	input [7:0] s_axi_aw_bits_len;
	output wire s_axi_w_ready;
	input s_axi_w_valid;
	input [127:0] s_axi_w_bits_data;
	input s_axi_w_bits_last;
	input s_axi_b_ready;
	output wire s_axi_b_valid;
	input m_axi_ar_ready;
	output wire m_axi_ar_valid;
	output wire [63:0] m_axi_ar_bits_addr;
	output wire [7:0] m_axi_ar_bits_len;
	output wire m_axi_r_ready;
	input m_axi_r_valid;
	input [127:0] m_axi_r_bits_data;
	input m_axi_r_bits_last;
	input m_axi_aw_ready;
	output wire m_axi_aw_valid;
	output wire [63:0] m_axi_aw_bits_addr;
	output wire [7:0] m_axi_aw_bits_len;
	input m_axi_w_ready;
	output wire m_axi_w_valid;
	output wire [127:0] m_axi_w_bits_data;
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
module ram_2x129 (
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
	output wire [128:0] R0_data;
	input W0_addr;
	input W0_en;
	input W0_clk;
	input [128:0] W0_data;
	reg [128:0] Memory [0:1];
	always @(posedge W0_clk)
		if (W0_en & 1'h1)
			Memory[W0_addr] <= W0_data;
	assign R0_data = (R0_en ? Memory[R0_addr] : 129'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
endmodule
module Queue2_ReadDataChannel_18 (
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
	io_deq_bits_last
);
	input clock;
	input reset;
	output wire io_enq_ready;
	input io_enq_valid;
	input [127:0] io_enq_bits_data;
	input [1:0] io_enq_bits_resp;
	input io_enq_bits_last;
	input io_deq_ready;
	output wire io_deq_valid;
	output wire [127:0] io_deq_bits_data;
	output wire io_deq_bits_last;
	wire [128:0] _ram_ext_R0_data;
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
	ram_2x129 ram_ext(
		.R0_addr(wrap_1),
		.R0_en(1'h1),
		.R0_clk(clock),
		.R0_data(_ram_ext_R0_data),
		.W0_addr(wrap),
		.W0_en(do_enq),
		.W0_clk(clock),
		.W0_data({io_enq_bits_last, io_enq_bits_data})
	);
	assign io_enq_ready = ~full;
	assign io_deq_valid = ~empty;
	assign io_deq_bits_data = _ram_ext_R0_data[127:0];
	assign io_deq_bits_last = _ram_ext_R0_data[128];
endmodule
module Queue2_WriteResponseChannel_12 (
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
module exp2 (
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
	BindTo_PE_paper_exp2_task_0_taskIn_TREADY,
	BindTo_PE_paper_exp2_task_0_taskIn_TVALID,
	BindTo_PE_paper_exp2_task_0_taskIn_TDATA,
	BindTo_PE_paper_exp2_task_1_taskIn_TREADY,
	BindTo_PE_paper_exp2_task_1_taskIn_TVALID,
	BindTo_PE_paper_exp2_task_1_taskIn_TDATA,
	BindTo_PE_paper_exp2_task_2_taskIn_TREADY,
	BindTo_PE_paper_exp2_task_2_taskIn_TVALID,
	BindTo_PE_paper_exp2_task_2_taskIn_TDATA,
	BindTo_PE_paper_exp2_task_3_taskIn_TREADY,
	BindTo_PE_paper_exp2_task_3_taskIn_TVALID,
	BindTo_PE_paper_exp2_task_3_taskIn_TDATA,
	BindTo_PE_paper_exp2_task_0_taskOut_TREADY,
	BindTo_PE_paper_exp2_task_0_taskOut_TVALID,
	BindTo_PE_paper_exp2_task_0_taskOut_TDATA,
	BindTo_PE_paper_exp2_task_1_taskOut_TREADY,
	BindTo_PE_paper_exp2_task_1_taskOut_TVALID,
	BindTo_PE_paper_exp2_task_1_taskOut_TDATA,
	BindTo_PE_paper_exp2_task_2_taskOut_TREADY,
	BindTo_PE_paper_exp2_task_2_taskOut_TVALID,
	BindTo_PE_paper_exp2_task_2_taskOut_TDATA,
	BindTo_PE_paper_exp2_task_3_taskOut_TREADY,
	BindTo_PE_paper_exp2_task_3_taskOut_TVALID,
	BindTo_PE_paper_exp2_task_3_taskOut_TDATA,
	BindTo_PE_paper_exp2_task_0_taskOutGlobal_TREADY,
	BindTo_PE_paper_exp2_task_0_taskOutGlobal_TVALID,
	BindTo_PE_paper_exp2_task_0_taskOutGlobal_TDATA,
	BindTo_PE_paper_exp2_task_1_taskOutGlobal_TREADY,
	BindTo_PE_paper_exp2_task_1_taskOutGlobal_TVALID,
	BindTo_PE_paper_exp2_task_1_taskOutGlobal_TDATA,
	BindTo_PE_paper_exp2_task_2_taskOutGlobal_TREADY,
	BindTo_PE_paper_exp2_task_2_taskOutGlobal_TVALID,
	BindTo_PE_paper_exp2_task_2_taskOutGlobal_TDATA,
	BindTo_PE_paper_exp2_task_3_taskOutGlobal_TREADY,
	BindTo_PE_paper_exp2_task_3_taskOutGlobal_TVALID,
	BindTo_PE_paper_exp2_task_3_taskOutGlobal_TDATA,
	BindTo_PE_paper_exp2_task2_0_taskIn_TREADY,
	BindTo_PE_paper_exp2_task2_0_taskIn_TVALID,
	BindTo_PE_paper_exp2_task2_0_taskIn_TDATA,
	BindTo_PE_paper_exp2_task2_1_taskIn_TREADY,
	BindTo_PE_paper_exp2_task2_1_taskIn_TVALID,
	BindTo_PE_paper_exp2_task2_1_taskIn_TDATA,
	BindTo_PE_paper_exp2_task2_2_taskIn_TREADY,
	BindTo_PE_paper_exp2_task2_2_taskIn_TVALID,
	BindTo_PE_paper_exp2_task2_2_taskIn_TDATA,
	BindTo_PE_paper_exp2_task2_3_taskIn_TREADY,
	BindTo_PE_paper_exp2_task2_3_taskIn_TVALID,
	BindTo_PE_paper_exp2_task2_3_taskIn_TDATA,
	BindTo_PE_paper_exp2_task2_0_argOut_TREADY,
	BindTo_PE_paper_exp2_task2_0_argOut_TVALID,
	BindTo_PE_paper_exp2_task2_0_argOut_TDATA,
	BindTo_PE_paper_exp2_task2_1_argOut_TREADY,
	BindTo_PE_paper_exp2_task2_1_argOut_TVALID,
	BindTo_PE_paper_exp2_task2_1_argOut_TDATA,
	BindTo_PE_paper_exp2_task2_2_argOut_TREADY,
	BindTo_PE_paper_exp2_task2_2_argOut_TVALID,
	BindTo_PE_paper_exp2_task2_2_argOut_TDATA,
	BindTo_PE_paper_exp2_task2_3_argOut_TREADY,
	BindTo_PE_paper_exp2_task2_3_argOut_TVALID,
	BindTo_PE_paper_exp2_task2_3_argOut_TDATA,
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
	m_axi_04_BRESP
);
	input clock;
	input reset_n;
	wire reset = ~reset_n;
	output wire paused;
	output wire done;
	output wire s_axil_mgmt_hardcilk_ARREADY;
	input s_axil_mgmt_hardcilk_ARVALID;
	input [8:0] s_axil_mgmt_hardcilk_ARADDR;
	input [2:0] s_axil_mgmt_hardcilk_ARPROT;
	input s_axil_mgmt_hardcilk_RREADY;
	output wire s_axil_mgmt_hardcilk_RVALID;
	output wire [31:0] s_axil_mgmt_hardcilk_RDATA;
	output wire [1:0] s_axil_mgmt_hardcilk_RRESP;
	output wire s_axil_mgmt_hardcilk_AWREADY;
	input s_axil_mgmt_hardcilk_AWVALID;
	input [8:0] s_axil_mgmt_hardcilk_AWADDR;
	input [2:0] s_axil_mgmt_hardcilk_AWPROT;
	output wire s_axil_mgmt_hardcilk_WREADY;
	input s_axil_mgmt_hardcilk_WVALID;
	input [31:0] s_axil_mgmt_hardcilk_WDATA;
	input [3:0] s_axil_mgmt_hardcilk_WSTRB;
	input s_axil_mgmt_hardcilk_BREADY;
	output wire s_axil_mgmt_hardcilk_BVALID;
	output wire [1:0] s_axil_mgmt_hardcilk_BRESP;
	input BindTo_PE_paper_exp2_task_0_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task_0_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task_0_taskIn_TDATA;
	input BindTo_PE_paper_exp2_task_1_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task_1_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task_1_taskIn_TDATA;
	input BindTo_PE_paper_exp2_task_2_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task_2_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task_2_taskIn_TDATA;
	input BindTo_PE_paper_exp2_task_3_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task_3_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task_3_taskIn_TDATA;
	output wire BindTo_PE_paper_exp2_task_0_taskOut_TREADY;
	input BindTo_PE_paper_exp2_task_0_taskOut_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_0_taskOut_TDATA;
	output wire BindTo_PE_paper_exp2_task_1_taskOut_TREADY;
	input BindTo_PE_paper_exp2_task_1_taskOut_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_1_taskOut_TDATA;
	output wire BindTo_PE_paper_exp2_task_2_taskOut_TREADY;
	input BindTo_PE_paper_exp2_task_2_taskOut_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_2_taskOut_TDATA;
	output wire BindTo_PE_paper_exp2_task_3_taskOut_TREADY;
	input BindTo_PE_paper_exp2_task_3_taskOut_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_3_taskOut_TDATA;
	output wire BindTo_PE_paper_exp2_task_0_taskOutGlobal_TREADY;
	input BindTo_PE_paper_exp2_task_0_taskOutGlobal_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_0_taskOutGlobal_TDATA;
	output wire BindTo_PE_paper_exp2_task_1_taskOutGlobal_TREADY;
	input BindTo_PE_paper_exp2_task_1_taskOutGlobal_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_1_taskOutGlobal_TDATA;
	output wire BindTo_PE_paper_exp2_task_2_taskOutGlobal_TREADY;
	input BindTo_PE_paper_exp2_task_2_taskOutGlobal_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_2_taskOutGlobal_TDATA;
	output wire BindTo_PE_paper_exp2_task_3_taskOutGlobal_TREADY;
	input BindTo_PE_paper_exp2_task_3_taskOutGlobal_TVALID;
	input [127:0] BindTo_PE_paper_exp2_task_3_taskOutGlobal_TDATA;
	input BindTo_PE_paper_exp2_task2_0_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task2_0_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task2_0_taskIn_TDATA;
	input BindTo_PE_paper_exp2_task2_1_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task2_1_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task2_1_taskIn_TDATA;
	input BindTo_PE_paper_exp2_task2_2_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task2_2_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task2_2_taskIn_TDATA;
	input BindTo_PE_paper_exp2_task2_3_taskIn_TREADY;
	output wire BindTo_PE_paper_exp2_task2_3_taskIn_TVALID;
	output wire [127:0] BindTo_PE_paper_exp2_task2_3_taskIn_TDATA;
	output wire BindTo_PE_paper_exp2_task2_0_argOut_TREADY;
	input BindTo_PE_paper_exp2_task2_0_argOut_TVALID;
	input [63:0] BindTo_PE_paper_exp2_task2_0_argOut_TDATA;
	output wire BindTo_PE_paper_exp2_task2_1_argOut_TREADY;
	input BindTo_PE_paper_exp2_task2_1_argOut_TVALID;
	input [63:0] BindTo_PE_paper_exp2_task2_1_argOut_TDATA;
	output wire BindTo_PE_paper_exp2_task2_2_argOut_TREADY;
	input BindTo_PE_paper_exp2_task2_2_argOut_TVALID;
	input [63:0] BindTo_PE_paper_exp2_task2_2_argOut_TDATA;
	output wire BindTo_PE_paper_exp2_task2_3_argOut_TREADY;
	input BindTo_PE_paper_exp2_task2_3_argOut_TVALID;
	input [63:0] BindTo_PE_paper_exp2_task2_3_argOut_TDATA;
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
	wire _widen_mod_4_s_axi_ar_ready;
	wire _widen_mod_4_s_axi_r_valid;
	wire [255:0] _widen_mod_4_s_axi_r_bits_data;
	wire [1:0] _widen_mod_4_s_axi_r_bits_resp;
	wire _widen_mod_4_s_axi_r_bits_last;
	wire _widen_mod_4_s_axi_aw_ready;
	wire _widen_mod_4_s_axi_w_ready;
	wire _widen_mod_4_s_axi_b_valid;
	wire [1:0] _widen_mod_4_s_axi_b_bits_resp;
	wire _widen_mod_4_m_axi_ar_valid;
	wire [1:0] _widen_mod_4_m_axi_ar_bits_id;
	wire [63:0] _widen_mod_4_m_axi_ar_bits_addr;
	wire [7:0] _widen_mod_4_m_axi_ar_bits_len;
	wire [1:0] _widen_mod_4_m_axi_ar_bits_burst;
	wire _widen_mod_4_m_axi_ar_bits_lock;
	wire [3:0] _widen_mod_4_m_axi_ar_bits_cache;
	wire [2:0] _widen_mod_4_m_axi_ar_bits_prot;
	wire [3:0] _widen_mod_4_m_axi_ar_bits_qos;
	wire [3:0] _widen_mod_4_m_axi_ar_bits_region;
	wire _widen_mod_4_m_axi_r_ready;
	wire _widen_mod_4_m_axi_aw_valid;
	wire [1:0] _widen_mod_4_m_axi_aw_bits_id;
	wire [63:0] _widen_mod_4_m_axi_aw_bits_addr;
	wire [7:0] _widen_mod_4_m_axi_aw_bits_len;
	wire [2:0] _widen_mod_4_m_axi_aw_bits_size;
	wire [1:0] _widen_mod_4_m_axi_aw_bits_burst;
	wire _widen_mod_4_m_axi_aw_bits_lock;
	wire [3:0] _widen_mod_4_m_axi_aw_bits_cache;
	wire [2:0] _widen_mod_4_m_axi_aw_bits_prot;
	wire [3:0] _widen_mod_4_m_axi_aw_bits_qos;
	wire [3:0] _widen_mod_4_m_axi_aw_bits_region;
	wire _widen_mod_4_m_axi_w_valid;
	wire [255:0] _widen_mod_4_m_axi_w_bits_data;
	wire [31:0] _widen_mod_4_m_axi_w_bits_strb;
	wire _widen_mod_4_m_axi_b_ready;
	wire _sinkBuffer_9_io_enq_ready;
	wire _sinkBuffer_9_io_deq_valid;
	wire _sourceBuffer_14_io_enq_ready;
	wire _sourceBuffer_14_io_deq_valid;
	wire [127:0] _sourceBuffer_14_io_deq_bits_data;
	wire [15:0] _sourceBuffer_14_io_deq_bits_strb;
	wire _sourceBuffer_14_io_deq_bits_last;
	wire _sourceBuffer_13_io_enq_ready;
	wire _sourceBuffer_13_io_deq_valid;
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
	wire [127:0] _sinkBuffer_8_io_deq_bits_data;
	wire _sinkBuffer_8_io_deq_bits_last;
	wire _sourceBuffer_12_io_enq_ready;
	wire _sourceBuffer_12_io_deq_valid;
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
	wire [127:0] _AxiUserYanker_4_s_axi_r_bits_data;
	wire _AxiUserYanker_4_s_axi_r_bits_last;
	wire _AxiUserYanker_4_s_axi_aw_ready;
	wire _AxiUserYanker_4_s_axi_w_ready;
	wire _AxiUserYanker_4_s_axi_b_valid;
	wire _AxiUserYanker_4_m_axi_ar_valid;
	wire [63:0] _AxiUserYanker_4_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_4_m_axi_ar_bits_len;
	wire _AxiUserYanker_4_m_axi_r_ready;
	wire _AxiUserYanker_4_m_axi_aw_valid;
	wire [63:0] _AxiUserYanker_4_m_axi_aw_bits_addr;
	wire [7:0] _AxiUserYanker_4_m_axi_aw_bits_len;
	wire _AxiUserYanker_4_m_axi_w_valid;
	wire [127:0] _AxiUserYanker_4_m_axi_w_bits_data;
	wire _AxiUserYanker_4_m_axi_w_bits_last;
	wire _AxiUserYanker_4_m_axi_b_ready;
	wire _protocolConverter_4_s_axi_ar_ready;
	wire _protocolConverter_4_s_axi_r_valid;
	wire [127:0] _protocolConverter_4_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_4_s_axi_r_bits_resp;
	wire _protocolConverter_4_s_axi_r_bits_last;
	wire _protocolConverter_4_s_axi_aw_ready;
	wire _protocolConverter_4_s_axi_w_ready;
	wire _protocolConverter_4_s_axi_b_valid;
	wire _protocolConverter_4_m_axi_ar_valid;
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
	wire _widen_mod_3_s_axi_ar_ready;
	wire _widen_mod_3_s_axi_r_valid;
	wire [1:0] _widen_mod_3_s_axi_r_bits_id;
	wire [255:0] _widen_mod_3_s_axi_r_bits_data;
	wire [1:0] _widen_mod_3_s_axi_r_bits_resp;
	wire _widen_mod_3_s_axi_r_bits_last;
	wire _widen_mod_3_s_axi_aw_ready;
	wire _widen_mod_3_s_axi_w_ready;
	wire _widen_mod_3_s_axi_b_valid;
	wire [1:0] _widen_mod_3_s_axi_b_bits_id;
	wire [1:0] _widen_mod_3_s_axi_b_bits_resp;
	wire _widen_mod_3_m_axi_ar_valid;
	wire [1:0] _widen_mod_3_m_axi_ar_bits_id;
	wire [63:0] _widen_mod_3_m_axi_ar_bits_addr;
	wire [7:0] _widen_mod_3_m_axi_ar_bits_len;
	wire [1:0] _widen_mod_3_m_axi_ar_bits_burst;
	wire _widen_mod_3_m_axi_ar_bits_lock;
	wire [3:0] _widen_mod_3_m_axi_ar_bits_cache;
	wire [2:0] _widen_mod_3_m_axi_ar_bits_prot;
	wire [3:0] _widen_mod_3_m_axi_ar_bits_qos;
	wire [3:0] _widen_mod_3_m_axi_ar_bits_region;
	wire _widen_mod_3_m_axi_r_ready;
	wire _widen_mod_3_m_axi_aw_valid;
	wire [1:0] _widen_mod_3_m_axi_aw_bits_id;
	wire [63:0] _widen_mod_3_m_axi_aw_bits_addr;
	wire [7:0] _widen_mod_3_m_axi_aw_bits_len;
	wire [2:0] _widen_mod_3_m_axi_aw_bits_size;
	wire [1:0] _widen_mod_3_m_axi_aw_bits_burst;
	wire _widen_mod_3_m_axi_aw_bits_lock;
	wire [3:0] _widen_mod_3_m_axi_aw_bits_cache;
	wire [2:0] _widen_mod_3_m_axi_aw_bits_prot;
	wire [3:0] _widen_mod_3_m_axi_aw_bits_qos;
	wire [3:0] _widen_mod_3_m_axi_aw_bits_region;
	wire _widen_mod_3_m_axi_w_valid;
	wire [255:0] _widen_mod_3_m_axi_w_bits_data;
	wire [31:0] _widen_mod_3_m_axi_w_bits_strb;
	wire _widen_mod_3_m_axi_b_ready;
	wire _sinkBuffer_7_io_enq_ready;
	wire _sinkBuffer_7_io_deq_valid;
	wire [1:0] _sinkBuffer_7_io_deq_bits_id;
	wire _sourceBuffer_11_io_enq_ready;
	wire _sourceBuffer_11_io_deq_valid;
	wire [127:0] _sourceBuffer_11_io_deq_bits_data;
	wire [15:0] _sourceBuffer_11_io_deq_bits_strb;
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
	wire [127:0] _sinkBuffer_6_io_deq_bits_data;
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
	wire [127:0] _AxiUserYanker_3_s_axi_r_bits_data;
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
	wire [127:0] _AxiUserYanker_3_m_axi_w_bits_data;
	wire [15:0] _AxiUserYanker_3_m_axi_w_bits_strb;
	wire _AxiUserYanker_3_m_axi_w_bits_last;
	wire _AxiUserYanker_3_m_axi_b_ready;
	wire _protocolConverter_3_s_axi_ar_ready;
	wire _protocolConverter_3_s_axi_r_valid;
	wire [1:0] _protocolConverter_3_s_axi_r_bits_id;
	wire [127:0] _protocolConverter_3_s_axi_r_bits_data;
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
	wire _widen_mod_2_s_axi_ar_ready;
	wire _widen_mod_2_s_axi_r_valid;
	wire [1:0] _widen_mod_2_s_axi_r_bits_id;
	wire [255:0] _widen_mod_2_s_axi_r_bits_data;
	wire [1:0] _widen_mod_2_s_axi_r_bits_resp;
	wire _widen_mod_2_s_axi_r_bits_last;
	wire _widen_mod_2_s_axi_aw_ready;
	wire _widen_mod_2_s_axi_w_ready;
	wire _widen_mod_2_s_axi_b_valid;
	wire [1:0] _widen_mod_2_s_axi_b_bits_id;
	wire [1:0] _widen_mod_2_s_axi_b_bits_resp;
	wire _widen_mod_2_m_axi_ar_valid;
	wire [1:0] _widen_mod_2_m_axi_ar_bits_id;
	wire [63:0] _widen_mod_2_m_axi_ar_bits_addr;
	wire [7:0] _widen_mod_2_m_axi_ar_bits_len;
	wire [1:0] _widen_mod_2_m_axi_ar_bits_burst;
	wire _widen_mod_2_m_axi_ar_bits_lock;
	wire [3:0] _widen_mod_2_m_axi_ar_bits_cache;
	wire [2:0] _widen_mod_2_m_axi_ar_bits_prot;
	wire [3:0] _widen_mod_2_m_axi_ar_bits_qos;
	wire [3:0] _widen_mod_2_m_axi_ar_bits_region;
	wire _widen_mod_2_m_axi_r_ready;
	wire _widen_mod_2_m_axi_aw_valid;
	wire [1:0] _widen_mod_2_m_axi_aw_bits_id;
	wire [63:0] _widen_mod_2_m_axi_aw_bits_addr;
	wire [7:0] _widen_mod_2_m_axi_aw_bits_len;
	wire [2:0] _widen_mod_2_m_axi_aw_bits_size;
	wire [1:0] _widen_mod_2_m_axi_aw_bits_burst;
	wire _widen_mod_2_m_axi_aw_bits_lock;
	wire [3:0] _widen_mod_2_m_axi_aw_bits_cache;
	wire [2:0] _widen_mod_2_m_axi_aw_bits_prot;
	wire [3:0] _widen_mod_2_m_axi_aw_bits_qos;
	wire [3:0] _widen_mod_2_m_axi_aw_bits_region;
	wire _widen_mod_2_m_axi_w_valid;
	wire [255:0] _widen_mod_2_m_axi_w_bits_data;
	wire [31:0] _widen_mod_2_m_axi_w_bits_strb;
	wire _widen_mod_2_m_axi_b_ready;
	wire _sinkBuffer_5_io_enq_ready;
	wire _sinkBuffer_5_io_deq_valid;
	wire _sourceBuffer_8_io_enq_ready;
	wire _sourceBuffer_8_io_deq_valid;
	wire [127:0] _sourceBuffer_8_io_deq_bits_data;
	wire [15:0] _sourceBuffer_8_io_deq_bits_strb;
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
	wire [127:0] _sinkBuffer_4_io_deq_bits_data;
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
	wire [127:0] _AxiUserYanker_2_s_axi_r_bits_data;
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
	wire [127:0] _AxiUserYanker_2_m_axi_w_bits_data;
	wire _AxiUserYanker_2_m_axi_w_bits_last;
	wire _protocolConverter_2_s_axi_ar_ready;
	wire _protocolConverter_2_s_axi_r_valid;
	wire _protocolConverter_2_s_axi_r_bits_id;
	wire [127:0] _protocolConverter_2_s_axi_r_bits_data;
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
	wire [1:0] _axpbs_1_s_axi_RID;
	wire [255:0] _axpbs_1_s_axi_RDATA;
	wire [1:0] _axpbs_1_s_axi_RRESP;
	wire _axpbs_1_s_axi_RLAST;
	wire _axpbs_1_s_axi_AWREADY;
	wire _axpbs_1_s_axi_WREADY;
	wire _axpbs_1_s_axi_BVALID;
	wire [1:0] _axpbs_1_s_axi_BID;
	wire [1:0] _axpbs_1_s_axi_BRESP;
	wire _widen_mod_1_s_axi_ar_ready;
	wire _widen_mod_1_s_axi_r_valid;
	wire [1:0] _widen_mod_1_s_axi_r_bits_id;
	wire [255:0] _widen_mod_1_s_axi_r_bits_data;
	wire [1:0] _widen_mod_1_s_axi_r_bits_resp;
	wire _widen_mod_1_s_axi_r_bits_last;
	wire _widen_mod_1_s_axi_aw_ready;
	wire _widen_mod_1_s_axi_w_ready;
	wire _widen_mod_1_s_axi_b_valid;
	wire [1:0] _widen_mod_1_s_axi_b_bits_id;
	wire [1:0] _widen_mod_1_s_axi_b_bits_resp;
	wire _widen_mod_1_m_axi_ar_valid;
	wire [1:0] _widen_mod_1_m_axi_ar_bits_id;
	wire [63:0] _widen_mod_1_m_axi_ar_bits_addr;
	wire [7:0] _widen_mod_1_m_axi_ar_bits_len;
	wire [1:0] _widen_mod_1_m_axi_ar_bits_burst;
	wire _widen_mod_1_m_axi_ar_bits_lock;
	wire [3:0] _widen_mod_1_m_axi_ar_bits_cache;
	wire [2:0] _widen_mod_1_m_axi_ar_bits_prot;
	wire [3:0] _widen_mod_1_m_axi_ar_bits_qos;
	wire [3:0] _widen_mod_1_m_axi_ar_bits_region;
	wire _widen_mod_1_m_axi_r_ready;
	wire _widen_mod_1_m_axi_aw_valid;
	wire [1:0] _widen_mod_1_m_axi_aw_bits_id;
	wire [63:0] _widen_mod_1_m_axi_aw_bits_addr;
	wire [7:0] _widen_mod_1_m_axi_aw_bits_len;
	wire [2:0] _widen_mod_1_m_axi_aw_bits_size;
	wire [1:0] _widen_mod_1_m_axi_aw_bits_burst;
	wire _widen_mod_1_m_axi_aw_bits_lock;
	wire [3:0] _widen_mod_1_m_axi_aw_bits_cache;
	wire [2:0] _widen_mod_1_m_axi_aw_bits_prot;
	wire [3:0] _widen_mod_1_m_axi_aw_bits_qos;
	wire [3:0] _widen_mod_1_m_axi_aw_bits_region;
	wire _widen_mod_1_m_axi_w_valid;
	wire [255:0] _widen_mod_1_m_axi_w_bits_data;
	wire [31:0] _widen_mod_1_m_axi_w_bits_strb;
	wire _widen_mod_1_m_axi_b_ready;
	wire _sinkBuffer_3_io_enq_ready;
	wire _sinkBuffer_3_io_deq_valid;
	wire [1:0] _sinkBuffer_3_io_deq_bits_id;
	wire _sourceBuffer_5_io_enq_ready;
	wire _sourceBuffer_5_io_deq_valid;
	wire [127:0] _sourceBuffer_5_io_deq_bits_data;
	wire [15:0] _sourceBuffer_5_io_deq_bits_strb;
	wire _sourceBuffer_5_io_deq_bits_last;
	wire _sourceBuffer_4_io_enq_ready;
	wire _sourceBuffer_4_io_deq_valid;
	wire [1:0] _sourceBuffer_4_io_deq_bits_id;
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
	wire [1:0] _sinkBuffer_2_io_deq_bits_id;
	wire [127:0] _sinkBuffer_2_io_deq_bits_data;
	wire [1:0] _sinkBuffer_2_io_deq_bits_resp;
	wire _sinkBuffer_2_io_deq_bits_last;
	wire _sourceBuffer_3_io_enq_ready;
	wire _sourceBuffer_3_io_deq_valid;
	wire [1:0] _sourceBuffer_3_io_deq_bits_id;
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
	wire [1:0] _AxiUserYanker_1_s_axi_r_bits_id;
	wire [127:0] _AxiUserYanker_1_s_axi_r_bits_data;
	wire [1:0] _AxiUserYanker_1_s_axi_r_bits_resp;
	wire _AxiUserYanker_1_s_axi_r_bits_last;
	wire _AxiUserYanker_1_s_axi_aw_ready;
	wire _AxiUserYanker_1_s_axi_w_ready;
	wire _AxiUserYanker_1_s_axi_b_valid;
	wire [1:0] _AxiUserYanker_1_s_axi_b_bits_id;
	wire _AxiUserYanker_1_m_axi_ar_valid;
	wire [1:0] _AxiUserYanker_1_m_axi_ar_bits_id;
	wire [63:0] _AxiUserYanker_1_m_axi_ar_bits_addr;
	wire [7:0] _AxiUserYanker_1_m_axi_ar_bits_len;
	wire [2:0] _AxiUserYanker_1_m_axi_ar_bits_size;
	wire [1:0] _AxiUserYanker_1_m_axi_ar_bits_burst;
	wire _AxiUserYanker_1_m_axi_ar_bits_lock;
	wire [3:0] _AxiUserYanker_1_m_axi_ar_bits_cache;
	wire [2:0] _AxiUserYanker_1_m_axi_ar_bits_prot;
	wire [3:0] _AxiUserYanker_1_m_axi_ar_bits_qos;
	wire [3:0] _AxiUserYanker_1_m_axi_ar_bits_region;
	wire _AxiUserYanker_1_m_axi_r_ready;
	wire _AxiUserYanker_1_m_axi_aw_valid;
	wire [1:0] _AxiUserYanker_1_m_axi_aw_bits_id;
	wire [63:0] _AxiUserYanker_1_m_axi_aw_bits_addr;
	wire [2:0] _AxiUserYanker_1_m_axi_aw_bits_size;
	wire [1:0] _AxiUserYanker_1_m_axi_aw_bits_burst;
	wire _AxiUserYanker_1_m_axi_w_valid;
	wire [127:0] _AxiUserYanker_1_m_axi_w_bits_data;
	wire [15:0] _AxiUserYanker_1_m_axi_w_bits_strb;
	wire _AxiUserYanker_1_m_axi_w_bits_last;
	wire _AxiUserYanker_1_m_axi_b_ready;
	wire _protocolConverter_1_s_axi_ar_ready;
	wire _protocolConverter_1_s_axi_r_valid;
	wire [1:0] _protocolConverter_1_s_axi_r_bits_id;
	wire [127:0] _protocolConverter_1_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_1_s_axi_r_bits_resp;
	wire _protocolConverter_1_s_axi_r_bits_last;
	wire _protocolConverter_1_s_axi_aw_ready;
	wire _protocolConverter_1_s_axi_w_ready;
	wire _protocolConverter_1_s_axi_b_valid;
	wire [1:0] _protocolConverter_1_s_axi_b_bits_id;
	wire [1:0] _protocolConverter_1_s_axi_b_bits_resp;
	wire _protocolConverter_1_m_axi_ar_valid;
	wire [1:0] _protocolConverter_1_m_axi_ar_bits_id;
	wire [63:0] _protocolConverter_1_m_axi_ar_bits_addr;
	wire [7:0] _protocolConverter_1_m_axi_ar_bits_len;
	wire [2:0] _protocolConverter_1_m_axi_ar_bits_size;
	wire [1:0] _protocolConverter_1_m_axi_ar_bits_burst;
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
	wire [1:0] _protocolConverter_1_m_axi_aw_bits_burst;
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
	wire _widen_mod_s_axi_ar_ready;
	wire _widen_mod_s_axi_r_valid;
	wire [1:0] _widen_mod_s_axi_r_bits_id;
	wire [255:0] _widen_mod_s_axi_r_bits_data;
	wire [1:0] _widen_mod_s_axi_r_bits_resp;
	wire _widen_mod_s_axi_r_bits_last;
	wire _widen_mod_s_axi_aw_ready;
	wire _widen_mod_s_axi_w_ready;
	wire _widen_mod_s_axi_b_valid;
	wire [1:0] _widen_mod_s_axi_b_bits_id;
	wire [1:0] _widen_mod_s_axi_b_bits_resp;
	wire _widen_mod_m_axi_ar_valid;
	wire [1:0] _widen_mod_m_axi_ar_bits_id;
	wire [63:0] _widen_mod_m_axi_ar_bits_addr;
	wire [7:0] _widen_mod_m_axi_ar_bits_len;
	wire [1:0] _widen_mod_m_axi_ar_bits_burst;
	wire _widen_mod_m_axi_ar_bits_lock;
	wire [3:0] _widen_mod_m_axi_ar_bits_cache;
	wire [2:0] _widen_mod_m_axi_ar_bits_prot;
	wire [3:0] _widen_mod_m_axi_ar_bits_qos;
	wire [3:0] _widen_mod_m_axi_ar_bits_region;
	wire _widen_mod_m_axi_r_ready;
	wire _widen_mod_m_axi_aw_valid;
	wire [1:0] _widen_mod_m_axi_aw_bits_id;
	wire [63:0] _widen_mod_m_axi_aw_bits_addr;
	wire [7:0] _widen_mod_m_axi_aw_bits_len;
	wire [2:0] _widen_mod_m_axi_aw_bits_size;
	wire [1:0] _widen_mod_m_axi_aw_bits_burst;
	wire _widen_mod_m_axi_aw_bits_lock;
	wire [3:0] _widen_mod_m_axi_aw_bits_cache;
	wire [2:0] _widen_mod_m_axi_aw_bits_prot;
	wire [3:0] _widen_mod_m_axi_aw_bits_qos;
	wire [3:0] _widen_mod_m_axi_aw_bits_region;
	wire _widen_mod_m_axi_w_valid;
	wire [255:0] _widen_mod_m_axi_w_bits_data;
	wire [31:0] _widen_mod_m_axi_w_bits_strb;
	wire _widen_mod_m_axi_b_ready;
	wire _sinkBuffer_1_io_enq_ready;
	wire _sinkBuffer_1_io_deq_valid;
	wire _sourceBuffer_2_io_enq_ready;
	wire _sourceBuffer_2_io_deq_valid;
	wire [127:0] _sourceBuffer_2_io_deq_bits_data;
	wire [15:0] _sourceBuffer_2_io_deq_bits_strb;
	wire _sourceBuffer_2_io_deq_bits_last;
	wire _sourceBuffer_1_io_enq_ready;
	wire _sourceBuffer_1_io_deq_valid;
	wire _sourceBuffer_1_io_deq_bits_id;
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
	wire [127:0] _sinkBuffer_io_deq_bits_data;
	wire _sourceBuffer_io_enq_ready;
	wire _sourceBuffer_io_deq_valid;
	wire _sourceBuffer_io_deq_bits_id;
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
	wire [127:0] _AxiUserYanker_s_axi_r_bits_data;
	wire _AxiUserYanker_s_axi_aw_ready;
	wire _AxiUserYanker_s_axi_w_ready;
	wire _AxiUserYanker_s_axi_b_valid;
	wire _AxiUserYanker_m_axi_ar_valid;
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
	wire [127:0] _AxiUserYanker_m_axi_w_bits_data;
	wire _AxiUserYanker_m_axi_w_bits_last;
	wire _protocolConverter_s_axi_ar_ready;
	wire _protocolConverter_s_axi_r_valid;
	wire _protocolConverter_s_axi_r_bits_id;
	wire [127:0] _protocolConverter_s_axi_r_bits_data;
	wire [1:0] _protocolConverter_s_axi_r_bits_resp;
	wire _protocolConverter_s_axi_r_bits_last;
	wire _protocolConverter_s_axi_aw_ready;
	wire _protocolConverter_s_axi_w_ready;
	wire _protocolConverter_s_axi_b_valid;
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
	wire [8:0] _s_axil_mgmt_upscale_m_axi_ar_bits_addr;
	wire [2:0] _s_axil_mgmt_upscale_m_axi_ar_bits_prot;
	wire _s_axil_mgmt_upscale_m_axi_r_ready;
	wire _s_axil_mgmt_upscale_m_axi_aw_valid;
	wire [8:0] _s_axil_mgmt_upscale_m_axi_aw_bits_addr;
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
	wire [8:0] _demux_m_axil_0_ar_bits_addr;
	wire [2:0] _demux_m_axil_0_ar_bits_prot;
	wire _demux_m_axil_0_r_ready;
	wire _demux_m_axil_0_aw_valid;
	wire [8:0] _demux_m_axil_0_aw_bits_addr;
	wire [2:0] _demux_m_axil_0_aw_bits_prot;
	wire _demux_m_axil_0_w_valid;
	wire [63:0] _demux_m_axil_0_w_bits_data;
	wire [7:0] _demux_m_axil_0_w_bits_strb;
	wire _demux_m_axil_0_b_ready;
	wire _demux_m_axil_1_ar_valid;
	wire [8:0] _demux_m_axil_1_ar_bits_addr;
	wire [2:0] _demux_m_axil_1_ar_bits_prot;
	wire _demux_m_axil_1_r_ready;
	wire _demux_m_axil_1_aw_valid;
	wire [8:0] _demux_m_axil_1_aw_bits_addr;
	wire [2:0] _demux_m_axil_1_aw_bits_prot;
	wire _demux_m_axil_1_w_valid;
	wire [63:0] _demux_m_axil_1_w_bits_data;
	wire [7:0] _demux_m_axil_1_w_bits_strb;
	wire _demux_m_axil_1_b_ready;
	wire _demux_m_axil_2_ar_valid;
	wire [8:0] _demux_m_axil_2_ar_bits_addr;
	wire [2:0] _demux_m_axil_2_ar_bits_prot;
	wire _demux_m_axil_2_r_ready;
	wire _demux_m_axil_2_aw_valid;
	wire [8:0] _demux_m_axil_2_aw_bits_addr;
	wire [2:0] _demux_m_axil_2_aw_bits_prot;
	wire _demux_m_axil_2_w_valid;
	wire [63:0] _demux_m_axil_2_w_bits_data;
	wire [7:0] _demux_m_axil_2_w_bits_strb;
	wire _demux_m_axil_2_b_ready;
	wire _notifierMap_0_2_connStealNtw_0_ctrl_stealReq_valid;
	wire _notifierMap_0_2_connStealNtw_0_data_qOutTask_valid;
	wire [127:0] _notifierMap_0_2_connStealNtw_0_data_qOutTask_bits;
	wire _notifierMap_0_2_axi_full_argRoute_0_ar_valid;
	wire [1:0] _notifierMap_0_2_axi_full_argRoute_0_ar_bits_id;
	wire [63:0] _notifierMap_0_2_axi_full_argRoute_0_ar_bits_addr;
	wire _notifierMap_0_2_axi_full_argRoute_0_r_ready;
	wire _notifierMap_0_2_axi_full_argRoute_0_aw_valid;
	wire [1:0] _notifierMap_0_2_axi_full_argRoute_0_aw_bits_id;
	wire [63:0] _notifierMap_0_2_axi_full_argRoute_0_aw_bits_addr;
	wire _notifierMap_0_2_axi_full_argRoute_0_w_valid;
	wire [127:0] _notifierMap_0_2_axi_full_argRoute_0_w_bits_data;
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
	wire [127:0] _schedulerMap_1_2_spawnerServerAXI_0_w_bits_data;
	wire _schedulerMap_1_2_spawnerServerAXI_0_w_bits_last;
	wire _schedulerMap_1_2_spawnerServerAXI_0_b_ready;
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
	wire [127:0] _schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_data;
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
	wire [127:0] _schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_data;
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
	Scheduler schedulerMap_0_2(
		.clock(clock),
		.reset(reset),
		.io_export_taskOut_0_TREADY(BindTo_PE_paper_exp2_task_0_taskIn_TREADY),
		.io_export_taskOut_0_TVALID(BindTo_PE_paper_exp2_task_0_taskIn_TVALID),
		.io_export_taskOut_0_TDATA(BindTo_PE_paper_exp2_task_0_taskIn_TDATA),
		.io_export_taskOut_1_TREADY(BindTo_PE_paper_exp2_task_1_taskIn_TREADY),
		.io_export_taskOut_1_TVALID(BindTo_PE_paper_exp2_task_1_taskIn_TVALID),
		.io_export_taskOut_1_TDATA(BindTo_PE_paper_exp2_task_1_taskIn_TDATA),
		.io_export_taskOut_2_TREADY(BindTo_PE_paper_exp2_task_2_taskIn_TREADY),
		.io_export_taskOut_2_TVALID(BindTo_PE_paper_exp2_task_2_taskIn_TVALID),
		.io_export_taskOut_2_TDATA(BindTo_PE_paper_exp2_task_2_taskIn_TDATA),
		.io_export_taskOut_3_TREADY(BindTo_PE_paper_exp2_task_3_taskIn_TREADY),
		.io_export_taskOut_3_TVALID(BindTo_PE_paper_exp2_task_3_taskIn_TVALID),
		.io_export_taskOut_3_TDATA(BindTo_PE_paper_exp2_task_3_taskIn_TDATA),
		.io_export_taskIn_0_TREADY(BindTo_PE_paper_exp2_task_0_taskOut_TREADY),
		.io_export_taskIn_0_TVALID(BindTo_PE_paper_exp2_task_0_taskOut_TVALID),
		.io_export_taskIn_0_TDATA(BindTo_PE_paper_exp2_task_0_taskOut_TDATA),
		.io_export_taskIn_1_TREADY(BindTo_PE_paper_exp2_task_1_taskOut_TREADY),
		.io_export_taskIn_1_TVALID(BindTo_PE_paper_exp2_task_1_taskOut_TVALID),
		.io_export_taskIn_1_TDATA(BindTo_PE_paper_exp2_task_1_taskOut_TDATA),
		.io_export_taskIn_2_TREADY(BindTo_PE_paper_exp2_task_2_taskOut_TREADY),
		.io_export_taskIn_2_TVALID(BindTo_PE_paper_exp2_task_2_taskOut_TVALID),
		.io_export_taskIn_2_TDATA(BindTo_PE_paper_exp2_task_2_taskOut_TDATA),
		.io_export_taskIn_3_TREADY(BindTo_PE_paper_exp2_task_3_taskOut_TREADY),
		.io_export_taskIn_3_TVALID(BindTo_PE_paper_exp2_task_3_taskOut_TVALID),
		.io_export_taskIn_3_TDATA(BindTo_PE_paper_exp2_task_3_taskOut_TDATA),
		.io_internal_vss_axi_full_0_ar_ready(_AxiUserYanker_s_axi_ar_ready),
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
		.io_internal_vss_axi_full_0_r_valid(_AxiUserYanker_s_axi_r_valid),
		.io_internal_vss_axi_full_0_r_bits_data(_AxiUserYanker_s_axi_r_bits_data),
		.io_internal_vss_axi_full_0_aw_ready(_AxiUserYanker_s_axi_aw_ready),
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
		.io_internal_vss_axi_full_0_w_ready(_AxiUserYanker_s_axi_w_ready),
		.io_internal_vss_axi_full_0_w_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_valid),
		.io_internal_vss_axi_full_0_w_bits_data(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_data),
		.io_internal_vss_axi_full_0_w_bits_last(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_last),
		.io_internal_vss_axi_full_0_b_valid(_AxiUserYanker_s_axi_b_valid),
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
		.spawnerServerMgmt_0_ar_valid(_demux_m_axil_2_ar_valid),
		.spawnerServerMgmt_0_ar_bits_addr(_demux_m_axil_2_ar_bits_addr[5:0]),
		.spawnerServerMgmt_0_ar_bits_prot(_demux_m_axil_2_ar_bits_prot),
		.spawnerServerMgmt_0_r_ready(_demux_m_axil_2_r_ready),
		.spawnerServerMgmt_0_r_valid(_schedulerMap_1_2_spawnerServerMgmt_0_r_valid),
		.spawnerServerMgmt_0_r_bits_data(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_data),
		.spawnerServerMgmt_0_r_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_resp),
		.spawnerServerMgmt_0_aw_ready(_schedulerMap_1_2_spawnerServerMgmt_0_aw_ready),
		.spawnerServerMgmt_0_aw_valid(_demux_m_axil_2_aw_valid),
		.spawnerServerMgmt_0_aw_bits_addr(_demux_m_axil_2_aw_bits_addr[5:0]),
		.spawnerServerMgmt_0_aw_bits_prot(_demux_m_axil_2_aw_bits_prot),
		.spawnerServerMgmt_0_w_ready(_schedulerMap_1_2_spawnerServerMgmt_0_w_ready),
		.spawnerServerMgmt_0_w_valid(_demux_m_axil_2_w_valid),
		.spawnerServerMgmt_0_w_bits_data(_demux_m_axil_2_w_bits_data),
		.spawnerServerMgmt_0_w_bits_strb(_demux_m_axil_2_w_bits_strb),
		.spawnerServerMgmt_0_b_ready(_demux_m_axil_2_b_ready),
		.spawnerServerMgmt_0_b_valid(_schedulerMap_1_2_spawnerServerMgmt_0_b_valid),
		.spawnerServerMgmt_0_b_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_b_bits_resp),
		.spawnerServerAXI_0_ar_ready(_AxiUserYanker_4_s_axi_ar_ready),
		.spawnerServerAXI_0_ar_valid(_schedulerMap_1_2_spawnerServerAXI_0_ar_valid),
		.spawnerServerAXI_0_ar_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_addr),
		.spawnerServerAXI_0_ar_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_len),
		.spawnerServerAXI_0_r_ready(_schedulerMap_1_2_spawnerServerAXI_0_r_ready),
		.spawnerServerAXI_0_r_valid(_AxiUserYanker_4_s_axi_r_valid),
		.spawnerServerAXI_0_r_bits_data(_AxiUserYanker_4_s_axi_r_bits_data),
		.spawnerServerAXI_0_r_bits_last(_AxiUserYanker_4_s_axi_r_bits_last),
		.spawnerServerAXI_0_aw_ready(_AxiUserYanker_4_s_axi_aw_ready),
		.spawnerServerAXI_0_aw_valid(_schedulerMap_1_2_spawnerServerAXI_0_aw_valid),
		.spawnerServerAXI_0_aw_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_addr),
		.spawnerServerAXI_0_aw_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_len),
		.spawnerServerAXI_0_w_ready(_AxiUserYanker_4_s_axi_w_ready),
		.spawnerServerAXI_0_w_valid(_schedulerMap_1_2_spawnerServerAXI_0_w_valid),
		.spawnerServerAXI_0_w_bits_data(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_data),
		.spawnerServerAXI_0_w_bits_last(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_last),
		.spawnerServerAXI_0_b_ready(_schedulerMap_1_2_spawnerServerAXI_0_b_ready),
		.spawnerServerAXI_0_b_valid(_AxiUserYanker_4_s_axi_b_valid),
		.io_export_taskOut_0_TREADY(BindTo_PE_paper_exp2_task2_0_taskIn_TREADY),
		.io_export_taskOut_0_TVALID(BindTo_PE_paper_exp2_task2_0_taskIn_TVALID),
		.io_export_taskOut_0_TDATA(BindTo_PE_paper_exp2_task2_0_taskIn_TDATA),
		.io_export_taskOut_1_TREADY(BindTo_PE_paper_exp2_task2_1_taskIn_TREADY),
		.io_export_taskOut_1_TVALID(BindTo_PE_paper_exp2_task2_1_taskIn_TVALID),
		.io_export_taskOut_1_TDATA(BindTo_PE_paper_exp2_task2_1_taskIn_TDATA),
		.io_export_taskOut_2_TREADY(BindTo_PE_paper_exp2_task2_2_taskIn_TREADY),
		.io_export_taskOut_2_TVALID(BindTo_PE_paper_exp2_task2_2_taskIn_TVALID),
		.io_export_taskOut_2_TDATA(BindTo_PE_paper_exp2_task2_2_taskIn_TDATA),
		.io_export_taskOut_3_TREADY(BindTo_PE_paper_exp2_task2_3_taskIn_TREADY),
		.io_export_taskOut_3_TVALID(BindTo_PE_paper_exp2_task2_3_taskIn_TVALID),
		.io_export_taskOut_3_TDATA(BindTo_PE_paper_exp2_task2_3_taskIn_TDATA),
		.io_export_taskInGlobal_0_TREADY(BindTo_PE_paper_exp2_task_0_taskOutGlobal_TREADY),
		.io_export_taskInGlobal_0_TVALID(BindTo_PE_paper_exp2_task_0_taskOutGlobal_TVALID),
		.io_export_taskInGlobal_0_TDATA(BindTo_PE_paper_exp2_task_0_taskOutGlobal_TDATA),
		.io_export_taskInGlobal_1_TREADY(BindTo_PE_paper_exp2_task_1_taskOutGlobal_TREADY),
		.io_export_taskInGlobal_1_TVALID(BindTo_PE_paper_exp2_task_1_taskOutGlobal_TVALID),
		.io_export_taskInGlobal_1_TDATA(BindTo_PE_paper_exp2_task_1_taskOutGlobal_TDATA),
		.io_export_taskInGlobal_2_TREADY(BindTo_PE_paper_exp2_task_2_taskOutGlobal_TREADY),
		.io_export_taskInGlobal_2_TVALID(BindTo_PE_paper_exp2_task_2_taskOutGlobal_TVALID),
		.io_export_taskInGlobal_2_TDATA(BindTo_PE_paper_exp2_task_2_taskOutGlobal_TDATA),
		.io_export_taskInGlobal_3_TREADY(BindTo_PE_paper_exp2_task_3_taskOutGlobal_TREADY),
		.io_export_taskInGlobal_3_TVALID(BindTo_PE_paper_exp2_task_3_taskOutGlobal_TVALID),
		.io_export_taskInGlobal_3_TDATA(BindTo_PE_paper_exp2_task_3_taskOutGlobal_TDATA),
		.io_internal_vss_axi_full_0_ar_ready(_AxiUserYanker_2_s_axi_ar_ready),
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
		.io_internal_vss_axi_full_0_r_valid(_AxiUserYanker_2_s_axi_r_valid),
		.io_internal_vss_axi_full_0_r_bits_data(_AxiUserYanker_2_s_axi_r_bits_data),
		.io_internal_vss_axi_full_0_aw_ready(_AxiUserYanker_2_s_axi_aw_ready),
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
		.io_internal_vss_axi_full_0_w_ready(_AxiUserYanker_2_s_axi_w_ready),
		.io_internal_vss_axi_full_0_w_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_valid),
		.io_internal_vss_axi_full_0_w_bits_data(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_data),
		.io_internal_vss_axi_full_0_w_bits_last(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_last),
		.io_internal_vss_axi_full_0_b_valid(_AxiUserYanker_2_s_axi_b_valid),
		.io_internal_axi_mgmt_vss_0_ar_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_ar_ready),
		.io_internal_axi_mgmt_vss_0_ar_valid(_demux_m_axil_1_ar_valid),
		.io_internal_axi_mgmt_vss_0_ar_bits_addr(_demux_m_axil_1_ar_bits_addr[5:0]),
		.io_internal_axi_mgmt_vss_0_ar_bits_prot(_demux_m_axil_1_ar_bits_prot),
		.io_internal_axi_mgmt_vss_0_r_ready(_demux_m_axil_1_r_ready),
		.io_internal_axi_mgmt_vss_0_r_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_valid),
		.io_internal_axi_mgmt_vss_0_r_bits_data(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_data),
		.io_internal_axi_mgmt_vss_0_r_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_resp),
		.io_internal_axi_mgmt_vss_0_aw_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_aw_ready),
		.io_internal_axi_mgmt_vss_0_aw_valid(_demux_m_axil_1_aw_valid),
		.io_internal_axi_mgmt_vss_0_aw_bits_addr(_demux_m_axil_1_aw_bits_addr[5:0]),
		.io_internal_axi_mgmt_vss_0_aw_bits_prot(_demux_m_axil_1_aw_bits_prot),
		.io_internal_axi_mgmt_vss_0_w_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_w_ready),
		.io_internal_axi_mgmt_vss_0_w_valid(_demux_m_axil_1_w_valid),
		.io_internal_axi_mgmt_vss_0_w_bits_data(_demux_m_axil_1_w_bits_data),
		.io_internal_axi_mgmt_vss_0_w_bits_strb(_demux_m_axil_1_w_bits_strb),
		.io_internal_axi_mgmt_vss_0_b_ready(_demux_m_axil_1_b_ready),
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
		.io_export_argIn_0_TREADY(BindTo_PE_paper_exp2_task2_0_argOut_TREADY),
		.io_export_argIn_0_TVALID(BindTo_PE_paper_exp2_task2_0_argOut_TVALID),
		.io_export_argIn_0_TDATA(BindTo_PE_paper_exp2_task2_0_argOut_TDATA),
		.io_export_argIn_1_TREADY(BindTo_PE_paper_exp2_task2_1_argOut_TREADY),
		.io_export_argIn_1_TVALID(BindTo_PE_paper_exp2_task2_1_argOut_TVALID),
		.io_export_argIn_1_TDATA(BindTo_PE_paper_exp2_task2_1_argOut_TDATA),
		.io_export_argIn_2_TREADY(BindTo_PE_paper_exp2_task2_2_argOut_TREADY),
		.io_export_argIn_2_TVALID(BindTo_PE_paper_exp2_task2_2_argOut_TVALID),
		.io_export_argIn_2_TDATA(BindTo_PE_paper_exp2_task2_2_argOut_TDATA),
		.io_export_argIn_3_TREADY(BindTo_PE_paper_exp2_task2_3_argOut_TREADY),
		.io_export_argIn_3_TVALID(BindTo_PE_paper_exp2_task2_3_argOut_TVALID),
		.io_export_argIn_3_TDATA(BindTo_PE_paper_exp2_task2_3_argOut_TDATA),
		.io_export_done(done),
		.connStealNtw_0_ctrl_stealReq_valid(_notifierMap_0_2_connStealNtw_0_ctrl_stealReq_valid),
		.connStealNtw_0_ctrl_stealReq_ready(_schedulerMap_1_2_connArgumentNotifier_0_ctrl_stealReq_ready),
		.connStealNtw_0_data_qOutTask_ready(_schedulerMap_1_2_connArgumentNotifier_0_data_qOutTask_ready),
		.connStealNtw_0_data_qOutTask_valid(_notifierMap_0_2_connStealNtw_0_data_qOutTask_valid),
		.connStealNtw_0_data_qOutTask_bits(_notifierMap_0_2_connStealNtw_0_data_qOutTask_bits),
		.axi_full_argRoute_0_ar_ready(_AxiUserYanker_1_s_axi_ar_ready),
		.axi_full_argRoute_0_ar_valid(_notifierMap_0_2_axi_full_argRoute_0_ar_valid),
		.axi_full_argRoute_0_ar_bits_id(_notifierMap_0_2_axi_full_argRoute_0_ar_bits_id),
		.axi_full_argRoute_0_ar_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_ar_bits_addr),
		.axi_full_argRoute_0_r_ready(_notifierMap_0_2_axi_full_argRoute_0_r_ready),
		.axi_full_argRoute_0_r_valid(_AxiUserYanker_1_s_axi_r_valid),
		.axi_full_argRoute_0_r_bits_id(_AxiUserYanker_1_s_axi_r_bits_id),
		.axi_full_argRoute_0_r_bits_data(_AxiUserYanker_1_s_axi_r_bits_data),
		.axi_full_argRoute_0_r_bits_resp(_AxiUserYanker_1_s_axi_r_bits_resp),
		.axi_full_argRoute_0_r_bits_last(_AxiUserYanker_1_s_axi_r_bits_last),
		.axi_full_argRoute_0_aw_ready(_AxiUserYanker_1_s_axi_aw_ready),
		.axi_full_argRoute_0_aw_valid(_notifierMap_0_2_axi_full_argRoute_0_aw_valid),
		.axi_full_argRoute_0_aw_bits_id(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_id),
		.axi_full_argRoute_0_aw_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_addr),
		.axi_full_argRoute_0_w_ready(_AxiUserYanker_1_s_axi_w_ready),
		.axi_full_argRoute_0_w_valid(_notifierMap_0_2_axi_full_argRoute_0_w_valid),
		.axi_full_argRoute_0_w_bits_data(_notifierMap_0_2_axi_full_argRoute_0_w_bits_data),
		.axi_full_argRoute_0_b_ready(_notifierMap_0_2_axi_full_argRoute_0_b_ready),
		.axi_full_argRoute_0_b_valid(_AxiUserYanker_1_s_axi_b_valid),
		.axi_full_argRoute_0_b_bits_id(_AxiUserYanker_1_s_axi_b_bits_id),
		.axi_full_argRoute_1_ar_ready(_AxiUserYanker_3_s_axi_ar_ready),
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
		.axi_full_argRoute_1_r_valid(_AxiUserYanker_3_s_axi_r_valid),
		.axi_full_argRoute_1_r_bits_data(_AxiUserYanker_3_s_axi_r_bits_data)
	);
	axi4LiteDemux demux(
		.clock(clock),
		.reset(reset),
		.s_axil_ar_ready(_demux_s_axil_ar_ready),
		.s_axil_ar_valid(_s_axil_mgmt_upscale_m_axi_ar_valid),
		.s_axil_ar_bits_addr(_s_axil_mgmt_upscale_m_axi_ar_bits_addr - {4'h0, |_s_axil_mgmt_upscale_m_axi_ar_bits_addr, 4'h0}),
		.s_axil_ar_bits_prot(_s_axil_mgmt_upscale_m_axi_ar_bits_prot),
		.s_axil_r_ready(_s_axil_mgmt_upscale_m_axi_r_ready),
		.s_axil_r_valid(_demux_s_axil_r_valid),
		.s_axil_r_bits_data(_demux_s_axil_r_bits_data),
		.s_axil_r_bits_resp(_demux_s_axil_r_bits_resp),
		.s_axil_aw_ready(_demux_s_axil_aw_ready),
		.s_axil_aw_valid(_s_axil_mgmt_upscale_m_axi_aw_valid),
		.s_axil_aw_bits_addr(_s_axil_mgmt_upscale_m_axi_aw_bits_addr - {4'h0, |_s_axil_mgmt_upscale_m_axi_aw_bits_addr, 4'h0}),
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
		.m_axil_1_ar_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_ar_ready),
		.m_axil_1_ar_valid(_demux_m_axil_1_ar_valid),
		.m_axil_1_ar_bits_addr(_demux_m_axil_1_ar_bits_addr),
		.m_axil_1_ar_bits_prot(_demux_m_axil_1_ar_bits_prot),
		.m_axil_1_r_ready(_demux_m_axil_1_r_ready),
		.m_axil_1_r_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_valid),
		.m_axil_1_r_bits_data(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_data),
		.m_axil_1_r_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_r_bits_resp),
		.m_axil_1_aw_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_aw_ready),
		.m_axil_1_aw_valid(_demux_m_axil_1_aw_valid),
		.m_axil_1_aw_bits_addr(_demux_m_axil_1_aw_bits_addr),
		.m_axil_1_aw_bits_prot(_demux_m_axil_1_aw_bits_prot),
		.m_axil_1_w_ready(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_w_ready),
		.m_axil_1_w_valid(_demux_m_axil_1_w_valid),
		.m_axil_1_w_bits_data(_demux_m_axil_1_w_bits_data),
		.m_axil_1_w_bits_strb(_demux_m_axil_1_w_bits_strb),
		.m_axil_1_b_ready(_demux_m_axil_1_b_ready),
		.m_axil_1_b_valid(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_valid),
		.m_axil_1_b_bits_resp(_schedulerMap_1_2_io_internal_axi_mgmt_vss_0_b_bits_resp),
		.m_axil_2_ar_ready(_schedulerMap_1_2_spawnerServerMgmt_0_ar_ready),
		.m_axil_2_ar_valid(_demux_m_axil_2_ar_valid),
		.m_axil_2_ar_bits_addr(_demux_m_axil_2_ar_bits_addr),
		.m_axil_2_ar_bits_prot(_demux_m_axil_2_ar_bits_prot),
		.m_axil_2_r_ready(_demux_m_axil_2_r_ready),
		.m_axil_2_r_valid(_schedulerMap_1_2_spawnerServerMgmt_0_r_valid),
		.m_axil_2_r_bits_data(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_data),
		.m_axil_2_r_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_r_bits_resp),
		.m_axil_2_aw_ready(_schedulerMap_1_2_spawnerServerMgmt_0_aw_ready),
		.m_axil_2_aw_valid(_demux_m_axil_2_aw_valid),
		.m_axil_2_aw_bits_addr(_demux_m_axil_2_aw_bits_addr),
		.m_axil_2_aw_bits_prot(_demux_m_axil_2_aw_bits_prot),
		.m_axil_2_w_ready(_schedulerMap_1_2_spawnerServerMgmt_0_w_ready),
		.m_axil_2_w_valid(_demux_m_axil_2_w_valid),
		.m_axil_2_w_bits_data(_demux_m_axil_2_w_bits_data),
		.m_axil_2_w_bits_strb(_demux_m_axil_2_w_bits_strb),
		.m_axil_2_b_ready(_demux_m_axil_2_b_ready),
		.m_axil_2_b_valid(_schedulerMap_1_2_spawnerServerMgmt_0_b_valid),
		.m_axil_2_b_bits_resp(_schedulerMap_1_2_spawnerServerMgmt_0_b_bits_resp)
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
		.m_axi_ar_ready(_widen_mod_s_axi_ar_ready),
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
		.m_axi_r_valid(_widen_mod_s_axi_r_valid),
		.m_axi_r_bits_id(_widen_mod_s_axi_r_bits_id),
		.m_axi_r_bits_data(_widen_mod_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_widen_mod_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_widen_mod_s_axi_r_bits_last),
		.m_axi_aw_ready(_widen_mod_s_axi_aw_ready),
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
		.m_axi_w_ready(_widen_mod_s_axi_w_ready),
		.m_axi_w_valid(_protocolConverter_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_m_axi_b_ready),
		.m_axi_b_valid(_widen_mod_s_axi_b_valid),
		.m_axi_b_bits_id(_widen_mod_s_axi_b_bits_id),
		.m_axi_b_bits_resp(_widen_mod_s_axi_b_bits_resp)
	);
	AxiUserYanker AxiUserYanker(
		.s_axi_ar_ready(_AxiUserYanker_s_axi_ar_ready),
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
		.s_axi_r_valid(_AxiUserYanker_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_s_axi_r_bits_data),
		.s_axi_aw_ready(_AxiUserYanker_s_axi_aw_ready),
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
		.s_axi_w_ready(_AxiUserYanker_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_0_2_io_internal_vss_axi_full_0_w_bits_last),
		.s_axi_b_valid(_AxiUserYanker_s_axi_b_valid),
		.m_axi_ar_ready(_sourceBuffer_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_m_axi_ar_valid),
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
		.m_axi_r_bits_data(_sinkBuffer_io_deq_bits_data),
		.m_axi_aw_ready(_sourceBuffer_1_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_m_axi_aw_valid),
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
		.m_axi_w_bits_last(_AxiUserYanker_m_axi_w_bits_last),
		.m_axi_b_valid(_sinkBuffer_1_io_deq_valid)
	);
	Queue2_ReadAddressChannel_3 sourceBuffer(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_m_axi_ar_valid),
		.io_enq_bits_id(1'h0),
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
	Queue2_ReadDataChannel_6 sinkBuffer(
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
		.io_deq_bits_id(),
		.io_deq_bits_data(_sinkBuffer_io_deq_bits_data),
		.io_deq_bits_resp(),
		.io_deq_bits_last()
	);
	Queue2_WriteAddressChannel_2 sourceBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_1_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_m_axi_aw_valid),
		.io_enq_bits_id(1'h0),
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
	Queue2_WriteDataChannel_4 sourceBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_2_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_m_axi_w_bits_data),
		.io_enq_bits_strb(16'hffff),
		.io_enq_bits_last(_AxiUserYanker_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_2_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_2_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_2_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_2_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_4 sinkBuffer_1(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_1_io_enq_ready),
		.io_enq_valid(_protocolConverter_s_axi_b_valid),
		.io_deq_ready(1'h1),
		.io_deq_valid(_sinkBuffer_1_io_deq_valid)
	);
	Widen widen_mod(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_widen_mod_s_axi_ar_ready),
		.s_axi_ar_valid(_protocolConverter_m_axi_ar_valid),
		.s_axi_ar_bits_id(_protocolConverter_m_axi_ar_bits_id),
		.s_axi_ar_bits_addr(_protocolConverter_m_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_protocolConverter_m_axi_ar_bits_len),
		.s_axi_ar_bits_size(_protocolConverter_m_axi_ar_bits_size),
		.s_axi_ar_bits_burst(_protocolConverter_m_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(_protocolConverter_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_protocolConverter_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_protocolConverter_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_protocolConverter_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_protocolConverter_m_axi_ar_bits_region),
		.s_axi_r_ready(_protocolConverter_m_axi_r_ready),
		.s_axi_r_valid(_widen_mod_s_axi_r_valid),
		.s_axi_r_bits_id(_widen_mod_s_axi_r_bits_id),
		.s_axi_r_bits_data(_widen_mod_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_widen_mod_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_widen_mod_s_axi_r_bits_last),
		.s_axi_aw_ready(_widen_mod_s_axi_aw_ready),
		.s_axi_aw_valid(_protocolConverter_m_axi_aw_valid),
		.s_axi_aw_bits_id(_protocolConverter_m_axi_aw_bits_id),
		.s_axi_aw_bits_addr(_protocolConverter_m_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_protocolConverter_m_axi_aw_bits_len),
		.s_axi_aw_bits_size(_protocolConverter_m_axi_aw_bits_size),
		.s_axi_aw_bits_burst(_protocolConverter_m_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(_protocolConverter_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_protocolConverter_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_protocolConverter_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_protocolConverter_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_protocolConverter_m_axi_aw_bits_region),
		.s_axi_w_ready(_widen_mod_s_axi_w_ready),
		.s_axi_w_valid(_protocolConverter_m_axi_w_valid),
		.s_axi_w_bits_data(_protocolConverter_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_protocolConverter_m_axi_w_bits_strb),
		.s_axi_b_ready(_protocolConverter_m_axi_b_ready),
		.s_axi_b_valid(_widen_mod_s_axi_b_valid),
		.s_axi_b_bits_id(_widen_mod_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_widen_mod_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_s_axi_ARREADY),
		.m_axi_ar_valid(_widen_mod_m_axi_ar_valid),
		.m_axi_ar_bits_id(_widen_mod_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_widen_mod_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_widen_mod_m_axi_ar_bits_len),
		.m_axi_ar_bits_burst(_widen_mod_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_widen_mod_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_widen_mod_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_widen_mod_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_widen_mod_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_widen_mod_m_axi_ar_bits_region),
		.m_axi_r_ready(_widen_mod_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_s_axi_AWREADY),
		.m_axi_aw_valid(_widen_mod_m_axi_aw_valid),
		.m_axi_aw_bits_id(_widen_mod_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_widen_mod_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_widen_mod_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_widen_mod_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_widen_mod_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_widen_mod_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_widen_mod_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_widen_mod_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_widen_mod_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_widen_mod_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_s_axi_WREADY),
		.m_axi_w_valid(_widen_mod_m_axi_w_valid),
		.m_axi_w_bits_data(_widen_mod_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_widen_mod_m_axi_w_bits_strb),
		.m_axi_b_ready(_widen_mod_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_s_axi_BRESP)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_s_axi_ARREADY),
		.s_axi_ARVALID(_widen_mod_m_axi_ar_valid),
		.s_axi_ARID(_widen_mod_m_axi_ar_bits_id),
		.s_axi_ARADDR(_widen_mod_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_widen_mod_m_axi_ar_bits_len),
		.s_axi_ARBURST(_widen_mod_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_widen_mod_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_widen_mod_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_widen_mod_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_widen_mod_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_widen_mod_m_axi_ar_bits_region),
		.s_axi_RREADY(_widen_mod_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_s_axi_RVALID),
		.s_axi_RID(_axpbs_s_axi_RID),
		.s_axi_RDATA(_axpbs_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_s_axi_AWREADY),
		.s_axi_AWVALID(_widen_mod_m_axi_aw_valid),
		.s_axi_AWID(_widen_mod_m_axi_aw_bits_id),
		.s_axi_AWADDR(_widen_mod_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_widen_mod_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_widen_mod_m_axi_aw_bits_size),
		.s_axi_AWBURST(_widen_mod_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_widen_mod_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_widen_mod_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_widen_mod_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_widen_mod_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_widen_mod_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_s_axi_WREADY),
		.s_axi_WVALID(_widen_mod_m_axi_w_valid),
		.s_axi_WDATA(_widen_mod_m_axi_w_bits_data),
		.s_axi_WSTRB(_widen_mod_m_axi_w_bits_strb),
		.s_axi_BREADY(_widen_mod_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_s_axi_BVALID),
		.s_axi_BID(_axpbs_s_axi_BID),
		.s_axi_BRESP(_axpbs_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_00_ARREADY),
		.m_axi_ARVALID(m_axi_00_ARVALID),
		.m_axi_ARID(m_axi_00_ARID),
		.m_axi_ARADDR(m_axi_00_ARADDR),
		.m_axi_ARLEN(m_axi_00_ARLEN),
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
		.s_axi_ar_bits_id(_sourceBuffer_3_io_deq_bits_id),
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
		.s_axi_r_bits_id(_protocolConverter_1_s_axi_r_bits_id),
		.s_axi_r_bits_data(_protocolConverter_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_1_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_4_io_deq_valid),
		.s_axi_aw_bits_id(_sourceBuffer_4_io_deq_bits_id),
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
		.s_axi_b_bits_id(_protocolConverter_1_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_protocolConverter_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_widen_mod_1_s_axi_ar_ready),
		.m_axi_ar_valid(_protocolConverter_1_m_axi_ar_valid),
		.m_axi_ar_bits_id(_protocolConverter_1_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_protocolConverter_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_protocolConverter_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_protocolConverter_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_protocolConverter_1_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_protocolConverter_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_protocolConverter_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_protocolConverter_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_protocolConverter_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_protocolConverter_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_protocolConverter_1_m_axi_r_ready),
		.m_axi_r_valid(_widen_mod_1_s_axi_r_valid),
		.m_axi_r_bits_id(_widen_mod_1_s_axi_r_bits_id),
		.m_axi_r_bits_data(_widen_mod_1_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_widen_mod_1_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_widen_mod_1_s_axi_r_bits_last),
		.m_axi_aw_ready(_widen_mod_1_s_axi_aw_ready),
		.m_axi_aw_valid(_protocolConverter_1_m_axi_aw_valid),
		.m_axi_aw_bits_id(_protocolConverter_1_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_protocolConverter_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_1_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_widen_mod_1_s_axi_w_ready),
		.m_axi_w_valid(_protocolConverter_1_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_1_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_1_m_axi_b_ready),
		.m_axi_b_valid(_widen_mod_1_s_axi_b_valid),
		.m_axi_b_bits_id(_widen_mod_1_s_axi_b_bits_id),
		.m_axi_b_bits_resp(_widen_mod_1_s_axi_b_bits_resp)
	);
	AxiUserYanker_1 AxiUserYanker_1(
		.s_axi_ar_ready(_AxiUserYanker_1_s_axi_ar_ready),
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
		.s_axi_r_valid(_AxiUserYanker_1_s_axi_r_valid),
		.s_axi_r_bits_id(_AxiUserYanker_1_s_axi_r_bits_id),
		.s_axi_r_bits_data(_AxiUserYanker_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_AxiUserYanker_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_AxiUserYanker_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_AxiUserYanker_1_s_axi_aw_ready),
		.s_axi_aw_valid(_notifierMap_0_2_axi_full_argRoute_0_aw_valid),
		.s_axi_aw_bits_id(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_id),
		.s_axi_aw_bits_addr(_notifierMap_0_2_axi_full_argRoute_0_aw_bits_addr),
		.s_axi_aw_bits_size(3'h2),
		.s_axi_aw_bits_burst(2'h1),
		.s_axi_w_ready(_AxiUserYanker_1_s_axi_w_ready),
		.s_axi_w_valid(_notifierMap_0_2_axi_full_argRoute_0_w_valid),
		.s_axi_w_bits_data(_notifierMap_0_2_axi_full_argRoute_0_w_bits_data),
		.s_axi_w_bits_strb(16'h000f),
		.s_axi_w_bits_last(1'h1),
		.s_axi_b_ready(_notifierMap_0_2_axi_full_argRoute_0_b_ready),
		.s_axi_b_valid(_AxiUserYanker_1_s_axi_b_valid),
		.s_axi_b_bits_id(_AxiUserYanker_1_s_axi_b_bits_id),
		.m_axi_ar_ready(_sourceBuffer_3_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_1_m_axi_ar_valid),
		.m_axi_ar_bits_id(_AxiUserYanker_1_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_AxiUserYanker_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_size(_AxiUserYanker_1_m_axi_ar_bits_size),
		.m_axi_ar_bits_burst(_AxiUserYanker_1_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_AxiUserYanker_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_AxiUserYanker_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_AxiUserYanker_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_AxiUserYanker_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_AxiUserYanker_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_AxiUserYanker_1_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_2_io_deq_valid),
		.m_axi_r_bits_id(_sinkBuffer_2_io_deq_bits_id),
		.m_axi_r_bits_data(_sinkBuffer_2_io_deq_bits_data),
		.m_axi_r_bits_resp(_sinkBuffer_2_io_deq_bits_resp),
		.m_axi_r_bits_last(_sinkBuffer_2_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_4_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_1_m_axi_aw_valid),
		.m_axi_aw_bits_id(_AxiUserYanker_1_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_AxiUserYanker_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_size(_AxiUserYanker_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_AxiUserYanker_1_m_axi_aw_bits_burst),
		.m_axi_w_ready(_sourceBuffer_5_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_1_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_AxiUserYanker_1_m_axi_w_bits_strb),
		.m_axi_w_bits_last(_AxiUserYanker_1_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_1_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_3_io_deq_valid),
		.m_axi_b_bits_id(_sinkBuffer_3_io_deq_bits_id)
	);
	Queue2_ReadAddressChannel_2 sourceBuffer_3(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_3_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_1_m_axi_ar_valid),
		.io_enq_bits_id(_AxiUserYanker_1_m_axi_ar_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_1_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_1_m_axi_ar_bits_len),
		.io_enq_bits_size(_AxiUserYanker_1_m_axi_ar_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_1_m_axi_ar_bits_burst),
		.io_enq_bits_lock(_AxiUserYanker_1_m_axi_ar_bits_lock),
		.io_enq_bits_cache(_AxiUserYanker_1_m_axi_ar_bits_cache),
		.io_enq_bits_prot(_AxiUserYanker_1_m_axi_ar_bits_prot),
		.io_enq_bits_qos(_AxiUserYanker_1_m_axi_ar_bits_qos),
		.io_enq_bits_region(_AxiUserYanker_1_m_axi_ar_bits_region),
		.io_deq_ready(_protocolConverter_1_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_3_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_3_io_deq_bits_id),
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
	Queue2_ReadDataChannel_3 sinkBuffer_2(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_2_io_enq_ready),
		.io_enq_valid(_protocolConverter_1_s_axi_r_valid),
		.io_enq_bits_id(_protocolConverter_1_s_axi_r_bits_id),
		.io_enq_bits_data(_protocolConverter_1_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_1_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_1_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_1_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_2_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_2_io_deq_bits_id),
		.io_deq_bits_data(_sinkBuffer_2_io_deq_bits_data),
		.io_deq_bits_resp(_sinkBuffer_2_io_deq_bits_resp),
		.io_deq_bits_last(_sinkBuffer_2_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel_4 sourceBuffer_4(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_4_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_1_m_axi_aw_valid),
		.io_enq_bits_id(_AxiUserYanker_1_m_axi_aw_bits_id),
		.io_enq_bits_addr(_AxiUserYanker_1_m_axi_aw_bits_addr),
		.io_enq_bits_len(8'h00),
		.io_enq_bits_size(_AxiUserYanker_1_m_axi_aw_bits_size),
		.io_enq_bits_burst(_AxiUserYanker_1_m_axi_aw_bits_burst),
		.io_enq_bits_lock(1'h0),
		.io_enq_bits_cache(4'h0),
		.io_enq_bits_prot(3'h0),
		.io_enq_bits_qos(4'h0),
		.io_enq_bits_region(4'h0),
		.io_deq_ready(_protocolConverter_1_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_4_io_deq_valid),
		.io_deq_bits_id(_sourceBuffer_4_io_deq_bits_id),
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
	Queue2_WriteDataChannel_4 sourceBuffer_5(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_5_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_1_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_1_m_axi_w_bits_data),
		.io_enq_bits_strb(_AxiUserYanker_1_m_axi_w_bits_strb),
		.io_enq_bits_last(_AxiUserYanker_1_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_1_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_5_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_5_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_5_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_5_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_6 sinkBuffer_3(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_3_io_enq_ready),
		.io_enq_valid(_protocolConverter_1_s_axi_b_valid),
		.io_enq_bits_id(_protocolConverter_1_s_axi_b_bits_id),
		.io_enq_bits_resp(_protocolConverter_1_s_axi_b_bits_resp),
		.io_deq_ready(_AxiUserYanker_1_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_3_io_deq_valid),
		.io_deq_bits_id(_sinkBuffer_3_io_deq_bits_id),
		.io_deq_bits_resp()
	);
	Widen widen_mod_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_widen_mod_1_s_axi_ar_ready),
		.s_axi_ar_valid(_protocolConverter_1_m_axi_ar_valid),
		.s_axi_ar_bits_id(_protocolConverter_1_m_axi_ar_bits_id),
		.s_axi_ar_bits_addr(_protocolConverter_1_m_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_protocolConverter_1_m_axi_ar_bits_len),
		.s_axi_ar_bits_size(_protocolConverter_1_m_axi_ar_bits_size),
		.s_axi_ar_bits_burst(_protocolConverter_1_m_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(_protocolConverter_1_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_protocolConverter_1_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_protocolConverter_1_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_protocolConverter_1_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_protocolConverter_1_m_axi_ar_bits_region),
		.s_axi_r_ready(_protocolConverter_1_m_axi_r_ready),
		.s_axi_r_valid(_widen_mod_1_s_axi_r_valid),
		.s_axi_r_bits_id(_widen_mod_1_s_axi_r_bits_id),
		.s_axi_r_bits_data(_widen_mod_1_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_widen_mod_1_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_widen_mod_1_s_axi_r_bits_last),
		.s_axi_aw_ready(_widen_mod_1_s_axi_aw_ready),
		.s_axi_aw_valid(_protocolConverter_1_m_axi_aw_valid),
		.s_axi_aw_bits_id(_protocolConverter_1_m_axi_aw_bits_id),
		.s_axi_aw_bits_addr(_protocolConverter_1_m_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_protocolConverter_1_m_axi_aw_bits_len),
		.s_axi_aw_bits_size(_protocolConverter_1_m_axi_aw_bits_size),
		.s_axi_aw_bits_burst(_protocolConverter_1_m_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(_protocolConverter_1_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_protocolConverter_1_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_protocolConverter_1_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_protocolConverter_1_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_protocolConverter_1_m_axi_aw_bits_region),
		.s_axi_w_ready(_widen_mod_1_s_axi_w_ready),
		.s_axi_w_valid(_protocolConverter_1_m_axi_w_valid),
		.s_axi_w_bits_data(_protocolConverter_1_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_protocolConverter_1_m_axi_w_bits_strb),
		.s_axi_b_ready(_protocolConverter_1_m_axi_b_ready),
		.s_axi_b_valid(_widen_mod_1_s_axi_b_valid),
		.s_axi_b_bits_id(_widen_mod_1_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_widen_mod_1_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_1_s_axi_ARREADY),
		.m_axi_ar_valid(_widen_mod_1_m_axi_ar_valid),
		.m_axi_ar_bits_id(_widen_mod_1_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_widen_mod_1_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_widen_mod_1_m_axi_ar_bits_len),
		.m_axi_ar_bits_burst(_widen_mod_1_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_widen_mod_1_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_widen_mod_1_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_widen_mod_1_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_widen_mod_1_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_widen_mod_1_m_axi_ar_bits_region),
		.m_axi_r_ready(_widen_mod_1_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_1_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_1_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_1_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_1_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_1_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_1_s_axi_AWREADY),
		.m_axi_aw_valid(_widen_mod_1_m_axi_aw_valid),
		.m_axi_aw_bits_id(_widen_mod_1_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_widen_mod_1_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_widen_mod_1_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_widen_mod_1_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_widen_mod_1_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_widen_mod_1_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_widen_mod_1_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_widen_mod_1_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_widen_mod_1_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_widen_mod_1_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_1_s_axi_WREADY),
		.m_axi_w_valid(_widen_mod_1_m_axi_w_valid),
		.m_axi_w_bits_data(_widen_mod_1_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_widen_mod_1_m_axi_w_bits_strb),
		.m_axi_b_ready(_widen_mod_1_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_1_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_1_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_1_s_axi_BRESP)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_1(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_1_s_axi_ARREADY),
		.s_axi_ARVALID(_widen_mod_1_m_axi_ar_valid),
		.s_axi_ARID(_widen_mod_1_m_axi_ar_bits_id),
		.s_axi_ARADDR(_widen_mod_1_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_widen_mod_1_m_axi_ar_bits_len),
		.s_axi_ARBURST(_widen_mod_1_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_widen_mod_1_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_widen_mod_1_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_widen_mod_1_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_widen_mod_1_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_widen_mod_1_m_axi_ar_bits_region),
		.s_axi_RREADY(_widen_mod_1_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_1_s_axi_RVALID),
		.s_axi_RID(_axpbs_1_s_axi_RID),
		.s_axi_RDATA(_axpbs_1_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_1_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_1_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_1_s_axi_AWREADY),
		.s_axi_AWVALID(_widen_mod_1_m_axi_aw_valid),
		.s_axi_AWID(_widen_mod_1_m_axi_aw_bits_id),
		.s_axi_AWADDR(_widen_mod_1_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_widen_mod_1_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_widen_mod_1_m_axi_aw_bits_size),
		.s_axi_AWBURST(_widen_mod_1_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_widen_mod_1_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_widen_mod_1_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_widen_mod_1_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_widen_mod_1_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_widen_mod_1_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_1_s_axi_WREADY),
		.s_axi_WVALID(_widen_mod_1_m_axi_w_valid),
		.s_axi_WDATA(_widen_mod_1_m_axi_w_bits_data),
		.s_axi_WSTRB(_widen_mod_1_m_axi_w_bits_strb),
		.s_axi_BREADY(_widen_mod_1_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_1_s_axi_BVALID),
		.s_axi_BID(_axpbs_1_s_axi_BID),
		.s_axi_BRESP(_axpbs_1_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_01_ARREADY),
		.m_axi_ARVALID(m_axi_01_ARVALID),
		.m_axi_ARID(m_axi_01_ARID),
		.m_axi_ARADDR(m_axi_01_ARADDR),
		.m_axi_ARLEN(m_axi_01_ARLEN),
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
	ProtocolConverter protocolConverter_2(
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
		.m_axi_ar_ready(_widen_mod_2_s_axi_ar_ready),
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
		.m_axi_r_valid(_widen_mod_2_s_axi_r_valid),
		.m_axi_r_bits_id(_widen_mod_2_s_axi_r_bits_id),
		.m_axi_r_bits_data(_widen_mod_2_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_widen_mod_2_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_widen_mod_2_s_axi_r_bits_last),
		.m_axi_aw_ready(_widen_mod_2_s_axi_aw_ready),
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
		.m_axi_w_ready(_widen_mod_2_s_axi_w_ready),
		.m_axi_w_valid(_protocolConverter_2_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_2_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_2_m_axi_b_ready),
		.m_axi_b_valid(_widen_mod_2_s_axi_b_valid),
		.m_axi_b_bits_id(_widen_mod_2_s_axi_b_bits_id),
		.m_axi_b_bits_resp(_widen_mod_2_s_axi_b_bits_resp)
	);
	AxiUserYanker AxiUserYanker_2(
		.s_axi_ar_ready(_AxiUserYanker_2_s_axi_ar_ready),
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
		.s_axi_r_valid(_AxiUserYanker_2_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_2_s_axi_r_bits_data),
		.s_axi_aw_ready(_AxiUserYanker_2_s_axi_aw_ready),
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
		.s_axi_w_ready(_AxiUserYanker_2_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_1_2_io_internal_vss_axi_full_0_w_bits_last),
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
	Queue2_ReadAddressChannel_3 sourceBuffer_6(
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
	Queue2_ReadDataChannel_6 sinkBuffer_4(
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
	Queue2_WriteAddressChannel_2 sourceBuffer_7(
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
	Queue2_WriteDataChannel_4 sourceBuffer_8(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_8_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_2_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_2_m_axi_w_bits_data),
		.io_enq_bits_strb(16'hffff),
		.io_enq_bits_last(_AxiUserYanker_2_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_2_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_8_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_8_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_8_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_8_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_4 sinkBuffer_5(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_5_io_enq_ready),
		.io_enq_valid(_protocolConverter_2_s_axi_b_valid),
		.io_deq_ready(1'h1),
		.io_deq_valid(_sinkBuffer_5_io_deq_valid)
	);
	Widen widen_mod_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_widen_mod_2_s_axi_ar_ready),
		.s_axi_ar_valid(_protocolConverter_2_m_axi_ar_valid),
		.s_axi_ar_bits_id(_protocolConverter_2_m_axi_ar_bits_id),
		.s_axi_ar_bits_addr(_protocolConverter_2_m_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_protocolConverter_2_m_axi_ar_bits_len),
		.s_axi_ar_bits_size(_protocolConverter_2_m_axi_ar_bits_size),
		.s_axi_ar_bits_burst(_protocolConverter_2_m_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(_protocolConverter_2_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_protocolConverter_2_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_protocolConverter_2_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_protocolConverter_2_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_protocolConverter_2_m_axi_ar_bits_region),
		.s_axi_r_ready(_protocolConverter_2_m_axi_r_ready),
		.s_axi_r_valid(_widen_mod_2_s_axi_r_valid),
		.s_axi_r_bits_id(_widen_mod_2_s_axi_r_bits_id),
		.s_axi_r_bits_data(_widen_mod_2_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_widen_mod_2_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_widen_mod_2_s_axi_r_bits_last),
		.s_axi_aw_ready(_widen_mod_2_s_axi_aw_ready),
		.s_axi_aw_valid(_protocolConverter_2_m_axi_aw_valid),
		.s_axi_aw_bits_id(_protocolConverter_2_m_axi_aw_bits_id),
		.s_axi_aw_bits_addr(_protocolConverter_2_m_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_protocolConverter_2_m_axi_aw_bits_len),
		.s_axi_aw_bits_size(_protocolConverter_2_m_axi_aw_bits_size),
		.s_axi_aw_bits_burst(_protocolConverter_2_m_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(_protocolConverter_2_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_protocolConverter_2_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_protocolConverter_2_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_protocolConverter_2_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_protocolConverter_2_m_axi_aw_bits_region),
		.s_axi_w_ready(_widen_mod_2_s_axi_w_ready),
		.s_axi_w_valid(_protocolConverter_2_m_axi_w_valid),
		.s_axi_w_bits_data(_protocolConverter_2_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_protocolConverter_2_m_axi_w_bits_strb),
		.s_axi_b_ready(_protocolConverter_2_m_axi_b_ready),
		.s_axi_b_valid(_widen_mod_2_s_axi_b_valid),
		.s_axi_b_bits_id(_widen_mod_2_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_widen_mod_2_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_2_s_axi_ARREADY),
		.m_axi_ar_valid(_widen_mod_2_m_axi_ar_valid),
		.m_axi_ar_bits_id(_widen_mod_2_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_widen_mod_2_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_widen_mod_2_m_axi_ar_bits_len),
		.m_axi_ar_bits_burst(_widen_mod_2_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_widen_mod_2_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_widen_mod_2_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_widen_mod_2_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_widen_mod_2_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_widen_mod_2_m_axi_ar_bits_region),
		.m_axi_r_ready(_widen_mod_2_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_2_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_2_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_2_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_2_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_2_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_2_s_axi_AWREADY),
		.m_axi_aw_valid(_widen_mod_2_m_axi_aw_valid),
		.m_axi_aw_bits_id(_widen_mod_2_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_widen_mod_2_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_widen_mod_2_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_widen_mod_2_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_widen_mod_2_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_widen_mod_2_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_widen_mod_2_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_widen_mod_2_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_widen_mod_2_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_widen_mod_2_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_2_s_axi_WREADY),
		.m_axi_w_valid(_widen_mod_2_m_axi_w_valid),
		.m_axi_w_bits_data(_widen_mod_2_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_widen_mod_2_m_axi_w_bits_strb),
		.m_axi_b_ready(_widen_mod_2_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_2_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_2_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_2_s_axi_BRESP)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_2(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_2_s_axi_ARREADY),
		.s_axi_ARVALID(_widen_mod_2_m_axi_ar_valid),
		.s_axi_ARID(_widen_mod_2_m_axi_ar_bits_id),
		.s_axi_ARADDR(_widen_mod_2_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_widen_mod_2_m_axi_ar_bits_len),
		.s_axi_ARBURST(_widen_mod_2_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_widen_mod_2_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_widen_mod_2_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_widen_mod_2_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_widen_mod_2_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_widen_mod_2_m_axi_ar_bits_region),
		.s_axi_RREADY(_widen_mod_2_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_2_s_axi_RVALID),
		.s_axi_RID(_axpbs_2_s_axi_RID),
		.s_axi_RDATA(_axpbs_2_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_2_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_2_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_2_s_axi_AWREADY),
		.s_axi_AWVALID(_widen_mod_2_m_axi_aw_valid),
		.s_axi_AWID(_widen_mod_2_m_axi_aw_bits_id),
		.s_axi_AWADDR(_widen_mod_2_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_widen_mod_2_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_widen_mod_2_m_axi_aw_bits_size),
		.s_axi_AWBURST(_widen_mod_2_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_widen_mod_2_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_widen_mod_2_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_widen_mod_2_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_widen_mod_2_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_widen_mod_2_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_2_s_axi_WREADY),
		.s_axi_WVALID(_widen_mod_2_m_axi_w_valid),
		.s_axi_WDATA(_widen_mod_2_m_axi_w_bits_data),
		.s_axi_WSTRB(_widen_mod_2_m_axi_w_bits_strb),
		.s_axi_BREADY(_widen_mod_2_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_2_s_axi_BVALID),
		.s_axi_BID(_axpbs_2_s_axi_BID),
		.s_axi_BRESP(_axpbs_2_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_02_ARREADY),
		.m_axi_ARVALID(m_axi_02_ARVALID),
		.m_axi_ARID(m_axi_02_ARID),
		.m_axi_ARADDR(m_axi_02_ARADDR),
		.m_axi_ARLEN(m_axi_02_ARLEN),
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
	ProtocolConverter_1 protocolConverter_3(
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
		.m_axi_ar_ready(_widen_mod_3_s_axi_ar_ready),
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
		.m_axi_r_valid(_widen_mod_3_s_axi_r_valid),
		.m_axi_r_bits_id(_widen_mod_3_s_axi_r_bits_id),
		.m_axi_r_bits_data(_widen_mod_3_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_widen_mod_3_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_widen_mod_3_s_axi_r_bits_last),
		.m_axi_aw_ready(_widen_mod_3_s_axi_aw_ready),
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
		.m_axi_w_ready(_widen_mod_3_s_axi_w_ready),
		.m_axi_w_valid(_protocolConverter_3_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_3_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_3_m_axi_b_ready),
		.m_axi_b_valid(_widen_mod_3_s_axi_b_valid),
		.m_axi_b_bits_id(_widen_mod_3_s_axi_b_bits_id),
		.m_axi_b_bits_resp(_widen_mod_3_s_axi_b_bits_resp)
	);
	AxiUserYanker_1 AxiUserYanker_3(
		.s_axi_ar_ready(_AxiUserYanker_3_s_axi_ar_ready),
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
		.s_axi_r_valid(_AxiUserYanker_3_s_axi_r_valid),
		.s_axi_r_bits_id(),
		.s_axi_r_bits_data(_AxiUserYanker_3_s_axi_r_bits_data),
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
		.s_axi_w_bits_data(128'h00000000000000000000000000000000),
		.s_axi_w_bits_strb(16'h0000),
		.s_axi_w_bits_last(1'h0),
		.s_axi_b_ready(1'h0),
		.s_axi_b_valid(),
		.s_axi_b_bits_id(),
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
	Queue2_ReadDataChannel_3 sinkBuffer_6(
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
	Queue2_WriteAddressChannel_4 sourceBuffer_10(
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
	Queue2_WriteDataChannel_4 sourceBuffer_11(
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
	Queue2_WriteResponseChannel_6 sinkBuffer_7(
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
	Widen widen_mod_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_widen_mod_3_s_axi_ar_ready),
		.s_axi_ar_valid(_protocolConverter_3_m_axi_ar_valid),
		.s_axi_ar_bits_id(_protocolConverter_3_m_axi_ar_bits_id),
		.s_axi_ar_bits_addr(_protocolConverter_3_m_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_protocolConverter_3_m_axi_ar_bits_len),
		.s_axi_ar_bits_size(_protocolConverter_3_m_axi_ar_bits_size),
		.s_axi_ar_bits_burst(_protocolConverter_3_m_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(_protocolConverter_3_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_protocolConverter_3_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_protocolConverter_3_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_protocolConverter_3_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_protocolConverter_3_m_axi_ar_bits_region),
		.s_axi_r_ready(_protocolConverter_3_m_axi_r_ready),
		.s_axi_r_valid(_widen_mod_3_s_axi_r_valid),
		.s_axi_r_bits_id(_widen_mod_3_s_axi_r_bits_id),
		.s_axi_r_bits_data(_widen_mod_3_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_widen_mod_3_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_widen_mod_3_s_axi_r_bits_last),
		.s_axi_aw_ready(_widen_mod_3_s_axi_aw_ready),
		.s_axi_aw_valid(_protocolConverter_3_m_axi_aw_valid),
		.s_axi_aw_bits_id(_protocolConverter_3_m_axi_aw_bits_id),
		.s_axi_aw_bits_addr(_protocolConverter_3_m_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_protocolConverter_3_m_axi_aw_bits_len),
		.s_axi_aw_bits_size(_protocolConverter_3_m_axi_aw_bits_size),
		.s_axi_aw_bits_burst(_protocolConverter_3_m_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(_protocolConverter_3_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_protocolConverter_3_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_protocolConverter_3_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_protocolConverter_3_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_protocolConverter_3_m_axi_aw_bits_region),
		.s_axi_w_ready(_widen_mod_3_s_axi_w_ready),
		.s_axi_w_valid(_protocolConverter_3_m_axi_w_valid),
		.s_axi_w_bits_data(_protocolConverter_3_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_protocolConverter_3_m_axi_w_bits_strb),
		.s_axi_b_ready(_protocolConverter_3_m_axi_b_ready),
		.s_axi_b_valid(_widen_mod_3_s_axi_b_valid),
		.s_axi_b_bits_id(_widen_mod_3_s_axi_b_bits_id),
		.s_axi_b_bits_resp(_widen_mod_3_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_3_s_axi_ARREADY),
		.m_axi_ar_valid(_widen_mod_3_m_axi_ar_valid),
		.m_axi_ar_bits_id(_widen_mod_3_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_widen_mod_3_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_widen_mod_3_m_axi_ar_bits_len),
		.m_axi_ar_bits_burst(_widen_mod_3_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_widen_mod_3_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_widen_mod_3_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_widen_mod_3_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_widen_mod_3_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_widen_mod_3_m_axi_ar_bits_region),
		.m_axi_r_ready(_widen_mod_3_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_3_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_3_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_3_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_3_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_3_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_3_s_axi_AWREADY),
		.m_axi_aw_valid(_widen_mod_3_m_axi_aw_valid),
		.m_axi_aw_bits_id(_widen_mod_3_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_widen_mod_3_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_widen_mod_3_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_widen_mod_3_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_widen_mod_3_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_widen_mod_3_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_widen_mod_3_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_widen_mod_3_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_widen_mod_3_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_widen_mod_3_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_3_s_axi_WREADY),
		.m_axi_w_valid(_widen_mod_3_m_axi_w_valid),
		.m_axi_w_bits_data(_widen_mod_3_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_widen_mod_3_m_axi_w_bits_strb),
		.m_axi_b_ready(_widen_mod_3_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_3_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_3_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_3_s_axi_BRESP)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_3(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_3_s_axi_ARREADY),
		.s_axi_ARVALID(_widen_mod_3_m_axi_ar_valid),
		.s_axi_ARID(_widen_mod_3_m_axi_ar_bits_id),
		.s_axi_ARADDR(_widen_mod_3_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_widen_mod_3_m_axi_ar_bits_len),
		.s_axi_ARBURST(_widen_mod_3_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_widen_mod_3_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_widen_mod_3_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_widen_mod_3_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_widen_mod_3_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_widen_mod_3_m_axi_ar_bits_region),
		.s_axi_RREADY(_widen_mod_3_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_3_s_axi_RVALID),
		.s_axi_RID(_axpbs_3_s_axi_RID),
		.s_axi_RDATA(_axpbs_3_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_3_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_3_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_3_s_axi_AWREADY),
		.s_axi_AWVALID(_widen_mod_3_m_axi_aw_valid),
		.s_axi_AWID(_widen_mod_3_m_axi_aw_bits_id),
		.s_axi_AWADDR(_widen_mod_3_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_widen_mod_3_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_widen_mod_3_m_axi_aw_bits_size),
		.s_axi_AWBURST(_widen_mod_3_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_widen_mod_3_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_widen_mod_3_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_widen_mod_3_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_widen_mod_3_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_widen_mod_3_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_3_s_axi_WREADY),
		.s_axi_WVALID(_widen_mod_3_m_axi_w_valid),
		.s_axi_WDATA(_widen_mod_3_m_axi_w_bits_data),
		.s_axi_WSTRB(_widen_mod_3_m_axi_w_bits_strb),
		.s_axi_BREADY(_widen_mod_3_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_3_s_axi_BVALID),
		.s_axi_BID(_axpbs_3_s_axi_BID),
		.s_axi_BRESP(_axpbs_3_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_03_ARREADY),
		.m_axi_ARVALID(m_axi_03_ARVALID),
		.m_axi_ARID(m_axi_03_ARID),
		.m_axi_ARADDR(m_axi_03_ARADDR),
		.m_axi_ARLEN(m_axi_03_ARLEN),
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
	ProtocolConverter_4 protocolConverter_4(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_protocolConverter_4_s_axi_ar_ready),
		.s_axi_ar_valid(_sourceBuffer_12_io_deq_valid),
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
		.s_axi_r_bits_data(_protocolConverter_4_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_protocolConverter_4_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_protocolConverter_4_s_axi_r_bits_last),
		.s_axi_aw_ready(_protocolConverter_4_s_axi_aw_ready),
		.s_axi_aw_valid(_sourceBuffer_13_io_deq_valid),
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
		.m_axi_ar_ready(_widen_mod_4_s_axi_ar_ready),
		.m_axi_ar_valid(_protocolConverter_4_m_axi_ar_valid),
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
		.m_axi_r_valid(_widen_mod_4_s_axi_r_valid),
		.m_axi_r_bits_data(_widen_mod_4_s_axi_r_bits_data),
		.m_axi_r_bits_resp(_widen_mod_4_s_axi_r_bits_resp),
		.m_axi_r_bits_last(_widen_mod_4_s_axi_r_bits_last),
		.m_axi_aw_ready(_widen_mod_4_s_axi_aw_ready),
		.m_axi_aw_valid(_protocolConverter_4_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_protocolConverter_4_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_protocolConverter_4_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_protocolConverter_4_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_protocolConverter_4_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_protocolConverter_4_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_protocolConverter_4_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_protocolConverter_4_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_protocolConverter_4_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_protocolConverter_4_m_axi_aw_bits_region),
		.m_axi_w_ready(_widen_mod_4_s_axi_w_ready),
		.m_axi_w_valid(_protocolConverter_4_m_axi_w_valid),
		.m_axi_w_bits_data(_protocolConverter_4_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_protocolConverter_4_m_axi_w_bits_strb),
		.m_axi_b_ready(_protocolConverter_4_m_axi_b_ready),
		.m_axi_b_valid(_widen_mod_4_s_axi_b_valid),
		.m_axi_b_bits_resp(_widen_mod_4_s_axi_b_bits_resp)
	);
	AxiUserYanker_4 AxiUserYanker_4(
		.s_axi_ar_ready(_AxiUserYanker_4_s_axi_ar_ready),
		.s_axi_ar_valid(_schedulerMap_1_2_spawnerServerAXI_0_ar_valid),
		.s_axi_ar_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_addr),
		.s_axi_ar_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_ar_bits_len),
		.s_axi_r_ready(_schedulerMap_1_2_spawnerServerAXI_0_r_ready),
		.s_axi_r_valid(_AxiUserYanker_4_s_axi_r_valid),
		.s_axi_r_bits_data(_AxiUserYanker_4_s_axi_r_bits_data),
		.s_axi_r_bits_last(_AxiUserYanker_4_s_axi_r_bits_last),
		.s_axi_aw_ready(_AxiUserYanker_4_s_axi_aw_ready),
		.s_axi_aw_valid(_schedulerMap_1_2_spawnerServerAXI_0_aw_valid),
		.s_axi_aw_bits_addr(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_addr),
		.s_axi_aw_bits_len(_schedulerMap_1_2_spawnerServerAXI_0_aw_bits_len),
		.s_axi_w_ready(_AxiUserYanker_4_s_axi_w_ready),
		.s_axi_w_valid(_schedulerMap_1_2_spawnerServerAXI_0_w_valid),
		.s_axi_w_bits_data(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_data),
		.s_axi_w_bits_last(_schedulerMap_1_2_spawnerServerAXI_0_w_bits_last),
		.s_axi_b_ready(_schedulerMap_1_2_spawnerServerAXI_0_b_ready),
		.s_axi_b_valid(_AxiUserYanker_4_s_axi_b_valid),
		.m_axi_ar_ready(_sourceBuffer_12_io_enq_ready),
		.m_axi_ar_valid(_AxiUserYanker_4_m_axi_ar_valid),
		.m_axi_ar_bits_addr(_AxiUserYanker_4_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_AxiUserYanker_4_m_axi_ar_bits_len),
		.m_axi_r_ready(_AxiUserYanker_4_m_axi_r_ready),
		.m_axi_r_valid(_sinkBuffer_8_io_deq_valid),
		.m_axi_r_bits_data(_sinkBuffer_8_io_deq_bits_data),
		.m_axi_r_bits_last(_sinkBuffer_8_io_deq_bits_last),
		.m_axi_aw_ready(_sourceBuffer_13_io_enq_ready),
		.m_axi_aw_valid(_AxiUserYanker_4_m_axi_aw_valid),
		.m_axi_aw_bits_addr(_AxiUserYanker_4_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_AxiUserYanker_4_m_axi_aw_bits_len),
		.m_axi_w_ready(_sourceBuffer_14_io_enq_ready),
		.m_axi_w_valid(_AxiUserYanker_4_m_axi_w_valid),
		.m_axi_w_bits_data(_AxiUserYanker_4_m_axi_w_bits_data),
		.m_axi_w_bits_last(_AxiUserYanker_4_m_axi_w_bits_last),
		.m_axi_b_ready(_AxiUserYanker_4_m_axi_b_ready),
		.m_axi_b_valid(_sinkBuffer_9_io_deq_valid)
	);
	Queue2_ReadAddressChannel sourceBuffer_12(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_12_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_4_m_axi_ar_valid),
		.io_enq_bits_addr(_AxiUserYanker_4_m_axi_ar_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_4_m_axi_ar_bits_len),
		.io_deq_ready(_protocolConverter_4_s_axi_ar_ready),
		.io_deq_valid(_sourceBuffer_12_io_deq_valid),
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
	Queue2_ReadDataChannel_18 sinkBuffer_8(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_8_io_enq_ready),
		.io_enq_valid(_protocolConverter_4_s_axi_r_valid),
		.io_enq_bits_data(_protocolConverter_4_s_axi_r_bits_data),
		.io_enq_bits_resp(_protocolConverter_4_s_axi_r_bits_resp),
		.io_enq_bits_last(_protocolConverter_4_s_axi_r_bits_last),
		.io_deq_ready(_AxiUserYanker_4_m_axi_r_ready),
		.io_deq_valid(_sinkBuffer_8_io_deq_valid),
		.io_deq_bits_data(_sinkBuffer_8_io_deq_bits_data),
		.io_deq_bits_last(_sinkBuffer_8_io_deq_bits_last)
	);
	Queue2_WriteAddressChannel sourceBuffer_13(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_13_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_4_m_axi_aw_valid),
		.io_enq_bits_addr(_AxiUserYanker_4_m_axi_aw_bits_addr),
		.io_enq_bits_len(_AxiUserYanker_4_m_axi_aw_bits_len),
		.io_deq_ready(_protocolConverter_4_s_axi_aw_ready),
		.io_deq_valid(_sourceBuffer_13_io_deq_valid),
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
	Queue2_WriteDataChannel_4 sourceBuffer_14(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sourceBuffer_14_io_enq_ready),
		.io_enq_valid(_AxiUserYanker_4_m_axi_w_valid),
		.io_enq_bits_data(_AxiUserYanker_4_m_axi_w_bits_data),
		.io_enq_bits_strb(16'hffff),
		.io_enq_bits_last(_AxiUserYanker_4_m_axi_w_bits_last),
		.io_deq_ready(_protocolConverter_4_s_axi_w_ready),
		.io_deq_valid(_sourceBuffer_14_io_deq_valid),
		.io_deq_bits_data(_sourceBuffer_14_io_deq_bits_data),
		.io_deq_bits_strb(_sourceBuffer_14_io_deq_bits_strb),
		.io_deq_bits_last(_sourceBuffer_14_io_deq_bits_last)
	);
	Queue2_WriteResponseChannel_12 sinkBuffer_9(
		.clock(clock),
		.reset(reset),
		.io_enq_ready(_sinkBuffer_9_io_enq_ready),
		.io_enq_valid(_protocolConverter_4_s_axi_b_valid),
		.io_deq_ready(_AxiUserYanker_4_m_axi_b_ready),
		.io_deq_valid(_sinkBuffer_9_io_deq_valid)
	);
	Widen widen_mod_4(
		.clock(clock),
		.reset(reset),
		.s_axi_ar_ready(_widen_mod_4_s_axi_ar_ready),
		.s_axi_ar_valid(_protocolConverter_4_m_axi_ar_valid),
		.s_axi_ar_bits_id(2'h0),
		.s_axi_ar_bits_addr(_protocolConverter_4_m_axi_ar_bits_addr),
		.s_axi_ar_bits_len(_protocolConverter_4_m_axi_ar_bits_len),
		.s_axi_ar_bits_size(_protocolConverter_4_m_axi_ar_bits_size),
		.s_axi_ar_bits_burst(_protocolConverter_4_m_axi_ar_bits_burst),
		.s_axi_ar_bits_lock(_protocolConverter_4_m_axi_ar_bits_lock),
		.s_axi_ar_bits_cache(_protocolConverter_4_m_axi_ar_bits_cache),
		.s_axi_ar_bits_prot(_protocolConverter_4_m_axi_ar_bits_prot),
		.s_axi_ar_bits_qos(_protocolConverter_4_m_axi_ar_bits_qos),
		.s_axi_ar_bits_region(_protocolConverter_4_m_axi_ar_bits_region),
		.s_axi_r_ready(_protocolConverter_4_m_axi_r_ready),
		.s_axi_r_valid(_widen_mod_4_s_axi_r_valid),
		.s_axi_r_bits_id(),
		.s_axi_r_bits_data(_widen_mod_4_s_axi_r_bits_data),
		.s_axi_r_bits_resp(_widen_mod_4_s_axi_r_bits_resp),
		.s_axi_r_bits_last(_widen_mod_4_s_axi_r_bits_last),
		.s_axi_aw_ready(_widen_mod_4_s_axi_aw_ready),
		.s_axi_aw_valid(_protocolConverter_4_m_axi_aw_valid),
		.s_axi_aw_bits_id(2'h0),
		.s_axi_aw_bits_addr(_protocolConverter_4_m_axi_aw_bits_addr),
		.s_axi_aw_bits_len(_protocolConverter_4_m_axi_aw_bits_len),
		.s_axi_aw_bits_size(_protocolConverter_4_m_axi_aw_bits_size),
		.s_axi_aw_bits_burst(_protocolConverter_4_m_axi_aw_bits_burst),
		.s_axi_aw_bits_lock(_protocolConverter_4_m_axi_aw_bits_lock),
		.s_axi_aw_bits_cache(_protocolConverter_4_m_axi_aw_bits_cache),
		.s_axi_aw_bits_prot(_protocolConverter_4_m_axi_aw_bits_prot),
		.s_axi_aw_bits_qos(_protocolConverter_4_m_axi_aw_bits_qos),
		.s_axi_aw_bits_region(_protocolConverter_4_m_axi_aw_bits_region),
		.s_axi_w_ready(_widen_mod_4_s_axi_w_ready),
		.s_axi_w_valid(_protocolConverter_4_m_axi_w_valid),
		.s_axi_w_bits_data(_protocolConverter_4_m_axi_w_bits_data),
		.s_axi_w_bits_strb(_protocolConverter_4_m_axi_w_bits_strb),
		.s_axi_b_ready(_protocolConverter_4_m_axi_b_ready),
		.s_axi_b_valid(_widen_mod_4_s_axi_b_valid),
		.s_axi_b_bits_id(),
		.s_axi_b_bits_resp(_widen_mod_4_s_axi_b_bits_resp),
		.m_axi_ar_ready(_axpbs_4_s_axi_ARREADY),
		.m_axi_ar_valid(_widen_mod_4_m_axi_ar_valid),
		.m_axi_ar_bits_id(_widen_mod_4_m_axi_ar_bits_id),
		.m_axi_ar_bits_addr(_widen_mod_4_m_axi_ar_bits_addr),
		.m_axi_ar_bits_len(_widen_mod_4_m_axi_ar_bits_len),
		.m_axi_ar_bits_burst(_widen_mod_4_m_axi_ar_bits_burst),
		.m_axi_ar_bits_lock(_widen_mod_4_m_axi_ar_bits_lock),
		.m_axi_ar_bits_cache(_widen_mod_4_m_axi_ar_bits_cache),
		.m_axi_ar_bits_prot(_widen_mod_4_m_axi_ar_bits_prot),
		.m_axi_ar_bits_qos(_widen_mod_4_m_axi_ar_bits_qos),
		.m_axi_ar_bits_region(_widen_mod_4_m_axi_ar_bits_region),
		.m_axi_r_ready(_widen_mod_4_m_axi_r_ready),
		.m_axi_r_valid(_axpbs_4_s_axi_RVALID),
		.m_axi_r_bits_id(_axpbs_4_s_axi_RID),
		.m_axi_r_bits_data(_axpbs_4_s_axi_RDATA),
		.m_axi_r_bits_resp(_axpbs_4_s_axi_RRESP),
		.m_axi_r_bits_last(_axpbs_4_s_axi_RLAST),
		.m_axi_aw_ready(_axpbs_4_s_axi_AWREADY),
		.m_axi_aw_valid(_widen_mod_4_m_axi_aw_valid),
		.m_axi_aw_bits_id(_widen_mod_4_m_axi_aw_bits_id),
		.m_axi_aw_bits_addr(_widen_mod_4_m_axi_aw_bits_addr),
		.m_axi_aw_bits_len(_widen_mod_4_m_axi_aw_bits_len),
		.m_axi_aw_bits_size(_widen_mod_4_m_axi_aw_bits_size),
		.m_axi_aw_bits_burst(_widen_mod_4_m_axi_aw_bits_burst),
		.m_axi_aw_bits_lock(_widen_mod_4_m_axi_aw_bits_lock),
		.m_axi_aw_bits_cache(_widen_mod_4_m_axi_aw_bits_cache),
		.m_axi_aw_bits_prot(_widen_mod_4_m_axi_aw_bits_prot),
		.m_axi_aw_bits_qos(_widen_mod_4_m_axi_aw_bits_qos),
		.m_axi_aw_bits_region(_widen_mod_4_m_axi_aw_bits_region),
		.m_axi_w_ready(_axpbs_4_s_axi_WREADY),
		.m_axi_w_valid(_widen_mod_4_m_axi_w_valid),
		.m_axi_w_bits_data(_widen_mod_4_m_axi_w_bits_data),
		.m_axi_w_bits_strb(_widen_mod_4_m_axi_w_bits_strb),
		.m_axi_b_ready(_widen_mod_4_m_axi_b_ready),
		.m_axi_b_valid(_axpbs_4_s_axi_BVALID),
		.m_axi_b_bits_id(_axpbs_4_s_axi_BID),
		.m_axi_b_bits_resp(_axpbs_4_s_axi_BRESP)
	);
	AxiPageBoundarySplitter_Basic_64_256_12_2_16 axpbs_4(
		.clock(clock),
		.reset(reset),
		.s_axi_ARREADY(_axpbs_4_s_axi_ARREADY),
		.s_axi_ARVALID(_widen_mod_4_m_axi_ar_valid),
		.s_axi_ARID(_widen_mod_4_m_axi_ar_bits_id),
		.s_axi_ARADDR(_widen_mod_4_m_axi_ar_bits_addr),
		.s_axi_ARLEN(_widen_mod_4_m_axi_ar_bits_len),
		.s_axi_ARBURST(_widen_mod_4_m_axi_ar_bits_burst),
		.s_axi_ARLOCK(_widen_mod_4_m_axi_ar_bits_lock),
		.s_axi_ARCACHE(_widen_mod_4_m_axi_ar_bits_cache),
		.s_axi_ARPROT(_widen_mod_4_m_axi_ar_bits_prot),
		.s_axi_ARQOS(_widen_mod_4_m_axi_ar_bits_qos),
		.s_axi_ARREGION(_widen_mod_4_m_axi_ar_bits_region),
		.s_axi_RREADY(_widen_mod_4_m_axi_r_ready),
		.s_axi_RVALID(_axpbs_4_s_axi_RVALID),
		.s_axi_RID(_axpbs_4_s_axi_RID),
		.s_axi_RDATA(_axpbs_4_s_axi_RDATA),
		.s_axi_RRESP(_axpbs_4_s_axi_RRESP),
		.s_axi_RLAST(_axpbs_4_s_axi_RLAST),
		.s_axi_AWREADY(_axpbs_4_s_axi_AWREADY),
		.s_axi_AWVALID(_widen_mod_4_m_axi_aw_valid),
		.s_axi_AWID(_widen_mod_4_m_axi_aw_bits_id),
		.s_axi_AWADDR(_widen_mod_4_m_axi_aw_bits_addr),
		.s_axi_AWLEN(_widen_mod_4_m_axi_aw_bits_len),
		.s_axi_AWSIZE(_widen_mod_4_m_axi_aw_bits_size),
		.s_axi_AWBURST(_widen_mod_4_m_axi_aw_bits_burst),
		.s_axi_AWLOCK(_widen_mod_4_m_axi_aw_bits_lock),
		.s_axi_AWCACHE(_widen_mod_4_m_axi_aw_bits_cache),
		.s_axi_AWPROT(_widen_mod_4_m_axi_aw_bits_prot),
		.s_axi_AWQOS(_widen_mod_4_m_axi_aw_bits_qos),
		.s_axi_AWREGION(_widen_mod_4_m_axi_aw_bits_region),
		.s_axi_WREADY(_axpbs_4_s_axi_WREADY),
		.s_axi_WVALID(_widen_mod_4_m_axi_w_valid),
		.s_axi_WDATA(_widen_mod_4_m_axi_w_bits_data),
		.s_axi_WSTRB(_widen_mod_4_m_axi_w_bits_strb),
		.s_axi_BREADY(_widen_mod_4_m_axi_b_ready),
		.s_axi_BVALID(_axpbs_4_s_axi_BVALID),
		.s_axi_BID(_axpbs_4_s_axi_BID),
		.s_axi_BRESP(_axpbs_4_s_axi_BRESP),
		.m_axi_ARREADY(m_axi_04_ARREADY),
		.m_axi_ARVALID(m_axi_04_ARVALID),
		.m_axi_ARID(m_axi_04_ARID),
		.m_axi_ARADDR(m_axi_04_ARADDR),
		.m_axi_ARLEN(m_axi_04_ARLEN),
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
	assign paused = _schedulerMap_0_2_io_paused | _schedulerMap_1_2_io_paused;
	assign m_axi_00_ARSIZE = 3'h5;
	assign m_axi_01_ARSIZE = 3'h5;
	assign m_axi_02_ARSIZE = 3'h5;
	assign m_axi_03_ARSIZE = 3'h5;
	assign m_axi_04_ARSIZE = 3'h5;
endmodule

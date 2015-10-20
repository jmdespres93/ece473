// file pipelineEX_MEMRegister.v

module pipelineEX_MEMRegister(
	input wire clock,
	input wire [31:0] data_out_1_in,
	input wire [31:0] data_out_2_in,
	input wire [4:0] rd_in,
	output reg [31:0] data_out_1_out,
	output reg [31:0] data_out_2_out,
	output reg [4:0] rd_out);
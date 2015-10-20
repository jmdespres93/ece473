// file pipelineRegister.v

module pipelineRegister(
	input wire rs,
	input wire rt,
	input wire rd,
	input wire [31:0] instr,
	output reg [31:0] data);
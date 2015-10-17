// file registerFile.v

module registerFile(
	input wire [4:0] read_address_1,
	input wire [4:0] read_address_2,
	input wire [31:0] write_data_in,
	input wire [4:0] write_address,
	input wire WriteEnable,
	input wire reset,
	input wire clock,
	input wire [4:0] read_address_debug,
	input wire clock_debug,
	output reg [31:0] data_out_1,
	output reg [31:0] data_out_2,
	output reg [31:0] data_out_debug);
	
	reg [31:0] register [31:0];
	integer i;
	
	initial begin
		for(i=0; i < 32; i=i+1) begin
			register[i] <= i;
		end
	end
	
	always @(posedge clock) begin
		
		if(reset == 1'b1) begin
			for(i=0; i < 31; i=i+1) begin
				register[i] <= i;
			end
		end else if (WriteEnable == 1'b1) begin	
			register[read_address_1] <= write_data_in;
		end
	end
	
	always @(negedge clock) begin
		data_out_1 <= register[read_address_1];
		data_out_2 <= register[read_address_2];
	end
	
endmodule
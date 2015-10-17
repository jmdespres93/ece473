module programCounter(
	input wire clock,
	input wire reset,
	output reg [31:0] address_out);
	
	initial begin
	address_out = 8'h003FFFFC; //On the clock edge, we start at 0x00400000
	end
	
	always @(posedge clock) begin
	
	if(reset == 1) address_out = 8'h003FFFFC; //On the clock edge, we start at 0x00400000
	else address_out = address_out + 4;
	end
	
endmodule
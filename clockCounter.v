module clockCounter(
	input wire clock,
	input wire reset,
	output reg [15:0] counter);
	
	initial begin
		counter = 0;
	end
		
	always @(posedge clock) begin
		counter = counter + 1;
		if(reset == 1'b1) begin
			counter = 0;
		end
	end
endmodule

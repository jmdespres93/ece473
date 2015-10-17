//File: inOutHexMap
//Takes multiple 4-bit input numbers
//and maps to a value readable by HEX
//displays on the board. Each in/out pair
//corresponds to a HEXn display on the board.

module inOutHexMap(
	input wire [3:0] in0,
	input wire [3:0] in1,
	input wire [3:0] in2,
	input wire [3:0] in3,
	input wire [3:0] in4,
	input wire [3:0] in5,
	input wire [3:0] in6,
	input wire [3:0] in7,
	output wire [6:0] out0,
	output wire [6:0] out1,
	output wire [6:0] out2,
	output wire [6:0] out3,
	output wire [6:0] out4,
	output wire [6:0] out5,
	output wire [6:0] out6,
	output wire [6:0] out7);
	
	hexdigit (in0[3:0], out0);
	hexdigit (in1[3:0], out1);
	hexdigit (in2[3:0], out2);
	hexdigit (in3[3:0], out3);
	hexdigit (in4[3:0], out4);
	hexdigit (in5[3:0], out5);
	hexdigit (in6[3:0], out6);
	hexdigit (in7[3:0], out7);

endmodule
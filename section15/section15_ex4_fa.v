//*****************************************************
// Project		: Full adder
// File			: section15_ex4_fa
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Full adder
//*****************************************************

`timescale 1ns / 1ps

module fa (

	input	a, b, cin,
	output	s, cout

);

	assign {cout, s} = {1'b0, a} + {1'b0, b} + {1'b0, cin};

endmodule
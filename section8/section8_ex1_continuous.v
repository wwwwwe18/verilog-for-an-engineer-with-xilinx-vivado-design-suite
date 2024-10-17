//*****************************************************
// Project		: Understanding continuous assignment
// File			: section8_ex1_continuous
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Understanding continuous assignment
//*****************************************************

`timescale 1ns / 1ps

module top(

	input	a,
	output	y

);

	wire b;
	wire z;

	wire w;
	reg c;

	assign y = a;
	assign z = b;
	assign w = c;

endmodule
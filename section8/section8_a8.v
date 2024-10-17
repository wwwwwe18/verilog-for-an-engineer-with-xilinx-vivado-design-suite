//*****************************************************
// Project		: Assignment 8
// File			: section8_a8
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Assignment 8
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg		[3:0]	a = 4'd10, b = 4'd12;

	wire	[3:0]	c;

	assign c = a & b;
	
	initial begin
	
		#1;
		$display("a_b : %b, b_b : %b, c_d : %0d", a, b, c);
	
	end

endmodule
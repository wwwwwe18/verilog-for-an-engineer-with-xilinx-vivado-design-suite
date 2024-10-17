//*****************************************************
// Project		: Assignment 9
// File			: section8_a9
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Assignment 9
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg	[3:0]	a = 4'h7, b = 4'hf;

	reg	[3:0]	res;
	
	always@(a, b) begin
	
		res = a ^ b;
	
	end
	
	initial begin
	
		#1;
		$display("a_h : %h, b_h : %h, res_h : %0h", a, b, res);
	
	end

endmodule
//*****************************************************
// Project		: Understanding procedural assignment
// File			: section8_ex2_procedural
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Understanding procedural assignment
//*****************************************************

`timescale 1ns / 1ps

module top(

	input	[3:0]	a

);
	
	reg	[3:0]	temp;
	reg	[3:0]	d1, d2;
	
	// initial always
	
	/*
	initial begin
	
		d1 = temp;	// Blocking
		d2 = a;
	
	end
	*/
	
	always@(temp, a) begin
	
		d1 = temp;
		d2 = a;
	
	end

endmodule
//*****************************************************
// Project		: Top
// File			: section2_ex1_top
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Top
//*****************************************************

`timescale 1ns / 1ps

module top(

    input	a, b,
    output 	y
	
);

	assign y = a & b;
	
endmodule
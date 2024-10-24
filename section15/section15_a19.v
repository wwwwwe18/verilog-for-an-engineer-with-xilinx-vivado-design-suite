//*****************************************************
// Project		: Assignment 19
// File			: section15_a19
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Assignment 19
//*****************************************************

`timescale 1ns / 1ps

module mux2_1 (

	input	a, b,
	input	sel,
	output	y

);

	assign y = (sel == 1'b0) ? a : b;

endmodule

module mux4_1 (

	input			a, b, c, d,
	input	[1:0]	sel,
	output	reg		y

);

	always@(*) begin
	
		case(sel)
		
			2'b00: y = a;
			2'b01: y = b;
			2'b10: y = c;
			2'b11: y = d;
			default: y = a;
		
		endcase
	
	end

endmodule
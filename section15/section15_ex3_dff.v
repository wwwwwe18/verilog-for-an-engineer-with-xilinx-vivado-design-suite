//*****************************************************
// Project		: D flip flop
// File			: section15_ex3_dff
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: D flip flop
//*****************************************************

`timescale 1ns / 1ps

module dff (

	input		clk, clr, din,
	output	reg	dout

);

	always@(posedge clk) begin

		if(clr == 1'b1)
		
			dout <= 1'b0;
		
		else
		
			dout <= din;

	end

endmodule
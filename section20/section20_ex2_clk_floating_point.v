//*****************************************************
// Project		: Generating floating point clock period
// File			: section20_ex2_clk_floating_point
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps	// 10^3 -> 3

module tb;

	// Initial variable
	reg clk16 = 0;
	reg clk8 = 0

	always #31.25 clk8 = ~clk8;
	always #62.5 clk16 = ~clk16;
	
	initial begin
	
		#200;
		$finish;
	
	end

endmodule
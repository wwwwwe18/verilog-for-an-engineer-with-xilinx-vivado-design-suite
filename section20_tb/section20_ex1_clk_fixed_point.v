//*****************************************************
// Project		: Generating fixed point clock period
// File			: section20_ex1_clk_fixed_point
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

// 1. TB code does not have any I/O port
// 2. All inputs of DUT, declare reg variable in TB
// 3. All outputs of DUT, declare wire variable in TB

module tb;

	reg clk;
	
	initial begin
	
		clk = 0;
	
	end

	always #5 clk = ~clk;
	
	initial begin
	
		#500;
		$finish;
	
	end

endmodule
//*****************************************************
// Project		: Generating reset signal
// File			: section20_ex3_rst
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg rst = 0;

	initial begin
	
		rst = 1'b1;
		#100;
		rst = 1'b0;
	
	end

endmodule
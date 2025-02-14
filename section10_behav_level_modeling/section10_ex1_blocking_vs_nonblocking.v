//*****************************************************
// Project		: Demonstration
// File			: section10_ex1_blocking_vs_nonblocking
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Demonstration
//*****************************************************

`timescale 1ns / 1ps

module tb();

	reg a = 0;	// Blocking
	reg b = 0;
	
	reg c = 0;	// Non-blocking
	reg d = 0;
 
	initial begin
	
		#10;
		a = 1'b1;
		#10;
		b = 1'b1;
		#10;
		a = 1'b0;
		#10;
		b = 1'b0;
		
	end

	initial begin
	
		c <= #10 1'b1;
		d <= #10 1'b1;
		#10;
		c <= #10 1'b0;
		d <= #10 1'b0;
		#10;
		c <= #10 1'b1;
		d <= #10 1'b1;
		#10;
		c <= #10 1'b0;
		d <= #10 1'b0;
	
	end
	
endmodule
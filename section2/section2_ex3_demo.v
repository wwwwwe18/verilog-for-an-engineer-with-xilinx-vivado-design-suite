//*****************************************************
// Project		: Demo
// File			: section2_ex3_demo
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Demo
//*****************************************************

`timescale 1ns / 1ps

module top(

	input	[3:0]	a, b,
	output	[4:0]	y

);

	reg	[4:0]	temp;

	always@(*) begin

	temp = a + b;

	end
	
	assign y = temp;
	
endmodule
 
/////////////////////////////////
 
module tb;

	reg		[3:0]	a = 0, b = 0;
	wire	[4:0]	y;
	
	top dut (a, b, y);	// Implicit 
	
	integer i = 0;
	
	initial begin
	
		for(i = 0; i< 20; i = i+1) begin
		
			a = $urandom;
			b = $urandom;
			#10;
		
		end
		
	end

endmodule
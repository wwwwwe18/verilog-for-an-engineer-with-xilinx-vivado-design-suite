//*****************************************************
// Project		: Assignment 28
// File			: section20_a28_tb
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: 4-bit down counter - testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg		clk = 0, rst = 0;
	reg		ld = 0;
	reg		[3:0]	ldvalue;
	wire	[3:0]	dout;
	
	integer i = 0;

	counter dut (clk, rst, ld, ldvalue, dout);
	
	always #5 clk = ~clk;
	
	initial begin
	
		rst = 1'b1;
		#50;
		rst = 1'b0;
	
	end
	
	task counter_test; 
	
		begin
		
			@(posedge clk);
			ld = 1'b1;
			ldvalue = $urandom();
			@(posedge clk);
			ld = 1'b0;
			repeat(10) @(posedge clk);
	
		end
	
	endtask
	
	initial begin
	
		#50;
		
		for(i = 0; i < 5; i = i + 1) begin
		
			counter_test();
		
		end
	
	end

	initial begin
	
		#650;
		$finish();
	
	end

endmodule
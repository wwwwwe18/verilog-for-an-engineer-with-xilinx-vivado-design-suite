//*****************************************************
// Project		: Assignment 29
// File			: section20_a29_tb
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: 1:4 demux - testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg				clk = 0, d = 0, rst = 0;
	reg		[1:0]	sel = 0;
	wire			y1, y2, y3, y4;
	
	integer i = 0;

	demux_1_4 dut (d, rst, sel, y1, y2, y3, y4);
	
	always #5 clk = ~clk;
	
	task reset;
	
		begin
		
			rst = 1'b1;
			#50;
			rst = 1'b0;
	
		end
	
	endtask
	
	task demux_test;
	
		begin
		
			@(posedge clk);
			d = 1'b1;
			sel = $urandom();
			@(posedge clk);
			sel = $urandom();
			@(posedge clk);
			sel = $urandom();
			@(posedge clk);
			sel = $urandom();
			repeat(2) @(posedge clk);
		
		end
	
	endtask
	
	initial begin
	
		reset();
		
		for(i = 0; i < 5; i = i + 1) begin
		
			demux_test();
		
		end
	
	end

	initial begin
	
		#500;
		$finish();
	
	end
	
endmodule
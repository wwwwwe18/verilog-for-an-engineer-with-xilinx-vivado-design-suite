//*****************************************************
// Project		: Mux 2:1
// File			: section20_ex5_mux_tb
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg a = 0, b = 0, sel = 0;
	wire x;
 
	initial begin
	
		a = 0;
		b = 0;
		sel = 0;
		
	end
	
	//mux dut (a,b,sel,x);
	
	mux dut (.a(a), .b(b), .sel(sel), .x(x));
	
	always #10 a = ~a;
	
	always #20 b = ~b;
	
	always #40 sel = ~sel;
	
	initial begin
	
		#500;
		$finish;
	
	end

endmodule
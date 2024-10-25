//*****************************************************
// Project		: Assignment 30
// File			: section20_a30_tb
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: 4-bit ring counter - testbench
//*****************************************************

module tb;

	reg				clk = 0, rst = 0;
	wire	[3:0]	dout;
	
	counter dut (clk, rst, dout);
	
	always #10 clk = ~clk;
	
	initial begin
	
		rst = 1'b1;
		#50;
		rst = 1'b0;
	
	end
	
	initial begin
	
		#200;
		$finish();
	
	end

endmodule
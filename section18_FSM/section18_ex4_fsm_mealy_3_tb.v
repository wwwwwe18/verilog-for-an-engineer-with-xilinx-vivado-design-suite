//*****************************************************
// Project		: Mealy FSM - 3 process methodology
// File			: section18_ex4_fsm_mealy_3_tb
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Testbench
//*****************************************************

module tb;

	reg 	clk = 0, rst = 0, din = 0;
	wire	dout;
	integer	i = 0;
	
	fsm dut (clk, rst, din, dout);
	
	always #10 clk = ~clk;
	
	initial begin
	
		rst = 1;
		#400;
		rst = 0;
	
	end
	
	initial begin
	
		din = 0;
		#400;
		din = 1;
	
	end
	
	initial begin
	
		#1000;
		$finish;
	
	end

endmodule
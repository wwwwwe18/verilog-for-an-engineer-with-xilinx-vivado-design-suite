//*****************************************************
// Project		: Moore FSM - 3 process methodology
// File			: section18_ex1_fsm_moore_3_tb
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
		#40;
		rst = 0;
	
	end
	
	initial begin
	
		#40;
		for(i = 0; i < 10; i = i + 1) begin
		
			din = 1;
			@(posedge clk);
			din = 0;
			@(posedge clk);
		
		end
	
	end
	
	initial begin
	
		#500;
		$finish;
	
	end

endmodule
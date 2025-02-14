//*****************************************************
// Project		: UART
// File			: section23_ex1_uart_tb
// Editor		: Wenmei Wang
// Date			: 20/10/2024
// Description	: Testbench
//*****************************************************

module tb;

	reg				clk = 0;
	reg				start = 0;
	reg		[7:0]	txin;
	wire			tx;
	reg				rx;
	wire	[7:0]	rxout;
	wire			rxdone, txdone;
	wire			txrx;
	
	top dut (clk, start, txin, txrx, txrx, rxout, rxdone, txdone);
	
	integer i = 0;
	
	initial begin
	
		start = 1;
		
		for(i = 0; i < 10; i = i + 1) begin
		
			txin= $urandom_range(10, 200);
			@(posedge rxdone);
			@(posedge txdone);
		
		end

	end
	
	always #5 clk = ~clk;

endmodule
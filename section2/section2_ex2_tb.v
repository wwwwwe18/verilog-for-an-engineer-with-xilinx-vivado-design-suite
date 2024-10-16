//*****************************************************
// Project		: Testbench
// File			: section2_ex2_tb
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Testbench
//*****************************************************

module tb();

	reg		a, b;
    wire	y;

	top dut (a, b, y);
	
	initial begin
	
		a = 1;
		b = 1;
		#10;
		a = 0;
		b = 1;
		#10;
		a = 0;
		b = 0;
		#10;
		a = 1;
		b = 0;
	
	end
	
endmodule
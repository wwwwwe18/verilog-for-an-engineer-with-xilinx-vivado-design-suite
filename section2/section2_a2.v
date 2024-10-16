//*****************************************************
// Project		: Assignment 2
// File			: section2_a2
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Assignment 2
//*****************************************************

module tb();

	reg		a, b;
    wire	s, c;

	ha dut (a, b, s, c);
	
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
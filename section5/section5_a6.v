//*****************************************************
// Project		: Assignment 6
// File			: section5_a6
// Editor		: Wenmei Wang
// Date			: 13/10/2024
// Description	: Assignment 6
//*****************************************************

module tb;

	integer		a = 12;
	reg	[8:0]	b = 9'o345;
	reg	[2:0]	c = 3'b100;
	
	initial begin
	
		$display("a_d : %0d, b_o : %0o, c_b : %0b", a, b, c);
	
	end

endmodule
//*****************************************************
// Project		: Assignment 7
// File			: section8_a7
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Assignment 7
//*****************************************************

module tb;

	reg	[15:0]	a = 16'habcd, b = 16'hdcba;	// Blocking
	reg	[15:0]	c = 16'habcd, d = 16'hdcba;	// Non-blocking
	
	// Blocking
	reg	[15:0]	temp;
	
	initial begin
	
		temp = a;
		a = b;
		b = temp;
		#1;
		$display("a : %0x and b : %0x", a, b);
	
	end
	
	// Non-blocking
	initial begin
	
		c <= d;
		d <= c;
		#1;
		$display("c : %0x and d : %0x", c, d);
	
	end

endmodule
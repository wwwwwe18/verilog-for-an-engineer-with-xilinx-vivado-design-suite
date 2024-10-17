//*****************************************************
// Project		: Swapping of variable values
// File			: section8_ex4_swap
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Swapping of variable values
//*****************************************************

module tb;

	reg	[3:0]	a = 4'h3, b = 4'h6;	// Blocking
	reg	[3:0]	c = 4'h3, d = 4'h6;	// Non-blocking
	
	// Blocking
	reg	[3:0]	temp;
	
	initial begin
	
		temp = a;
		a = b;
		b = temp;
		#1;
		$display("a : %0d and b : %0d", a, b);
	
	end
	
	// Non-blocking
	initial begin
	
		c <= d;
		d <= c;
		#1;
		$display("c : %0d and d : %0d", c, d);
	
	end

endmodule
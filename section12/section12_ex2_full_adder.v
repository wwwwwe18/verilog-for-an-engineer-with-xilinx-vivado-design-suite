//*****************************************************
// Project		: Full adder
// File			: section12_ex2_full_adder
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Full adder
//*****************************************************

module fa (

	input	a, b, cin,
	output	s, cout
	
);

	wire t1, t2, t3;

	assign t1 = a ^ b;
	assign t2 = t1 & cin;
	assign t3 = a & b;
	
	assign s = t1 ^ cin;
	assign cout = t2 | t3;

endmodule
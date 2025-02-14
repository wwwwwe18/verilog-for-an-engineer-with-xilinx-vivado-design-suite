//*****************************************************
// Project		: Full adder
// File			: section14_ex1_full_adder
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Full adder
//*****************************************************

module ha (

	input	a, b,
	output	s, c

);

	assign s = a ^ b;
	assign c = a & b;

endmodule

module fa (

	input	a, b, cin,
	output	s, cout

);

	wire t1, t2, t3;
	
	ha h1 (.a(a), .b(b), .s(t2), .c(t1));
	ha h2 (.a(t2), .b(cin), .s(s), .c(t3));
	
	assign cout = t1 | t3;

endmodule
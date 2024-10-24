//*****************************************************
// Project		: Assignment 17
// File			: section14_a17_design
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Design
//*****************************************************

module fa (

	input	a, b, cin,
	output	s, cout
	
);

	wire t1, t2, t3;

	xor x1 (t1, a, b);
	xor x2 (s, t1, cin);
	and a1 (t2, cin, t1);
	and a2 (t3, a, b);
	or o1(cout, t2, t3);

endmodule

module ripple_adder(

	input	[3:0]	a, b,
	input			cin,
	output	[3:0]	s,
	output			cout

);

	wire c0, c1, c2;

	fa f0 (a[0], b[0], cin, s[0], c0);
	fa f1 (a[1], b[1], c0, s[1], c1);
	fa f2 (a[2], b[2], c1, s[2], c2);
	fa f3 (a[3], b[3], c2, s[3], cout);

endmodule
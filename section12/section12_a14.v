//*****************************************************
// Project		: Assignment 14
// File			: section12_a14
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Assignment 14
//*****************************************************

module fs (

	input	a, b, bin,
	output	d, bout

);
	
	wire t1, t2, t3;
	wire t1bar, abar;

	xor x1 (t1, a, b);
	xor x2 (d, t1, bin);
	not n1 (t1bar, t1);
	not n2 (abar, a);
	and a1 (t2, t1bar, bin);
	and a2 (t3, abar, b);
	or o1 (bout, t2, t3);

endmodule
//*****************************************************
// Project		: 4:1 mux
// File			: section14_ex2_mux_4_1
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: 4:1 mux
//*****************************************************

module mux21(

	input	a, b, sel,
	output	y

);

	assign y = (sel == 1'b0) ? a : b;

endmodule

module mux41(

	input 			i0, i1, i2, i3,
	input	[1:0]	s,
	output			y

);

	wire t1, t2;
	
	mux21 m1 (i0, i1, s[0], t1);
	mux21 m2 (i2, i3, s[0], t2);
	mux21 m3 (t1, t2, s[1], y);

endmodule
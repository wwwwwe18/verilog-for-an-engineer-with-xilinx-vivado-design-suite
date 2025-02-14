//*****************************************************
// Project		: Assignment 18
// File			: section14_a18_design
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Design
//*****************************************************

module mux21 (

	input	a, b,
	input	sel,
	output	y
	
);

	assign y = (sel == 1'b0) ? a : b;
 
endmodule

module mux81(

	input	[7:0]	din,
	input	[2:0]	sel,
	output			y

);

	wire t1, t2, t3, t4, t5, t6;

	mux21 m1 (din[0], din[1], sel[0], t1);
	mux21 m2 (din[2], din[3], sel[0], t2);
	mux21 m3 (din[4], din[5], sel[0], t3);
	mux21 m4 (din[6], din[7], sel[0], t4);
	
	mux21 m5 (t1, t2, sel[1], t5);
	mux21 m6 (t3, t4, sel[1], t6);
	
	mux21 m7 (t5, t6, sel[2], y);

endmodule
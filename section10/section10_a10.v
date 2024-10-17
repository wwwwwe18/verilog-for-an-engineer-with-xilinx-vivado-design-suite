//*****************************************************
// Project		: Assignment 10
// File			: section10_a10
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Assignment 10
//*****************************************************

module mux_2_1 (

	input	a, b,
	input	sel,
	output	y, ybar
	
);

	assign y = sel ? b : a;
	assign ybar = ~y;
 
endmodule

module mux4_1 (

	input			a, b, c, d,
	input	[1:0]	sel,
	output			y, ybar
	
);

	wire y_mux1, ybar_mux1;
	wire y_mux2, ybar_mux2;

	mux_2_1	mux1 (a, b, sel[0], y_mux1, ybar_mux1);
	mux_2_1	mux2 (c, d, sel[0], y_mux2, ybar_mux2);
	mux_2_1	mux3 (y_mux1, y_mux2, sel[1], y, ybar);

endmodule
//*****************************************************
// Project		: Data flipflop
// File			: section10_ex6_dff
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Data flipflop
//*****************************************************

module dff (

	input		clk, din,
	output	reg q, qbar
	
);
 
	always@(posedge clk) begin

		q <= din;
		qbar <= ~din;
		
	end
	
endmodule

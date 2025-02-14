//*****************************************************
// Project		: D flip flop
// File			: section20_ex6_dff_design
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Design
//*****************************************************

module dff (

	input		clk, din,
	output	reg	q, qbar
	
);

	always@(posedge clk) begin

		q <= din;
		qbar <= ~din;
		
	end

endmodule
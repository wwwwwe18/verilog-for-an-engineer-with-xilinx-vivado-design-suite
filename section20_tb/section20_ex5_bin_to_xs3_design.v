//*****************************************************
// Project		: Binary to excess-3 converter
// File			: section20_ex5_bin_to_xs3_design
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Design
//*****************************************************

module bin_to_xs3 (

	input		[3:0]	a,
	output	reg	[4:0]	y
	
);

	always@(*) begin

		y = {1'b0,a} + 5'b00011;
		
	end
	
endmodule
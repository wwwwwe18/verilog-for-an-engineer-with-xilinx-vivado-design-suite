//*****************************************************
// Project		: Half adder
// File			: section12_ex1_half_adder
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Half adder
//*****************************************************

module ha (

	input	a, b,
	output	s, c
	
);

	assign s = a ^ b;
	assign c = a & b;

endmodule
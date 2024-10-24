//*****************************************************
// Project		: Assignment 22
// File			: section16_a22
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Assignment 22
//*****************************************************

// 256 x 8 (depth x size)
module double_ram (

	input			clka,
	input			ena,
	input			wea,
	input	[7:0]	addra,
	input	[7:0]	dina,
	input			clkb,
	input			enb,
	input	[7:0]	addrb,
	output	[7:0]	doutb

);

    blk_mem_gen_0 b1 (clka, ena, wea, addra, dina, clkb, enb, addrb, doutb);

endmodule
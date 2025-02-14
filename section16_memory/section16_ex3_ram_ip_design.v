//*****************************************************
// Project		: Single port RAM - IP method
// File			: section16_ex3_ram_ip_design
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Design
//*****************************************************

// 64 x 8 (depth x size)
module ram (

	input			clk,
	input			we,
	input	[5:0]	addr,
	input	[7:0]	din,
	output	[7:0]	dout

);

    blk_mem_gen_0 b1 (clk, we, addr, din, dout);

endmodule
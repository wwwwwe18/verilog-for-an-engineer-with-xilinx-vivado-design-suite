//*****************************************************
// Project		: Single port RAM - language template
// File			: section16_ex2_ram_language
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Single port RAM - language template
//*****************************************************

// 64 x 8 (depth x size)
module ram (

	input			clk,
	input			we,
	input	[5:0]	addr,
	input	[7:0]	din,
	output	[7:0]	dout

);

	reg	[7:0]	mem	[63:0];
	
	always@(posedge clk) begin
	
		if(we)
			mem[addr] <= din;
	
	end
	
	assign dout = mem[addr];

endmodule
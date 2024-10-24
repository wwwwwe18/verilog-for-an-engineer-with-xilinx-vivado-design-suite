//*****************************************************
// Project		: Single port RAM - general method
// File			: section16_ex1_ram_general
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Single port RAM - general method
//*****************************************************

// 64 x 8 (depth x size)
module ram (

	input			clk,
	input			we,
	input			rst,
	input	[5:0]	addr,
	input	[7:0]	din,
	output	[7:0]	dout

);

	reg	[7:0]	mem	[63:0];
	reg	[7:0]	temp;
	integer		i = 0;
	
	always@(posedge clk) begin
	
		if(rst == 1'b1) begin
		
			for(i = 0; i < 64; i = i + 1) begin
			
				mem[i] <= 8'h00;
			
			end
			
			temp <= 8'h00;
		
		end
		else begin
	
			if(we == 1'b1)
				
				mem[addr] <= din;
				
			else
			
				temp <= mem[addr];
	
		end
	
	end
	
	assign dout = temp;

endmodule
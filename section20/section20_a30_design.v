//*****************************************************
// Project		: Assignment 30
// File			: section20_a30_design
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: 4-bit ring counter - design
//*****************************************************

module counter (

	input				clk, rst,
	output	reg	[3:0]	dout

);

	always@(posedge clk) begin
	
		if(rst == 1'b1) begin
		
			dout <= 4'b0001;
		
		end
		else begin
		
			dout[3] <= dout[0];
			dout[0] <= dout[1];
			dout[1] <= dout[2];
			dout[2] <= dout[3];
		
		end
	
	end

endmodule
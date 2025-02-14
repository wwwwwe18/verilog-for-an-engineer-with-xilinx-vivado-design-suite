//*****************************************************
// Project		: Assignment 16
// File			: section14_a16
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Assignment 16
//*****************************************************

module dff (

	input		clk, rst, d,
	output	reg	q,
	output		qbar

);

	always@(posedge clk) begin
	
		if(rst == 1'b1)
		
			q <= 1'b0;

		else
			q <= d;
	
	end
	
	assign qbar = ~q;

endmodule

module counter_j (

	input			clk, rst,
	output	[3:0]	dout

);

	wire [3:0] qbar;

	dff d3 (clk, rst, qbar[0], dout[3], qbar[3]);
	dff d2 (clk, rst, dout[3], dout[2], qbar[2]);
	dff d1 (clk, rst, dout[2], dout[1], qbar[1]);
	dff d0 (clk, rst, dout[1], dout[0], qbar[0]);

endmodule
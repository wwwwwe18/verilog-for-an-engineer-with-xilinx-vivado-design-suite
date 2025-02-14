//*****************************************************
// Project		: Assignment 11
// File			: section10_a11
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Assignment 11
//*****************************************************

module dff (

	input			clk,
	input			rst_sync, rst_async,	// Active high
	input			d,
	output	reg		q,
	output	wire	qbar

);
	
	always@(posedge clk or posedge rst_async) begin	// Async rst
	
		if(rst_async == 1'b1)
		
			q <= 1'b0;
		
		else begin

			if(rst_sync == 1'b1)	// Sync
			
				q <= 1'b0;

			else
			
				q <= d;
	
		end
	
	end
	
	assign qbar = ~q;

endmodule
//*****************************************************
// Project		: Virtual I/O
// File			: section21_ex2_vio
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: Design
//*****************************************************

`timescale 1ns / 1ps

module top (

	input	clk, start,
	output	led

);

	parameter delay = 100_000_000;
	reg temp = 0;
	integer count = 0;
	
	always@(posedge clk) begin
	
		if(start == 1'b1) begin
		
			if(count < delay)
			
				count <= count + 1;
				
			else begin
			
				count <= 0;
				temp <= ~temp;
				
			end
			
		end
	
	end
	
	assign led = temp;

endmodule
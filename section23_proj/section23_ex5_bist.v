//*****************************************************
// Project		: BIST for SW and LED
// File			: section23_ex5_bist
// Editor		: Wenmei Wang
// Date			: 25/10/2024
// Description	: Design
//*****************************************************

`timescale 1ns / 1ps

module bist (

	input			clk,
	input	[3:0]	sw,
	output	[3:0]	led

);

	// Create a slower clock for 1sec delay of LED (mimic)
	integer	count = 0;
	reg		sclk = 0;
	
	always@(posedge clk) begin	// 10^8 -> 1/10^8 * N = 1
	
		if(count < 10)			// N/2
		
			count <= count + 1;
			
		else begin
		
			count <= 0;
			sclk <= ~sclk;
		
		end
	
	end
	
	// If user changes any switches
	reg		flag = 1'b0;
	
	always@(posedge clk) begin
	
		if(sw == 4'b0000)
		
			flag <= 1'b0;
			
		else
		
			flag <= 1'b1;
	
	end
	
	// Main logic
	integer		i = 0;
	reg	[3:0]	temp = 0;
	
	always@(posedge sclk) begin
	
		if(flag == 1'b0) begin		// Send random patterns
		
			if(i < 4) begin			// 1 to 4
		
				temp <= {1'b1, temp[3:1]};	// Shift one in right direction
				i <= i + 1;
			
			end
			else if(i < 8) begin			// 4 to 1
			
				temp <= {temp[2:0], 1'b0};	// Shift one in left direction
				i <= i + 1;
			
			end
			else begin
			
				temp <= 4'b0000;
				i <= 0;
			
			end
		
		end
		else begin	// User changes switches
		
			temp <= sw;
		
		end
	
	end
	
	assign led = temp;

endmodule
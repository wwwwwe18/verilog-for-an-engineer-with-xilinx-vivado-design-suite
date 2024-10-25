//*****************************************************
// Project		: Assignment 31
// File			: section23_a31
// Editor		: Wenmei Wang
// Date			: 24/10/2024
// Description	: PWM - design
//*****************************************************

`timescale 1ns / 1ps

module pwm (

	input		clk, rst,
	output	reg	dout

);

	parameter	period = 100;
	parameter	resolution = 20;
	integer		count = 0;
	integer		count_updown = 0;
	integer		ton = 0;
	reg			ncyc = 1'b0;
	
	always@(posedge clk) begin
	
		if(rst == 1'b1) begin
		
			count	<= 0;
			ton		<= 0;
			ncyc	<= 1'b0;
		
		end
		else begin
		
			if(count <= ton) begin			// ton
			
				count	<= count + 1;
				dout	<= 1'b1;
				ncyc	<= 1'b0;
			
			end
			else if(count < period) begin	// toff
			
				count	<= count + 1;
				dout	<= 1'b0;
				ncyc	<= 1'b0;
			
			end
			else begin						// Finish cycle
			
				ncyc			<= 1'b1;
				count			<= 0;
				
				if(count_updown < 2 * period / resolution)
				
					count_updown	<= count_updown + 1;
					
				else
				
					count_updown	<= 0;
			
			end
		
		end
	
	end
	
	always@(posedge clk) begin
	
		if(rst == 1'b0) begin
		
			if(ncyc == 1'b1) begin
			
				if(count_updown <= period / resolution) begin	// Up
			
					if(ton < period)
					
						ton <= ton + resolution;
						
					else
						
						ton <= ton;
				
				end
				else begin	// Down
				
					if(ton > 0)
					
						ton <= ton - resolution;
						
					else
						
						ton <= ton;
				
				
				end
			
			end
		
		end
	
	end

endmodule
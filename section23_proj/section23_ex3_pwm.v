//*****************************************************
// Project		: PWM
// File			: section23_ex3_pwm
// Editor		: Wenmei Wang
// Date			: 24/10/2024
// Description	: Design
//*****************************************************

`timescale 1ns / 1ps

module pwm (

	input		clk, rst,
	output	reg	dout

);

	parameter	period = 100;
	integer		count = 0;
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
			
				ncyc	<= 1'b1;
				count	<= 0;
			
			end
		
		end
	
	end
	
	always@(posedge clk) begin
	
		if(rst == 1'b0) begin
		
			if(ncyc == 1'b1) begin
			
				if(ton < period)
				
					ton <= ton + 5;
					
				else
					
					ton <= 0;
			
			end
		
		end
	
	end

endmodule
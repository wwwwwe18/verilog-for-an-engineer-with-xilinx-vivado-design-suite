//*****************************************************
// Project		: Serial peripheral interface
// File			: section23_ex2_spi
// Editor		: Wenmei Wang
// Date			: 24/10/2024
// Description	: Design
//*****************************************************

`timescale 1ns / 1ps

module spi (

	input			clk, start,
	input	[11:0]	din,
	output	reg		cs, mosi, done,
	output			sclk

);

	integer count = 0;
	reg sclkt = 0;

	always@(posedge clk) begin	// Onboard / dac_freq = n

		if(count < 10)
		
			count <= count + 1;
			
		else begin
		
			count <= 0;
			sclkt <= ~sclkt;
		
		end

	end

	parameter idle = 0, start_tx = 1, send = 2, end_tx = 3;
	reg [1:0] state = idle;
	reg [11:0] temp;
	integer bitcount = 0;

	always@(posedge sclkt) begin

		case(state)
		
			idle: begin
			
				mosi	<= 1'b0;
				cs		<= 1'b1;	// Chip select
				done	<= 1'b0;
				
				if(start)
				
					state	<= start_tx;
					
				else
				
					state	<= idle;
			
			end
			
			start_tx: begin
			
				cs		<= 1'b0;
				temp	<= din;
				state	<= send;
			
			end
			
			send: begin
			
				if(bitcount <= 11) begin	// 12-bit din
				
					bitcount	<= bitcount + 1;
					mosi		<= temp[bitcount];
					state		<= send;
				
				end
				else begin
				
					bitcount	<= 0;
					state		<= end_tx;
					mosi		<= 1'b0;
				
				end
			
			end
			
			end_tx: begin
		
				cs		<= 1'b1;
				state	<= idle;
				done	<= 1'b1;
		
			end
			
			default: state <= idle;

		endcase
		
	end
	
	assign sckt = sclkt;

endmodule
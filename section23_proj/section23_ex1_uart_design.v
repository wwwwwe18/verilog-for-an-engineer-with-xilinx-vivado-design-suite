//*****************************************************
// Project		: UART
// File			: section23_ex1_uart_design
// Editor		: Wenmei Wang
// Date			: 24/10/2024
// Description	: Design
//*****************************************************

/*

Comment:

Code is wrong as tx data until uclk changes while here we only generate short trigger bitDone.
There should be better way to parameterize clock and baud rate for module.
A better example of UART can be found in the communication series course.
No debug plan at this moment as it is for initial study only.

*/

`timescale 1ns / 1ps

module top (

	input			clk,
	input			start,
	input	[7:0]	txin,
	output	reg		tx,
	
	input			rx,
	output	[7:0]	rxout,
	output			rxdone, txdone

);

	parameter		clk_value = 100_000;	// 100kHz
	parameter		baud = 9600;
	
	parameter		wait_count = clk_value / baud;
	
	reg				bitDone = 0;
	integer			count = 0;
	parameter 		idle = 0, send = 1, check = 2;
	reg		[1:0]	state = idle;
	
	// Generate trigger for baud rate
	always@(posedge clk) begin
	
		if(state == idle) begin
		
			count <= 0;
		
		end
		else begin
		
			if(count == wait_count) begin
			
				bitDone <= 1'b1;
				count <= 0;
			
			end
			else begin
			
				bitDone <= 1'b0;
				count <= count + 1;
			
			end
		
		end
	
	end

	// TX logic
	reg		[9:0]	txData;			// Stop, bit data, start
	integer			bitIndex = 0;	// reg [3:0]
	reg		[9:0]	shifttx = 0;
	
	always@(posedge bitDone) begin
	
		case(state)
		
			idle: begin
			
				tx			<= 1'b1;
				txData		<= 0;
				bitIndex	<= 0;
				shifttx		<= 0;
			
				if(start == 1'b1) begin
				
					txData	<= {1'b1, txin, 1'b0};	// Stop, bit data, start
					state	<= send;
				
				end
				else begin
				
					state	<= idle;
				
				end
			
			end
			
			send: begin
			
				tx		<= txData[bitIndex];
				state	<= check;
				shifttx	<= {txData[bitIndex], shifttx[9:1]};
			
			end
			
			check: begin
			
				if(bitIndex <= 9) begin	// 0 - 9 => 10
				
					state		<= send;
					bitIndex	<= bitIndex + 1;
				
				end
				else begin
				
					state		<= idle;
					bitIndex	<= 0;
				
				end
			
			end
			
			default: begin
			
				state	<= idle;
			
			end
		
		endcase
	
	end
	
	assign txdone = ((bitIndex == 9) && (bitDone == 1'b1)) ? 1'b1 : 1'b0;
	
	// RX logic
	integer		rcount = 0;
	integer		rindex = 0;
	parameter 	ridle = 0, rwait = 1, recv = 2, rcheck = 3;
	reg	[1:0]	rstate;
	reg	[9:0]	rxdata;
	
	always@(posedge clk) begin
	
		case(rstate)
		
			ridle: begin
			
				rxdata	<= 0;
				rindex	<= 0;
				rcount	<= 0;
				
				if(rx == 1'b0) begin
				
					rstate	<= rwait;
				
				end
				else begin
				
					rstate	<= idle;
				
				end
			
			end
			
			rwait: begin
			
				if(rcount < wait_count / 2) begin
				
					rcount	<= rcount + 1;
					rstate	<= rwait;
				
				end
				else begin
					
					rcount	<= 0;
					rstate	<= recv;
					rxdata	<= {rx, rxdata[9:1]};	// Stop, bit data, start
				
				end
			
			end
			
			recv: begin
			
				if(rindex <= 9) begin
				
					if(bitDone == 1'b1) begin
					
						rindex	<= rindex + 1;
						rstate	<= rwait;
					
					end
					
				end
				else begin
				
					rindex	<= 0;
					rstate	<= ridle;
				
				end
			
			end
			
			rcheck: begin
			
			
			end
			
			default: begin
			
				rstate <= idle;
		
			end
		
		endcase
	
	end
	
	assign rxout = rxdata[8:1];
	assign rxdone = ((rindex == 9) && (bitDone == 1'b1)) ? 1'b1 : 1'b0;

endmodule
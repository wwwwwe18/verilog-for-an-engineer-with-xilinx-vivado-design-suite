//*****************************************************
// Project		: Assignment 26
// File			: section18_a26
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Non-overlapping sequence detector - 1001
//*****************************************************

module fsm (

	input		clk, rst, din,
	output	reg	dout

);

	parameter idle = 0;
	parameter s0 = 1;
	parameter s1 = 2;
	parameter s2 = 3;
	parameter s3 = 4;
	
	reg [2:0] state = idle;
	
	// Mealy FSM - 1 process methodology -> sync system
	
	always@(posedge clk) begin
	
		case(state)
		
			idle: begin
			
				if(rst == 1'b1) begin
				
					state <= idle;
					dout <= 1'b0;
					
				end
				else begin
				
					state <= s0;
					dout <= 1'b0;
				
				end
			
			end
			
			s0: begin
			
				if(din) begin
				
					state <= s1;
					dout <= 1'b0;
				
				end
				else begin
				
					state <= s0;
					dout <= 1'b0;
				
				end
			
			end
			
			s1: begin
			
				if(!din) begin
				
					state <= s2;
					dout <= 1'b0;
				
				end
				else begin
				
					state <= s1;
					dout <= 1'b0;
			
				end
			
			end
			
			s2: begin
			
				if(!din) begin
				
					state <= s3;
					dout <= 1'b0;
				
				end
				else begin
				
					state <= s1;
					dout <= 1'b0;
				
				end
			
			end
			
			s3: begin
			
				if(din) begin
				
					state <= s0;
					dout <= 1'b1;
				
				end
				else begin
				
					state <= s0;
					dout <= 1'b0;
				
				end
			
			end
			
			default: begin
			
				state <= idle;
				dout <= 1'b0;
			
			end
	
		endcase
	
	end
	
endmodule
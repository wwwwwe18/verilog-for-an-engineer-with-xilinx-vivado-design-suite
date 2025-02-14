//*****************************************************
// Project		: Overlapping sequence detector - 111
// File			: section18_ex7_fsm_overlapping
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Overlapping sequence detector - 111
//*****************************************************

module fsm (

	input		clk, rst, din,
	output	reg	dout

);

	parameter idle = 0;
	parameter s0 = 1;
	parameter s1 = 2;
	parameter s2 = 3;
	
	reg [1:0] state = idle;
	
	// Mealy - 1 process methodology -> sync system
	
	always@(posedge clk) begin
	
		case(state)
		
			idle: begin
				
				if(rst == 1'b1)
					
					state <= idle;
					
				else
				
					state <= s0;
					
				dout <= 1'b0;
			
			end
			
			s0: begin
			
				if(din == 1'b1) begin
				
					state <= s1;
					dout <= 1'b0;
				
				end
				else begin
				
					state <= s0;
					dout <= 1'b0;
				
				end
			
			end
			
			s1: begin
			
				if(din == 1'b1) begin
				
					state <= s2;
					dout <= 1'b0;
				
				end
				else begin
				
					state <= s0;
					dout <= 1'b0;
				
				end
			
			end
			
			s2: begin
			
				if(din == 1'b1) begin
				
					state <= s2;
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
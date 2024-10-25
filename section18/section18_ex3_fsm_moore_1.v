//*****************************************************
// Project		: Moore FSM - 1 process methodology
// File			: section18_ex3_fsm_moore_1
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Moore FSM - 1 process methodology
//*****************************************************

module fsm (

	input		clk, rst, din,
	output	reg	dout

);

	parameter idle = 0;
	parameter s0 = 1;
	parameter s1 = 2;
	
	reg [1:0] state = idle, nstate = idle;
	
	// 1 process methodology
	always@(posedge clk) begin
	
		if(rst == 1'b1) begin
		
			state <= idle;
			dout <= 1'b0;
			
		end
		else begin
			
			case(state)
		
				idle	: begin
				
					state <= s0;
					dout <= 1'b0;
				
				end
				
				s0		: begin
				
					if(din == 1'b1)
					
						state <= s1;
						
					else
					
						state <= s0;
				
					dout = 1'b0;
				
				end
			
				s1		: begin
				
					if(din == 1'b1)
					
						state <= s0;
						
					else
					
						state <= s1;
						
					dout = 1'b1;
				
				end
				
				default	: begin
				
					state <= idle;
					dout <= 1'b0;
					
				end
			
			endcase
		
		end
	
	end

endmodule
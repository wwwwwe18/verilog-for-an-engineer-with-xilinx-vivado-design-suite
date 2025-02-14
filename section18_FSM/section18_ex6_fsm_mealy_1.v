//*****************************************************
// Project		: Mealy FSM - 1 process methodology
// File			: section18_ex6_fsm_mealy_1
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Mealy FSM - 1 process methodology
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
				
					dout <= 1'b0;
					state <= s0;
					
				end
				
				s0		: begin
				
					if(din) begin
					
						dout <= 1'b1;
						state <= s1;
						
					end
					else begin
					
						dout <= 1'b0;
						state <= s0;
					end
					
				end
				
				s1		: begin
				
					if(din) begin
					
						dout <= 1'b0;
						state <= s0;
						
					end
					else begin
						
						dout <= 1'b0;
						state <= s1;

					end
					
				end
				
				default	: begin
				
					dout <= 1'b0;
					state <= idle;
					
				end
		
			endcase
			
		end
		
	end

endmodule
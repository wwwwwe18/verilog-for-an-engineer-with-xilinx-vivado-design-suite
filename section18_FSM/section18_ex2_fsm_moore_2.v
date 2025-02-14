//*****************************************************
// Project		: Moore FSM - 2 process methodology
// File			: section18_ex2_fsm_moore_2
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Moore FSM - 2 process methodology
//*****************************************************

module fsm (

	input		clk, rst, din,
	output	reg	dout

);

	parameter idle = 0;
	parameter s0 = 1;
	parameter s1 = 2;
	
	reg [1:0] state = idle, nstate = idle;
	
	// 2 process methodology
	
	// Reset logic - sequential process
	always@(posedge clk) begin
	
		if(rst == 1'b1)
		
			state <= idle;
		
		else
	
			state <= nstate;
	
	end
	
	// Next state logic + output logic
	always@(state, din) begin
	
		case(state)
		
			idle	: begin
			
				nstate = s0;
				dout = 1'b0;
			
			end
			
			s0		: begin
			
				if(din == 1'b1)
				
					nstate = s1;
					
				else
				
					nstate = s0;
			
				dout = 1'b0;
			
			end
		
			s1		: begin
			
				if(din == 1'b1)
				
					nstate = s0;
					
				else
				
					nstate = s1;
					
				dout = 1'b1;
			
			end
			
			default	: begin
			
				nstate = idle;
				dout = 1'b0;
				
			end
		
		endcase
	
	end

endmodule
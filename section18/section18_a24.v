//*****************************************************
// Project		: Assignment 24
// File			: section18_a24
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: din 10010, dout 00001
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
	parameter s4 = 5;
	
	reg [2:0] state = idle, nstate = idle;
	
	// Moore FSM - 2 process methodology -> sync system
	
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
		
			idle: begin
			
				nstate = s0;
				dout = 1'b0;
			
			end
			
			s0: begin
			
				if(din)
				
					nstate = s1;
					
				else
				
					nstate = s0;
					
				dout = 1'b0;
			
			end
			
			s1: begin
			
				if(!din)
				
					nstate = s2;
					
				else
				
					nstate = s1;
					
				dout = 1'b0;
			
			end
			
			s2: begin
			
				if(!din)
				
					nstate = s3;
					
				else
				
					nstate = s1;
					
				dout = 1'b0;
			
			end
			
			s3: begin
			
				if(din)
				
					nstate = s4;
					
				else
				
					nstate = s0;
					
				dout = 1'b0;
			
			end
			
			s4: begin
			
				if(!din)
				
					nstate = s0;
					
				else
				
					nstate = s1;
					
				dout = 1'b1;
			
			end
			
			default: begin
			
				nstate = idle;
				dout = 1'b0;
			
			end
		
		endcase
	
	end

endmodule
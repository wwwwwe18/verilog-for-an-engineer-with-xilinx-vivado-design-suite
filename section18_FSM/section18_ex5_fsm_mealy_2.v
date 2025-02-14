//*****************************************************
// Project		: Mealy FSM - 2 process methodology
// File			: section18_ex5_fsm_mealy_2
// Editor		: Wenmei Wang
// Date			: 17/10/2024
// Description	: Mealy FSM - 2 process methodology
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
	
	// Output logic + NSD
	always@(state, din) begin
	
		case(state)
		
			idle	: begin
			
				dout = 1'b0;
				
				if(rst == 1'b1)
				
					nstate = idle;
				
				else
				
					nstate = s0;
				
			end
			
			s0		: begin
			
				if(din) begin
				
					dout = 1'b0;
					nstate = s1;
					
				end
				else begin
				
					dout = 1'b0;
					nstate = s0;
				end
				
			end
			
			s1		: begin
			
				if(din) begin
				
					dout = 1'b1;
					nstate = s0;
					
				end
				else begin
					
					dout = 1'b1;
					nstate = s1;

				end
				
			end
			
			default	: begin
			
				dout = 1'b0;
				nstate = idle;
				
			end
	
		endcase
	
	end

endmodule
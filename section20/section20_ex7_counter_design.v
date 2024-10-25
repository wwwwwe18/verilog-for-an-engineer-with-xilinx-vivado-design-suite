//*****************************************************
// Project		: Counter
// File			: section20_ex7_counter_design
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: Design
//*****************************************************

module counter (

	input			clk, rst,	// Active high
	input			ld,
	input	[3:0]	ldvalue,
	output	[3:0]	dout
	
);

	reg [3:0] temp;
	
	initial begin
	
		temp = 0;
		
	end
	
	//always@(posedge clk)	// Synchronus reset

	always@(posedge clk, posedge rst) begin	// Asynchronus reset
	
		if(rst == 1'b1) begin
		
			temp <= 4'b0000;
			
		end
		else begin
		
			if(ld == 1'b1)
			
				temp <= ldvalue;
				
			else
			
				temp <= temp + 1;
				
		end
		
	end

	assign dout = temp;

endmodule
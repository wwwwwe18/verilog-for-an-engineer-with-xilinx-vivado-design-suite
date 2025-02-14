//*****************************************************
// Project		: Up counter
// File			: section10_ex7_counter
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Up counter
//*****************************************************

module counter (

	input			clk, rst,	// Active high
	input			ld,			// Load
	input	[3:0]	ldvalue,
	output	[3:0]	dout

);

	reg	[3:0]	temp;
	
	initial begin
	
		temp = 0;
	
	end


	always@(posedge clk) begin
	
		if(rst == 1'b1) begin	// Sync reset
			
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
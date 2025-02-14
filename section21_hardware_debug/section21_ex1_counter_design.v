//*****************************************************
// Project		: Counter
// File			: section21_ex1_counter_design
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: Design
//*****************************************************

module counter (

	input				clk, rst,	// Active high
	output	reg	[3:0]	dout
	
);

	always@(posedge clk) begin
	
		if(rst == 1'b1)
		
			dout <= 0;
			
		else
		
			dout <= dout + 1;
		
	end

endmodule
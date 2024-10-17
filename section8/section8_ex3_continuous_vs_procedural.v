//*****************************************************
// Project		: Demonstration
// File			: section8_ex3_continuous_vs_procedural
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Demonstration
//*****************************************************

module tb;

	reg b = 0;
	reg a = 1;
	
	wire y;
	reg w;

	assign y = a & b;
	
	always@(a) begin
	
		w = a & b;
	
	end

endmodule
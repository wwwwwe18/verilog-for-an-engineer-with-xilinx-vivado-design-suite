//*****************************************************
// Project		: Demonstration reporting mechanism 1
// File			: section5_ex1_reporting1
// Editor		: Wenmei Wang
// Date			: 13/10/2024
// Description	: Demonstration reporting mechanism 1
//*****************************************************

module tb;

	reg [3:0] a = 4'h0;
	
	initial begin
	
		a <= 4'b1001;	// Non-blocking
		#10;
		$display("Value of a : %0b", a);

	end

endmodule
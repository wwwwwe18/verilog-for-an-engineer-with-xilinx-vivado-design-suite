//*****************************************************
// Project		: Demonstration reporting mechanism 2
// File			: section5_ex2_reporting2
// Editor		: Wenmei Wang
// Date			: 13/10/2024
// Description	: Demonstration reporting mechanism 2
//*****************************************************

module tb;

	reg [3:0] a = 4'h0;
	
	initial begin
	
		a = 4'b1001;	// Blocking
		#10;
		a = 4'b0001;
		$display("Value of a_d : %0d @ %0t", a, $time);	// Decimal : %0d, binary : %0b, hexa : %0x, octal : %0o, time : %0t, float : %0f
		#10;
		a = 4'b1010;
		$display("Value of a_d : %0d @ %0t", a, $time);
		#10;
		a = 4'b1010;
		$display("Value of a_d : %0d @ %0t", a, $time);

	end
	
	initial begin
	
		$monitor("Value of a_m : %0d @ %0t", a, $time);
	
	end

endmodule
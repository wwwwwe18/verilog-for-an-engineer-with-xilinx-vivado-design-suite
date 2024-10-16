//*****************************************************
// Project		: Demonstration datatypes
// File			: section5_ex3_datatypes
// Editor		: Wenmei Wang
// Date			: 13/10/2024
// Description	: Demonstration datatypes
//*****************************************************

`timescale 1ns / 1ps

module tb;

	// reg + integer
	// time realtime realtime
	
	reg		[7:0]	var1 = 8'hff;
	integer			var2 = -23;
	real			var3 = 12.56;
	time			t1 = 0;
	realtime		t2 = 0;

	initial begin
	
		$display("Value of var1 : %0d", var1);
		$display("Value of var2 : %0d", var2);
		$display("Value of var3 : %0f", var3);
		#10.67;
		t1 = $time;
		$display("Value of t1 : %0t", t1);
		t2 = $realtime;
		$display("Value of t2 : %0t", t2);
		
	end

endmodule
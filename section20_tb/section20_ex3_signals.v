//*****************************************************
// Project		: Generating stimulus for multibit signals
// File			: section20_ex3_signals
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg [3:0] data;
	integer i = 0;

	/*
	initial begin
	
		data = 4'b0100;
		#10;
		data = 4'b0101;
		#10;
	
	end
	*/
	
	// $urandom - unsigned
	// $random - signed
	// $random_range(min, max)
	
	// for (procedure)
	initial begin
	
		for(i = 0; i < 20; i = i + 1) begin
		
			data = $urandom;
			#20;
		
		end
	
	end

endmodule
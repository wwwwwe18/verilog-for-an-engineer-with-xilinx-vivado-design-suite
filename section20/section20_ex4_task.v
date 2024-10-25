//*****************************************************
// Project		: Understanding task
// File			: section20_ex4_task
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	reg [3:0] data;
	integer i = 0;
	
	task gen_ran_data;
	
		begin
		
			for(i = 0; i < 20; i = i + 1) begin
		
				data = $urandom();
				#20;
		
			end
		
		end
	
	endtask
	
	task data_with_range;
	
		begin
		
			for(i = 0; i < 20; i = i + 1) begin
		
				data = $urandom_range(0, 10);
				#10;
		
			end
		
		end
	
	endtask
	
	initial begin
	
		#20;
		gen_ran_data();
		#50;
		data_with_range();
	
	end
	
endmodule
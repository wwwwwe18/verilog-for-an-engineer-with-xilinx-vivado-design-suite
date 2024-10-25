//*****************************************************
// Project		: Accessing file
// File			: section22_ex1_file_w
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	integer file = 0;
	integer i = 0;
	
	initial begin
	
		file = $fopen("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", "w");	// Location, type of operation
		
		for(i = 0; i <= 25; i = i + 1) begin
		
			$fdisplay(file, "%x\t %x \t %x", i, 5 * i, i * i);	// File id, format spec %x, %b, source of data
		
		end
		
		$fclose(file);
	
	end

endmodule
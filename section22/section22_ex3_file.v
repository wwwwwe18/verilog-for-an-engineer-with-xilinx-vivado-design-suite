//*****************************************************
// Project		: Reading multiple columns from file
// File			: section22_ex3_file
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: Testbench
//*****************************************************

`timescale 1ns / 1ps

module tb;

	integer file = 0;
	integer i = 0;
	
	reg [6:0] mem [51:0];
	reg [6:0] arr1 [25:0];
	reg [6:0] arr2 [25:0];
	
	initial begin
	
		// Open a file
		file = $fopen("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", "w");	// Location, type of operation
		
		// Write operation
		for(i = 0; i <= 25; i = i + 1) begin
		
			$fdisplay(file, "%x\t %x", i, 5 * i);	// File id, format spec %x, %b, source of data
		
		end
		
		$fclose(file);
		
		file = $fopen("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", "r");
	
		// Read operation
		//$readmemh, $readmemb
		$readmemh("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", mem);	// Location, array
		
		$fclose(file);
		
		for(i = 0; i <= 25; i = i + 1) begin
		
			arr1[i] = mem[2*i];
			arr2[i] = mem[2*i+1];
		
		end
		
		for(i = 0; i <= 25; i = i + 1) begin

			$display("%d\t %d", arr1[i], arr2[i]);
		
		end
		
	end

endmodule
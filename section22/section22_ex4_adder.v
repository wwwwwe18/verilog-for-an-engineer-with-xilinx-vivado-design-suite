//*****************************************************
// Project		: Adder
// File			: section22_ex4_adder
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: Adder
//*****************************************************

`timescale 1ns / 1ps

module adder (

	input	[7:0]	a, b,
	output	[8:0]	y

);

	assign y = a + b;
	
endmodule

module tb();

	reg		[7:0]	a;
	reg		[7:0]	b;
	wire	[8:0]	y;
	
	adder dut (a,b,y);
	
	integer file;
	integer i = 0;
	reg [7:0] mem [74:0];
	reg [7:0] res;
	integer  err = 0;
	
initial begin

	file = $fopen("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", "w");
	
	for(i =0; i<25; i = i + 1) begin 
	
		$fdisplay(file, "%x\t %x\t %x", i, i, 2 * i);
		
	end
	$fclose(file);

	file = $fopen("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", "r");
	$readmemh("C:/Users/wangw/Documents/FPGA/Vitis_Vivado/project_7/project_7.srcs/sim_1/imports/section22/data.txt", mem);
	$fclose(file);

	#10;

	for(i = 0; i <= 24; i = i + 1) begin // a = 0, 3, 6, 9 ..... 3*i; b = 1, 4, 7, 10 ....; c = 2, 5, 8, 11...
	
		a = mem[3*i];
		b = mem[3*i + 1];
		res = mem[3*i + 2];
		#5;
		if(res != y)  begin
			err = err + 1;
		end
		#5;
		
	end

	if(err == 0)
	
		$display("------------TEST PASSED---------------");
		
	else
	
		$display("------------TEST FAILED---------------");
		
	end

endmodule
//*****************************************************
// Project		: Assignment 18
// File			: section14_a18_tb
// Editor		: Wenmei Wang
// Date			: 16/10/2024
// Description	: Testbench
//*****************************************************

module tb;

	reg		[7:0]	din;
	reg		[2:0]	sel;
	wire			y;
	
	mux81 dut (din, sel, y);
	
	initial begin
	
		din = 8'b0000_0000;
		sel = 3'b000;
	
	end
	
	initial begin
	
		din = 8'b1011_1101;
		#10;
	
		sel = 3'b000;
		#10;
		sel = 3'b001;
		#10;
		sel = 3'b010;
		#10;
		sel = 3'b011;
		#10;
		sel = 3'b100;
		#10;
		sel = 3'b101;
		#10;
		sel = 3'b110;
		#10;
		sel = 3'b111;
		#10;
		
		din = 8'b0110_0101;
		#10;
	
		sel = 3'b000;
		#10;
		sel = 3'b001;
		#10;
		sel = 3'b010;
		#10;
		sel = 3'b011;
		#10;
		sel = 3'b100;
		#10;
		sel = 3'b101;
		#10;
		sel = 3'b110;
		#10;
		sel = 3'b111;
		#10;
		
		$finish();
	
	end

endmodule
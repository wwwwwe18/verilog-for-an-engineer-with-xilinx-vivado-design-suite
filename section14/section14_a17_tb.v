//*****************************************************
// Project		: Assignment 17
// File			: section14_a17_tb
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Testbench
//*****************************************************

module tb;

	reg		[3:0]	a, b;
	reg				cin;
	wire	[3:0]	s;
	wire			cout;
	
	ripple_adder dut (a, b, cin, s, cout);
	
	initial begin
	
		cin = 1'b0;
		a = 4'd0;
		b = 4'd0;
	
	end
	
	initial begin
	
		a = 4'd0;
		b = 4'd1;
		#10;
		
		a = 4'd2;
		b = 4'd4;
		#10;
		
		a = 4'd6;
		b = 4'd8;
		#10;
		
		a = 4'd14;
		b = 4'd9;
		#10;
		
		cin = 1;
		
		a = 4'd8;
		b = 4'd3;
		#10;
		
		a = 4'd13;
		b = 4'd7;
		#10;
		
		$finish();
	
	end

endmodule
//*****************************************************
// Project		: Verilog operator 3
// File			: section5_ex6_operator3
// Editor		: Wenmei Wang
// Date			: 13/10/2024
// Description	: Verilog operator 3
//*****************************************************

// Arithmetic operators : + , - , *, / , %
// Logical perators     : ~, &, |, ^
// Expression operator  : && || ! > >= < <= == != //case if
// Shift				: >> <<
// Concat				: {,}
// Repetition operator	: {f{v}}
// Ternary operator		: ()? a : b;

module tb;

	reg [3:0]	din1 = 4'd5, din2 = 4'd6;
	reg	[4:0]	add = 0;
	integer		sub = 0;
	reg	[7:0]	mul = 0;
	
	reg	[3:0]	sdin1 = 0, sdin2 = 0;
	
	initial begin
	
		sdin1 = din1 >> 2;
		sdin2 = din2 << 1;
		$display("din1 : %b, din2 : %b", din1, din2);
		$display("sdin1 : %b, sdin2 : %b", sdin1, sdin2);
	
	end
	
	/*
	initial begin
	
		add = din1 + din2;
		sub = din1 - din2;
		mul = din1 * din2;
		#1;
		$display("Value of add : %0d, sub : %0d, mul : %0d", add, sub, mul);
		$display("din1 : %b, din2 : %b", din1, din2);
		$display("and : %0b, or : %0b, xor : %0b, xnor : %b", (din1 & din2), (din1 | din2), (din1 ^ din2), (din1 ~^ din2));
	
	end
	
	always@(*) begin
	
		if((din1 > din2))
	
	end
	*/

endmodule
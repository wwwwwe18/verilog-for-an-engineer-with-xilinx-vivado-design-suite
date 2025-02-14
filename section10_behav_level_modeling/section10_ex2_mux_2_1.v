//*****************************************************
// Project		: Combinational circuit 2:1 mux
// File			: section10_ex2_mux_2_1
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Combinational circuit 2:1 mux
//*****************************************************

module mux (

	input		a, b,
	input		sel,
	output	reg	x
	
);

	always@(*) begin

		if(sel == 1'b0) begin
			x = a;
		end
		else begin
			x = b;
		end
	  
	end
 
endmodule
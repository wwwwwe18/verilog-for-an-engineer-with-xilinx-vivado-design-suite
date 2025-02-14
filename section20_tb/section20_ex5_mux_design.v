//*****************************************************
// Project		: Mux 2:1
// File			: section20_ex5_mux_design
// Editor		: Wenmei Wang
// Date			: 18/10/2024
// Description	: Design
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

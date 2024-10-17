//*****************************************************
// Project		: Differences between IF ELSE and CASE
// File			: section10_ex5_mux_4_1_ifelse_case
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Differences between IF ELSE and CASE
//*****************************************************

module mux (

	input			a, b, c, d,
	input	[1:0]	sel,
	output	reg		y
	
);

	/*
	always@(*) begin
	
		if(sel == 2'b00) begin
			y = a;
		end
		else if (sel == 2'b01) begin
			y = b; 
		end
		else if (sel == 2'b10)
			y = c;
		else
			y = d;
		
	end
	*/
	
	always@(*) begin
	
		case(sel)
		
			2'b00 : y = a;
			2'b01 : y = b;
			2'b10 : y = c;
			2'b11 : y = d;
			default : y = a;
			
		endcase
		
	end

endmodule
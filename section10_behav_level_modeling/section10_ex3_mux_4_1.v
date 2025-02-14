//*****************************************************
// Project		: Combinational circuit 4:1 mux
// File			: section10_ex3_mux_4_1
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Combinational circuit 4:1 mux
//*****************************************************

module mux (

	input			a, b, c, d,
	input	[1:0]	sel,
	output	reg		y
	
);

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

endmodule
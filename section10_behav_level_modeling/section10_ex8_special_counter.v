//*****************************************************
// Project		: Special counter
// File			: section10_ex8_special_counter
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Special counter
//*****************************************************

module counter (

	input				clk, rst,
	output	reg	[1:0]	doutr, doutj	// Ring counter, Johnson counter

);

	// Ring counter
	always@(posedge clk) begin
	
		if(rst == 1'b1) begin
		
			doutr <= 2'b01;
		
		end
		else begin
		
			doutr[1] <= doutr[0];
			doutr[0] <= doutr[1];
		
		end
	
	end
	
	// Johnson counter
	always@(posedge clk) begin
	
		if(rst == 1'b1) begin
		
			doutj <= 2'b00;
		
		end
		else begin
		
			doutj[1] <= ~doutj[0];
			doutj[0] <= doutj[1];
		
		end
	
	end


endmodule
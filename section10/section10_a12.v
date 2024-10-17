//*****************************************************
// Project		: Assignment 12
// File			: section10_a12
// Editor		: Wenmei Wang
// Date			: 14/10/2024
// Description	: Assignment 12
//*****************************************************

module priority_encoder (

	input		[7:0]	y,
	output	reg	[2:0]	out,
	output				d

);

	always@(*) begin
	
		case(y)

			8'b0000_0001: out = 3'b000;
			8'b0000_001x: out = 3'b001;
			8'b0000_01xx: out = 3'b010;
			8'b0000_1xxx: out = 3'b011;
			8'b0001_xxxx: out = 3'b100;
			8'b001x_xxxx: out = 3'b101;
			8'b01xx_xxxx: out = 3'b110;
			8'b1xxx_xxxx: out = 3'b111;
			default: out = 3'b000;
		
		endcase
	
	end
	
	assign d = (y != 8'b0000_0000);

endmodule
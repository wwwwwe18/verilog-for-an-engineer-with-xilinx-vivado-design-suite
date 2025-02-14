//*****************************************************
// Project		: Assignment 29
// File			: section20_a29_design
// Editor		: Wenmei Wang
// Date			: 19/10/2024
// Description	: 1:4 demux - design
//*****************************************************

module demux_1_2 (

	input		d, sel, rst,
	output	reg	y1, y2

);

	always@(*) begin
	
		if(rst == 1'b1) begin
		
			y1 = 1'b0;
			y2 = 1'b0;
		
		end
		else begin
		
			case(sel)
			
				1'b0: begin
				
					y1 = d;
					y2 = 1'b0;
				
				end
				
				1'b1: begin
				
					y1 = 1'b0;
					y2 = d;
				
				end
				
				default: begin
				
					y1 = 1'b0;
					y2 = 1'b0;
				
				end
			
			endcase
		
		end
	
	end

endmodule

module demux_1_4 (

	input			d, rst,
	input	[1:0]	sel,
	output			y1, y2, y3, y4

);

	demux_1_2 d1 (d, sel[1], rst, t1, t2);
	
	demux_1_2 d2 (t1, sel[0], rst, y1, y2);
	demux_1_2 d3 (t2, sel[0], rst, y3, y4);

endmodule
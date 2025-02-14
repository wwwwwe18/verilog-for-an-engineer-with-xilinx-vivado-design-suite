//*****************************************************
// Project		: Inverter
// File			: section13_ex1_inv
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: Inverter
//*****************************************************

module inv (

	input	vin,
	output	vout

);

	supply1 vdd;
	supply0 gnd;
	
	pmos p1 (vout, vdd, vin);
	nmos n1 (vout, gnd, vin);

endmodule
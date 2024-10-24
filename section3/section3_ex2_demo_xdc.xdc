//*****************************************************
// Project		: Demo
// File			: section3_ex2_demo_xdc
// Editor		: Wenmei Wang
// Date			: 15/10/2024
// Description	: XDC
//*****************************************************

set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
 
 
set_property PACKAGE_PIN J2 [get_ports {a[4]}]
set_property PACKAGE_PIN J3 [get_ports {a[5]}]
set_property PACKAGE_PIN K2 [get_ports {a[7]}]
set_property PACKAGE_PIN K1 [get_ports {a[6]}]
set_property PACKAGE_PIN J4 [get_ports {a[3]}]
set_property PACKAGE_PIN H4 [get_ports {a[2]}]
set_property PACKAGE_PIN G4 [get_ports {a[1]}]
set_property PACKAGE_PIN G3 [get_ports {a[0]}]
set_property PACKAGE_PIN B1 [get_ports {b[5]}]
set_property PACKAGE_PIN B3 [get_ports {b[7]}]
set_property PACKAGE_PIN A1 [get_ports {b[4]}]
set_property PACKAGE_PIN A4 [get_ports {b[3]}]
set_property PACKAGE_PIN B2 [get_ports {b[6]}]
set_property PACKAGE_PIN A3 [get_ports {b[2]}]
set_property PACKAGE_PIN C4 [get_ports {b[1]}]
set_property PACKAGE_PIN B4 [get_ports {b[0]}]
set_property PACKAGE_PIN C5 [get_ports {c[6]}]
set_property PACKAGE_PIN B6 [get_ports {c[4]}]
set_property PACKAGE_PIN F5 [get_ports {c[5]}]
set_property PACKAGE_PIN C6 [get_ports {c[7]}]
set_property PACKAGE_PIN A6 [get_ports {c[1]}]
set_property PACKAGE_PIN B7 [get_ports {c[3]}]
set_property PACKAGE_PIN A5 [get_ports {c[2]}]
set_property PACKAGE_PIN C7 [get_ports {c[0]}]
set_property PACKAGE_PIN H2 [get_ports {d[4]}]
set_property PACKAGE_PIN C2 [get_ports {d[6]}]
set_property PACKAGE_PIN G1 [get_ports {d[7]}]
set_property PACKAGE_PIN C1 [get_ports {d[5]}]
set_property PACKAGE_PIN G2 [get_ports {d[3]}]
set_property PACKAGE_PIN F1 [get_ports {d[1]}]
set_property PACKAGE_PIN E1 [get_ports {d[2]}]
set_property PACKAGE_PIN E5 [get_ports {d[0]}]
set_property PACKAGE_PIN L3 [get_ports {dout[2]}]
set_property PACKAGE_PIN N1 [get_ports {dout[4]}]
set_property PACKAGE_PIN M3 [get_ports {dout[7]}]
set_property PACKAGE_PIN M2 [get_ports {dout[6]}]
set_property PACKAGE_PIN N2 [get_ports {dout[5]}]
set_property PACKAGE_PIN K3 [get_ports {dout[3]}]
set_property PACKAGE_PIN L1 [get_ports {dout[1]}]
set_property PACKAGE_PIN M1 [get_ports {dout[0]}]
set_property PACKAGE_PIN M14 [get_ports {e[7]}]
set_property PACKAGE_PIN R11 [get_ports {e[4]}]
set_property PACKAGE_PIN K17 [get_ports {e[6]}]
set_property PACKAGE_PIN K18 [get_ports {e[5]}]
set_property PACKAGE_PIN L15 [get_ports {e[1]}]
set_property PACKAGE_PIN L14 [get_ports {e[3]}]
set_property PACKAGE_PIN L16 [get_ports {e[2]}]
set_property PACKAGE_PIN M18 [get_ports {e[0]}]
set_property PACKAGE_PIN R1 [get_ports {f[5]}]
set_property PACKAGE_PIN M4 [get_ports {f[3]}]
set_property PACKAGE_PIN T1 [get_ports {f[4]}]
set_property PACKAGE_PIN M6 [get_ports {f[7]}]
set_property PACKAGE_PIN N6 [get_ports {f[6]}]
set_property PACKAGE_PIN N4 [get_ports {f[2]}]
set_property PACKAGE_PIN P2 [get_ports {f[1]}]
set_property PACKAGE_PIN R2 [get_ports {f[0]}]
set_property PACKAGE_PIN L6 [get_ports {g[0]}]
set_property PACKAGE_PIN V2 [get_ports {g[5]}]
set_property PACKAGE_PIN V4 [get_ports {g[7]}]
set_property PACKAGE_PIN U2 [get_ports {g[6]}]
set_property PACKAGE_PIN U4 [get_ports {g[4]}]
set_property PACKAGE_PIN U3 [get_ports {g[3]}]
set_property PACKAGE_PIN U1 [get_ports {g[2]}]
set_property PACKAGE_PIN V1 [get_ports {g[1]}]
set_property PACKAGE_PIN V7 [get_ports {h[7]}]
set_property PACKAGE_PIN R5 [get_ports {h[4]}]
set_property PACKAGE_PIN V6 [get_ports {h[6]}]
set_property PACKAGE_PIN R6 [get_ports {h[5]}]
set_property PACKAGE_PIN K6 [get_ports {h[3]}]
set_property PACKAGE_PIN K5 [get_ports {h[2]}]
set_property PACKAGE_PIN L4 [get_ports {h[1]}]
set_property PACKAGE_PIN L5 [get_ports {h[0]}]
set_property PACKAGE_PIN T8 [get_ports {sel[0]}]
set_property PACKAGE_PIN U8 [get_ports {sel[2]}]
set_property PACKAGE_PIN R8 [get_ports {sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dout[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {e[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {f[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {h[0]}]
set_property PACKAGE_PIN E3 [get_ports clk]
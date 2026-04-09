//Verilog HDL for "ESE_5700", "my_xor" "functional"

`resetall
`celldefine
`delay_mode_path
`timescale 1ns/10ps
module my_xor (output wire out, input wire i1, input wire i2);
	xor(out, i1, i2);
endmodule
`endcelldefine

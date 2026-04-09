//Verilog HDL for "ESE_5700", "my_nand" "functional"

`resetall
`celldefine
`delay_mode_path
`timescale 1ns/10ps
module my_nand (output wire out, input wire i1, input wire i2);
	nand(out, i1, i2);
endmodule
`endcelldefine
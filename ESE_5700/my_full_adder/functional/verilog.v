//Verilog HDL for "ESE_5700", "my_full_adder" "functional"

`resetall
`celldefine
`delay_mode_path
`timescale 1ns/10ps
module my_full_adder (output wire S, output wire C_out, input wire A, input wire B, input wire C_in);
	wire d, e, f, g, h, i;
	my_xor my_xor0(d, A, B);
	my_xor my_xor1(S, d, C_in);
	my_nand my_nand0(e, A, B);
	my_nand my_nand1(f, A, C_in);
	my_nand my_nand2(g, B, C_in);
	my_nand my_nand3(h, e, f);
	my_inv my_inv0(i, h);
	my_nand my_nand4(C_out, i, g);
endmodule
`endcelldefine
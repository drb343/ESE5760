//Verilog HDL for "ESE_5700", "my_d_flip_flop" "functional"

//`resetall
//`celldefine
//`delay_mode_path
//`timescale 1ns/10ps
//module my_d_flip_flop (output trireg Q, input wire D, input wire CLKin);
//	wire a, b, d, e; 
//	trireg c;
//	my_clk my_clk1(CLK1, CLK2, CLKin);
//	my_inv my_inv0(a, CLK1);
//	pmos pmos0(b, D, a);
//	nmos nmos0(b, D, CLK1);
//	my_inv my_inv1(c, b);
//	my_inv my_inv2(d, CLK2);
//	pmos pmos1(e, c, d);
//	nmos nmos1(e, c, CLK2);
//	my_inv my_inv3(Q, e);
//endmodule
//`endcelldefine

`resetall
`celldefine
`delay_mode_path
`timescale 1ns/10ps

module my_d_flip_flop (
    output reg Q,
    input wire D,
    input wire CLKin
);

    // Two-phase clocks generated INSIDE this module
    wire CLK1, CLK2;

    // Instantiate your clock generator here
    my_clk clock_gen (
        .CLK1(CLK1),
        .CLK2(CLK2),
        .CLKin(CLKin)
    );

    // Internal dynamic storage node (acts like a capacitor)
    trireg (medium) #(1,1,50) x;

    // ----------------------------------------------------
    //  Dynamic latch behavior (functional description)
    // ----------------------------------------------------

    // Sampling phase (CLK1 high)
    always @(posedge CLK1) begin
        x <= D;           // sample input
    end

    // Transfer / output phase (CLK2 high)
    always @(posedge CLK2) begin
        Q <= x;           // update output from stored node
    end

endmodule

`endcelldefine


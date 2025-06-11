`include "inv.v"

module AND (
    output c,
    input a, b
);
    wire x, y;

    // power 
    supply1 vdd;
    supply0 gnd;

    // pull up network
    pmos Q1(y, vdd, a);
    pmos Q2(y, vdd, b);

    // pull down network
    nmos Q3(y, x, a);
    nmos Q4(x, gnd, b);

    // final output through not gate
    inverter inv_net(.a(y), .b(c));

endmodule
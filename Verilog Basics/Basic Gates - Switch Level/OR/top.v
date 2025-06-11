`include "inv.v"

module OR (
    output c,
    input a,b
);
    wire x, y;
    
    // power
    supply1 vdd;
    supply0 gnd;

    // pull up network
    pmos Q1(x, vdd, a);
    pmos Q2(y, x, b);

    // pull down network
    nmos Q3(y, gnd, a);
    nmos Q4(y, gnd, b);

    // output through inverter
    inverter inv_net(.a(y), .b(c));
    
endmodule
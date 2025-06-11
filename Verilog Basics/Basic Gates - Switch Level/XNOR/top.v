`include "inv.v"

module XNOR (
    output c,
    input a, b
);
    wire i, j, l, m, n;
    
    // power
    supply1 vdd;
    supply0 gnd;

    // inverting inputs
    inverter inv_net1(.a(a), .b(i));
    inverter inv_net2(.a(b), .b(j));

    // pull up network
    pmos Q1(l, vdd, a);
    pmos Q2(l, vdd, b);
    pmos Q3(k, l, i);
    pmos Q4(k, l, j);

    // pull down network
    nmos Q5(k, m, a);
    nmos Q6(m, gnd, b);
    nmos Q7(k, n, i);
    nmos Q8(n, gnd, j);

    // output through inverter
    inverter inv_net3(.a(k), .b(c));

endmodule
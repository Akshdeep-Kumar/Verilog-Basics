`include "inv.v"

module XOR (
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
    pmos Q3(c, l, i);
    pmos Q4(c, l, j);

    // pull down network
    nmos Q5(c, m, a);
    nmos Q6(m, gnd, b);
    nmos Q7(c, n, i);
    nmos Q8(n, gnd, j);

endmodule
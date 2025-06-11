module NAND (
    output c,
    input a, b
);
    wire x;

    // power 
    supply1 vdd;
    supply0 gnd;

    // pull up network
    pmos Q1(c, vdd, a);
    pmos Q2(c, vdd, b);

    // pull down network
    nmos Q3(c, x, a);
    nmos Q4(x, gnd, b);

endmodule
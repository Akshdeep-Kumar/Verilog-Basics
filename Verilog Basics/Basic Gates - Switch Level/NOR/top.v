module NOR (
    output c,
    input a,b
);
    wire x;
    
    // power
    supply1 vdd;
    supply0 gnd;

    // pull up network
    pmos Q1(x, vdd, a);
    pmos Q2(c, x, b);

    // pull down network
    nmos Q3(c, gnd, a);
    nmos Q4(c, gnd, b);
    
endmodule
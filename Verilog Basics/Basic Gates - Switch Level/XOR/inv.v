module inverter (
    input a,
    output b
);
    // power
    supply1 vdd;
    supply0 gnd;
    
    // pull up network
    pmos Q1(b, vdd, a);

    // pull down network
    nmos Q2(b, gnd, a);
endmodule
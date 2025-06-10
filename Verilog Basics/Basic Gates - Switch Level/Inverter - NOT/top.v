module inverter (
    input a,
    output b
);
    supply1 vdd;
    supply0 gnd;

    pmos Q1(b, vdd, a);
    nmos Q2(b, gnd, a);
endmodule
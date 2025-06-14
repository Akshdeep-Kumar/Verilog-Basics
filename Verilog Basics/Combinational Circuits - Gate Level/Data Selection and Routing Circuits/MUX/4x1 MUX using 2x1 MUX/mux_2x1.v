module mux_2x1 (
    output y,
    input a, b, s
);
    wire sn, i, j;
    not G1(sn, s);
    and G2(i, a, sn);
    and G3(j, b, s);
    or G4(y, i, j);


endmodule
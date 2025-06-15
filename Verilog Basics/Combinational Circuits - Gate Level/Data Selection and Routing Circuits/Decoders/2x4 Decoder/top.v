module dec_2x4 (
    output [3:0] y,
    input [1:0] d
);
    wire d1_n, d0_n;
    not N1(d1_n, d[1]);
    not N2(d0_n, d[0]);
    and G1(y[0], d1_n, d0_n);
    and G2(y[1], d1_n, d[0]);
    and G3(y[2], d[1], d0_n);
    and G4(y[3], d[1], d[0]);

endmodule
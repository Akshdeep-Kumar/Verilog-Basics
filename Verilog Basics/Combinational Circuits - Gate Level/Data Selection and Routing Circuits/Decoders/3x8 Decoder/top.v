module dec_3x8 (
    output [7:0] y,
    input [2:0] d
);
    wire d0_n, d1_n, d2_n;
    not N1(d0_n, d[0]);
    not N2(d1_n, d[1]);
    not N3(d2_n, d[2]);

    and G1(y[0], d2_n, d1_n, d0_n);
    and G2(y[1], d2_n, d1_n, d[0]);
    and G3(y[2], d2_n, d[1], d0_n);
    and G4(y[3], d2_n, d[1], d[0]);
    and G5(y[4], d[2], d1_n, d0_n);
    and G6(y[5], d[2], d1_n, d[0]);
    and G7(y[6], d[2], d[1], d0_n);
    and G8(y[7], d[2], d[1], d[0]);

endmodule
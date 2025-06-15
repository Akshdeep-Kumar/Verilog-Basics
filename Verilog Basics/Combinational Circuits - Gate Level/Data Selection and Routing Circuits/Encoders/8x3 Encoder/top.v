module enc_8x3 (
    output [2:0] y,
    input [7:0] d
);
    or G1(y[0], d[1], d[3], d[5], d[7]);
    or G2(y[1], d[2], d[3], d[6], d[7]);
    or G3(y[2], d[4], d[5], d[6], d[7]);

endmodule
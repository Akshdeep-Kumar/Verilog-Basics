module enc_4x2 (
    output [1:0] y,
    input [3:0] d
);
    or G1(y[0], d[1], d[3]);
    or G2(y[1], d[2], d[3]);

endmodule
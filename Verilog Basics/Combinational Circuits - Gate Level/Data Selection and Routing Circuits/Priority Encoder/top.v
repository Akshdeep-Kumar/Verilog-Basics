module p_enc (
    output [1:0] y,
    output v,
    input [3:0] d
);
    wire d2_n, i;
    not N1(d2_n, d[2]);
    or O1(y[1], d[3], d[2]);
    and A1(i, d2_n, d[1]);
    or O2(y[0], d[3], i);
    or O3(v, d[3], d[2], d[1], d[0]);

endmodule
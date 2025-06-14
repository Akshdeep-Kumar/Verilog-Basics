module demux_1x2 (
    output [1:0] y,
    input a, s
);
    wire sn;
    not G1(sn, s);
    and G2(y[0], a, sn);
    and G3(y[1], a, s);

endmodule
`include "mux_2x1.v"

module mux_4x1 (
    output y,
    input [3:0] a,
    input [1:0] s

);
    wire i, j;
    mux_2x1 M1(i, a[0], a[1], s[0]);
    mux_2x1 M2(j, a[2], a[3], s[0]);
    mux_2x1 M3(y, i, j, s[1]);

endmodule
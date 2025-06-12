`include "fa.v"

module four_bit_AS (
    output [3:0] s,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
);
    wire c0, c1, c2, i, j, k, l;
    xor G0(i, b[0], cin);
    xor G1(j, b[1], cin);
    xor G2(k, b[2], cin);
    xor G3(l, b[3], cin);

    full_adder FA0(s[0], c0, a[0], i, cin);
    full_adder FA1(s[1], c1, a[1], j, c0);
    full_adder FA2(s[2], c2, a[2], k, c1);
    full_adder FA3(s[3], cout, a[3], l, c2);

endmodule
`include "fa.v"

module four_bit_AS (
    output [3:0] s,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
);
    wire c0, c1, c2;

    full_adder FA0(s[0], c0, a[0], b[0], cin);
    full_adder FA1(s[1], c1, a[1], b[1], c0);
    full_adder FA2(s[2], c2, a[2], b[2], c1);
    full_adder FA3(s[3], cout, a[3], b[3], c2);

endmodule
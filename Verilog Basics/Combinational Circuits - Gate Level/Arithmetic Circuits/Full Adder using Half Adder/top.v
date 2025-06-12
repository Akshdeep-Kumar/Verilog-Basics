`include "ha.v"

module full_adder (
    output sum, carry,
    input a, b, c
);
    wire i, j, k;

    half_adder HA1(i, j, a, b);
    half_adder HA2(sum, k, i, c);
    or(carry, j, k);
endmodule
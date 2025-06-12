`include "hs.v"

module full_sub (
    output diff, borr,
    input a, b, c
);
    wire i, j, k;
    half_sub HS1(i, j, a, b);
    half_sub HS2(diff, k, i, c);
    or(borr, k, j);
    
endmodule
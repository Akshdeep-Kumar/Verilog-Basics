module full_adder (
    output sum, carry,
    input a, b, c
);
    wire i, j, k;

    // sum
    xor(i, a, b);
    xor(sum, i, c);

    // carry
    and(j, a, b);
    and(k, i, c);
    or(carry, j, k);

endmodule
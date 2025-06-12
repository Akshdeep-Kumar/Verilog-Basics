module half_sub (
    output diff, borr,
    input a, b
);
    wire i, j, k;
    nand N1(i, a, b);
    nand N2(j, a, i);
    nand N3(k, b, i);
    nand N4(diff, j, k);
    nand N5(borr, k, k);

endmodule
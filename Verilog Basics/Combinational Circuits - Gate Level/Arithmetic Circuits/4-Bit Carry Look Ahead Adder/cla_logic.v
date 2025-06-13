module cla_logic (
    output [3:0] c_out,
    input [3:0] gin,
    input [3:0] pin,
    input c_in
);
    wire i, j, k, l;
    
    // c0
    and A0(i, pin[0], c_in);
    or O0(c_out[0], i, gin[0]);

    // c1
    and A1(j, pin[1], c_out[0]);
    or O1(c_out[1], j, gin[1]);

    // c2
    and A2(k, pin[2], c_out[1]);
    or O2(c_out[2], k, gin[2]);

    // c3
    and A3(l, pin[3], c_out[2]);
    or O3(c_out[3], l, gin[3]);

endmodule
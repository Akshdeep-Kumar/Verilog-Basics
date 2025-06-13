`include "cla_logic.v"

module CLAA (
    output [3:0] s,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
);
    wire [3:0] g, p, c;

    // Gi
    and G0(g[0], a[0], b[0]);
    and G1(g[1], a[1], b[1]);
    and G2(g[2], a[2], b[2]);
    and G3(g[3], a[3], b[3]);

    // Pi using OR instead of XOR minimizing transistor count
    xor P0(p[0], a[0], b[0]);
    xor P1(p[1], a[1], b[1]);
    xor P2(p[2], a[2], b[2]);
    xor P3(p[3], a[3], b[3]);

    // carry look ahead logic circuit
    cla_logic CLAL(c, g, p, cin);

    // finally sum
    xor S0(s[0], p[0], cin);
    xor S1(s[1], p[1], c[0]);
    xor S2(s[2], p[2], c[1]);
    xor S3(s[3], p[3], c[2]);

    assign cout = c[3];

endmodule
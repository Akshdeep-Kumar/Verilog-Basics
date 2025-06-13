`include "fba.v"

module bcd_add (
    output [3:0] sum,
    output c_out,
    input [3:0] ain,
    input [3:0] bin,
    input c_in

);
    wire [3:0] si;
    wire k, i, j, l;
    wire [3:0] six;

    four_bit_AS FBA1(si, k, ain, bin, c_in);
    and G1(i, si[3], si[2]);
    and G2(j, si[3], si[1]);
    or G3(l, i, j);
    assign six = {1'b0, l, l, 1'b0};
    four_bit_AS FBA2(sum, c_out, si, six, 1'b0);


endmodule
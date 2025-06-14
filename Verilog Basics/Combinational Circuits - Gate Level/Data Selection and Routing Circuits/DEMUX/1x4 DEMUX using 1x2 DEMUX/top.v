`include "demux_1x2.v"

module demux_1x4 (
    output [3:0] y,
    input a,
    input [1:0] s
);
    wire [1:0] i;
    demux_1x2 D1(i, a, s[1]);
    demux_1x2 D2(y[1:0], i[0], s[0]);
    demux_1x2 D3(y[3:2], i[1], s[0]);
    
endmodule
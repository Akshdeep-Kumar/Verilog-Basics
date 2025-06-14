`timescale 1ns/1ps

module tb_demux_1x2;
    reg a, s;
    wire [1:0] y;

    demux_1x2 DUT(y, a, s);

    initial begin
        $dumpfile("demux_1x2.vcd");
        $dumpvars(0, tb_demux_1x2);
        $display("Time\tA S | Y[1] Y[0]");
        $monitor("%g\t%b %b |  %b    %b", $time, a, s, y[1], y[0]);

        // Test cases for all input combinations
        a = 0; s = 0; #10; // Expect y = 00
        a = 0; s = 1; #10; // Expect y = 00
        a = 1; s = 0; #10; // Expect y = 01
        a = 1; s = 1; #10; // Expect y = 10

        $finish;
    end
endmodule

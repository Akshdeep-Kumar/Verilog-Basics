`timescale 1ns/1ps

module tb_demux_1x4;
    reg a;
    reg [1:0] s;
    wire [3:0] y;

    demux_1x4 DUT(y, a, s);

    initial begin
        $dumpfile("demux_1x4.vcd");
        $dumpvars(0, tb_demux_1x4);
        $display("Time\tA  S  | Y[3] Y[2] Y[1] Y[0]");
        $monitor("%g\t%b  %b |   %b     %b     %b     %b", $time, a, s, y[3], y[2], y[1], y[0]);

        // All input combinations
        a = 0; s = 2'b00; #10; // Expect y = 0000
        a = 0; s = 2'b01; #10; // Expect y = 0000
        a = 0; s = 2'b10; #10; // Expect y = 0000
        a = 0; s = 2'b11; #10; // Expect y = 0000

        a = 1; s = 2'b00; #10; // Expect y = 0001
        a = 1; s = 2'b01; #10; // Expect y = 0010
        a = 1; s = 2'b10; #10; // Expect y = 0100
        a = 1; s = 2'b11; #10; // Expect y = 1000

        $finish;
    end
endmodule

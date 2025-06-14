`timescale 1ns/1ps

module tb_mux_2x1;
    reg a, b, s;
    wire y;

    mux_2x1 DUT(y, a, b, s);

    initial begin
        $dumpfile("mux_2x1.vcd");
        $dumpvars(0, tb_mux_2x1);
        $display("Time\tA B S | Y");
        $monitor("%g\t%b %b %b | %b", $time, a, b, s, y);

        // Test all 8 input combinations
        a = 0; b = 0; s = 0; #10;
        a = 0; b = 1; s = 0; #10;
        a = 1; b = 0; s = 0; #10;
        a = 1; b = 1; s = 0; #10;
        a = 0; b = 0; s = 1; #10;
        a = 0; b = 1; s = 1; #10;
        a = 1; b = 0; s = 1; #10;
        a = 1; b = 1; s = 1; #10;

        $finish;
    end
endmodule

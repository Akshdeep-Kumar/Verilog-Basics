`timescale 1ns/1ps

module tb_mux_4x1;
    reg [3:0] a;
    reg [1:0] s;
    wire y;

    mux_4x1 DUT(y, a, s);

    initial begin
        $dumpfile("mux_4x1.vcd");
        $dumpvars(0, tb_mux_4x1);
        $display("Time\t  A    S | Y");
        $monitor("%g\t%04b  %02b | %b", $time, a, s, y);

        // Test all 4 select inputs for different 'a' combinations
        a = 4'b0001; s = 2'b00; #10;  // y = a[0] = 1
        a = 4'b0010; s = 2'b01; #10;  // y = a[1] = 1
        a = 4'b0100; s = 2'b10; #10;  // y = a[2] = 1
        a = 4'b1000; s = 2'b11; #10;  // y = a[3] = 1

        // Full coverage for all select inputs with all bits = 1
        a = 4'b1111; s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;

        // Edge case: all a = 0
        a = 4'b0000; s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;

        $finish;
    end
endmodule

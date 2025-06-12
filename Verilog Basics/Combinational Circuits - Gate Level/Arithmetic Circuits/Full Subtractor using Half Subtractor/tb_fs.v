`timescale 1ns/1ps

module tb_full_sub;

    reg A, B, C;
    wire DIFF, BORR;

    full_sub uut (.diff(DIFF), .borr(BORR), .a(A), .b(B), .c(C));

    initial begin
        A = 0;
        B = 0;
        C = 0;
    end

    always #5 A = ~A;

    always #11 B = ~B;

    always #8 C = ~C;

    initial begin
        $dumpfile("full_sub.vcd");  
        $dumpvars(0, tb_full_sub);  

        #50 $finish;
    end

    initial begin
        $monitor("Time = %0t ns: A=%b, B=%b, C=%b → DIFF=%b, BORR=%b", $time, A, B, C, DIFF, BORR);
    end

endmodule
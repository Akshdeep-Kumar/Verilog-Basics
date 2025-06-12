`timescale 1ns/1ps

module tb_half_sub;

    reg A, B;
    wire DIFF, BORR;

    half_sub uut (.diff(DIFF), .borr(BORR), .a(A), .b(B));

    initial begin
        A = 0;
        B = 0;
    end

    always #7 A = ~A;

    always #11 B = ~B;

    initial begin
        $dumpfile("half_sub.vcd");  
        $dumpvars(0, tb_half_sub);  

        #50 $finish;
    end

    initial begin
        $monitor("Time = %0t ns: A=%b, B=%b → DIFF=%b, BORR=%b", $time, A, B, DIFF, BORR);
    end

endmodule
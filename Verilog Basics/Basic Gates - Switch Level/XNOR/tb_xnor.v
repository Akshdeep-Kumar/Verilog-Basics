`timescale 1ns / 1ps

module tb_xnor;
    reg A, B;          
    wire Y;           

    XNOR uut (.a(A), .b(B), .c(Y));

    initial begin
        A = 0;
        B = 0;
    end

    always #7 A = ~A;

    always #11 B = ~B;

    initial begin
        $dumpfile("xnor.vcd");  
        $dumpvars(0, tb_xnor);  

        #50 $finish;
    end

    initial begin
        $monitor("Time = %0t ns: A=%b, B=%b → Y=%b", $time, A, B, Y);
    end
endmodule
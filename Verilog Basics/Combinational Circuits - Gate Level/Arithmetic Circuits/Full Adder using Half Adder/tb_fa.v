`timescale 1ns/1ps

module tb_full_adder;

    reg A, B, C;
    wire SUM, CARRY;

    full_adder uut (.sum(SUM), .carry(CARRY), .a(A), .b(B), .c(C));

    initial begin
        A = 0;
        B = 0;
        C = 0;
    end

    always #5 A = ~A;

    always #11 B = ~B;

    always #8 C = ~C;

    initial begin
        $dumpfile("full_adder.vcd");  
        $dumpvars(0, tb_full_adder);  

        #50 $finish;
    end

    initial begin
        $monitor("Time = %0t ns: A=%b, B=%b, C=%b → SUM=%b, CARRY=%b", $time, A, B, C, SUM, CARRY);
    end

endmodule
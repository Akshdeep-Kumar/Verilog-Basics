`timescale 1ns/1ps

module tb_half_adder;

    reg A, B;
    wire SUM, CARRY;

    half_adder uut (.sum(SUM), .carry(CARRY), .a(A), .b(B));

    initial begin
        A = 0;
        B = 0;
    end

    always #7 A = ~A;

    always #11 B = ~B;

    initial begin
        $dumpfile("half_adder.vcd");  
        $dumpvars(0, tb_half_adder);  

        #50 $finish;
    end

    initial begin
        $monitor("Time = %0t ns: A=%b, B=%b → SUM=%b, CARRY=%b", $time, A, B, SUM, CARRY);
    end

endmodule
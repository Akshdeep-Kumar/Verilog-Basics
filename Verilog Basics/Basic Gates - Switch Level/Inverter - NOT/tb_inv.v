`timescale 1ns / 1ps
// `include "top.v"

module tb_inverter;
    reg A;          
    wire Y;         

    inverter uut (.b(Y), .a(A));

    initial begin

        $dumpfile("inverter.vcd");  
        $dumpvars(0, tb_inverter);  


        A = 0; #10;  
        A = 1; #10;  
        A = 0; #10;  
        A = 1; #10; 
        $finish;    
    end

    initial begin
        $monitor("Time = %0t, A = %b, Y = %b", $time, A, Y);
    end
endmodule
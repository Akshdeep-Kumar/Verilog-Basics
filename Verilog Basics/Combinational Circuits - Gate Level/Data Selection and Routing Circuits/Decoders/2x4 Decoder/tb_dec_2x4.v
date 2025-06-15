`timescale 1ns/1ps

module tb_dec_2x4;

    reg [1:0] d;
    wire [3:0] y;

    dec_2x4 DUT(y, d);

    initial begin
        $dumpfile("dec_2x4.vcd");
        $dumpvars(0, tb_dec_2x4);

        $display("Time\t\tInput d\t|\tOutput y");
        $display("----------------------------------------");

        d = 2'b00; #10;
        $display("%0t\t\t%2b\t|\t%4b", $time, d, y);

        d = 2'b01; #10;
        $display("%0t\t\t%2b\t|\t%4b", $time, d, y);

        d = 2'b10; #10;
        $display("%0t\t\t%2b\t|\t%4b", $time, d, y);

        d = 2'b11; #10;
        $display("%0t\t\t%2b\t|\t%4b", $time, d, y);

        $finish;
    end

endmodule

`timescale 1ns/1ps

module tb_dec_3x8;

    reg [2:0] d;
    wire [7:0] y;

    dec_3x8 uut(y, d);

    initial begin
        $dumpfile("dec_3x8.vcd");
        $dumpvars(0, tb_dec_3x8);

        $display("Time\tInput d\t|\tOutput y");
        $display("----------------------------------------");

        d = 3'b000; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b001; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b010; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b011; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b100; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b101; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b110; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        d = 3'b111; #10;
        $display("%0t\t%3b\t|\t%8b", $time, d, y);

        $finish;
    end

endmodule

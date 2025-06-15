`timescale 1ns/1ps

module tb_enc_8x3;

    reg [7:0] d;
    wire [2:0] y;

    enc_8x3 E1(y, d);

    initial begin
        $dumpfile("enc_8x3.vcd");
        $dumpvars(0, tb_enc_8x3);

        $display("Time\t\tD\t\t|\tY");
        $display("---------------------------------------");

        d = 8'b00000001; #10;  // d0
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b00000010; #10;  // d1
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b00000100; #10;  // d2
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b00001000; #10;  // d3
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b00010000; #10;  // d4
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b00100000; #10;  // d5
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b01000000; #10;  // d6
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b10000000; #10;  // d7
        $display("%0t\t%b\t|\t%b", $time, d, y);

        // Multiple input high (non-priority encoder behavior)
        d = 8'b00001100; #10;  // d2 and d3
        $display("%0t\t%b\t|\t%b", $time, d, y);

        d = 8'b11111111; #10;  // all high
        $display("%0t\t%b\t|\t%b", $time, d, y);

        $finish;
    end

endmodule

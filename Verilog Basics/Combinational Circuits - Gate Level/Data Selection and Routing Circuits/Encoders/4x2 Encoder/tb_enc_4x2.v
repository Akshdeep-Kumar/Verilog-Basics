`timescale 1ns/1ps

module tb_enc_4x2;
    reg [3:0] d;
    wire [1:0] y;

    enc_4x2 uut (
        .y(y),
        .d(d)
    );

    initial begin
        $dumpfile("enc_4x2.vcd");
        $dumpvars(0, tb_enc_4x2);
        $display("Time\tD\tY");
        $monitor("%0t\t%b\t%b", $time, d, y);

        d = 4'b0001; #10;  // y = 00
        d = 4'b0010; #10;  // y = 01
        d = 4'b0100; #10;  // y = 10
        d = 4'b1000; #10;  // y = 11

        $finish;
    end
endmodule

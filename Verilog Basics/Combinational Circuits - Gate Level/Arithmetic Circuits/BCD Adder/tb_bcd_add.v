`timescale 1ns/1ps

module tb_bcd_add;

    reg [3:0] ain, bin;
    reg c_in;
    wire [3:0] sum;
    wire c_out;

    bcd_add uut (
        .sum(sum),
        .c_out(c_out),
        .ain(ain),
        .bin(bin),
        .c_in(c_in)
    );

    initial begin
        $dumpfile("bcd_add.vcd");
        $dumpvars(0, tb_bcd_add);

        $display("Time\tain\tbin\tcin\t|\tsum\tcout");
        $display("---------------------------------------------");

        ain = 4'd3; bin = 4'd4; c_in = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, ain, bin, c_in, sum, c_out);

        ain = 4'd5; bin = 4'd6; c_in = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, ain, bin, c_in, sum, c_out);

        ain = 4'd9; bin = 4'd5; c_in = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, ain, bin, c_in, sum, c_out);

        ain = 4'd8; bin = 4'd1; c_in = 1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, ain, bin, c_in, sum, c_out);

        ain = 4'd7; bin = 4'd2; c_in = 0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, ain, bin, c_in, sum, c_out);

        $finish;
    end

endmodule

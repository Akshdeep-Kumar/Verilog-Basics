`timescale 1ns/1ps

module tb_p_enc;

    reg [3:0] d;
    wire [1:0] y;
    wire v;

    p_enc uut(y, v, d);

    initial begin
        $dumpfile("p_enc.vcd");
        $dumpvars(0, tb_p_enc);

        $display("Time\tInput\t|\tOutput y\tValid v");
        $display("---------------------------------------------");

        d = 4'b0000; #10;
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b0001; #10;
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b0010; #10;
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b0100; #10;
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b1000; #10;
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b0011; #10; // d1 has priority over d0
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b0110; #10; // d2 has priority over d1
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        d = 4'b1111; #10; // d3 has highest priority
        $display("%0t\t%b\t|\t%2b\t\t%b", $time, d, y, v);

        $finish;
    end

endmodule

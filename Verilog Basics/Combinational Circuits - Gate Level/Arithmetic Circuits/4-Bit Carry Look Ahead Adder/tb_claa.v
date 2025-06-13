`timescale 1ns/1ps

module tb_claa;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;

    CLAA uut (
        .s(s),
        .cout(cout),
        .a(a),
        .b(b),
        .cin(cin)
    );

    initial begin
        $dumpfile("claa.vcd");
        $dumpvars(0, tb_claa);

        $display("Time\t A\t B\tCin\t|\tSum\tCout");
        $display("------------------------------------------");

        // Test 1: 3 + 5 = 8
        a = 4'd3; b = 4'd5; cin = 0; #10;
        $display("%0t\t%4b\t%4b\t%b\t|\t%4b\t%b", $time, a, b, cin, s, cout);

        // Test 2: 7 + 8 = 15
        a = 4'd7; b = 4'd8; cin = 0; #10;
        $display("%0t\t%4b\t%4b\t%b\t|\t%4b\t%b", $time, a, b, cin, s, cout);

        // Test 3: 9 + 4 + cin = 14
        a = 4'd9; b = 4'd4; cin = 1; #10;
        $display("%0t\t%4b\t%4b\t%b\t|\t%4b\t%b", $time, a, b, cin, s, cout);

        // Test 4: 15 + 1 = 16 (overflow case)
        a = 4'd15; b = 4'd1; cin = 0; #10;
        $display("%0t\t%4b\t%4b\t%b\t|\t%4b\t%b", $time, a, b, cin, s, cout);

        // Test 5: 0 + 0 + cin = 1
        a = 4'd0; b = 4'd0; cin = 1; #10;
        $display("%0t\t%4b\t%4b\t%b\t|\t%4b\t%b", $time, a, b, cin, s, cout);

        // Test 6: Random case 11 + 6
        a = 4'd11; b = 4'd6; cin = 0; #10;
        $display("%0t\t%4b\t%4b\t%b\t|\t%4b\t%b", $time, a, b, cin, s, cout);

        $finish;
    end

endmodule

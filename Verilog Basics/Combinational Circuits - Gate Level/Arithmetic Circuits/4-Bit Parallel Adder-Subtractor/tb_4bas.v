`timescale 1ns/1ps

module tb_four_bit_AS;

    reg [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;

    // Instantiate the DUT
    four_bit_AS uut (
        .s(s),
        .cout(cout),
        .a(a),
        .b(b),
        .cin(cin)
    );

    initial begin
        
        $dumpfile("four_bit_AS.vcd");   
        $dumpvars(0, tb_four_bit_AS);  

        $display("Time\ta\tb\tcin\t|\ts\tcout");
        $display("------------------------------------------");

        
        a = 4'b0011; b = 4'b0001; cin = 1'b0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, a, b, cin, s, cout);

        a = 4'b0110; b = 4'b0011; cin = 1'b0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, a, b, cin, s, cout);

        a = 4'b1000; b = 4'b0010; cin = 1'b1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, a, b, cin, s, cout);

        a = 4'b0111; b = 4'b0111; cin = 1'b1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, a, b, cin, s, cout);

        a = 4'b0001; b = 4'b0010; cin = 1'b1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, a, b, cin, s, cout);

        $finish;
    end

endmodule

module adder4_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    adder4 uut(a, b, cin, sum, cout);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, adder4_tb);
        $monitor("a=%d b=%d cin=%b -> sum=%d cout=%b", a, b, cin, sum, cout);

        a = 4'd3;  b = 4'd4; cin = 0; #10;
        a = 4'd9;  b = 4'd7; cin = 0; #10;
        a = 4'd15; b = 4'd1; cin = 1; #10;
        $finish;
    end
endmodule
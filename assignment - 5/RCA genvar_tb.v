module ripple_carry_adder_tb;
    parameter WIDTH = 4;
    reg  [WIDTH-1:0] a;
    reg  [WIDTH-1:0] b;
    reg  cin;
    wire [WIDTH-1:0] sum;
    wire cout;
    
    ripple_carry_adder #(WIDTH) uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $monitor("%0t\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin, cout, sum);
        a = 4'b0001; b = 4'b0010; cin = 0; #10; // Test case 1
        a = 4'b1111; b = 4'b0001; cin = 0; #10;    // Test case 2
        a = 4'b1010; b = 4'b0101; cin = 1; #10;      // Test case 3
        a = 4'b1111; b = 4'b1111; cin = 1; #10;    // Test case 4
        $finish;
    end
endmodule

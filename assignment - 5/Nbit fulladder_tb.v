module nbit_full_adder_tb;
   // 8 bit test
    reg  [7:0] A8, B8;
    wire [7:0] Sum8;
    wire c_out8;

    // 16 bit test
    reg  [15:0] A16, B16;
    wire [15:0] Sum16;
    wire c_out16;

    // Instantiate 8-bit adder
    nbit_full_adder #(.N(8)) adder8 (
        .A(A8), .B(B8), .c_in(0),
        .Sum(Sum8), .c_out(c_out8)
    );

    // Instantiate 16-bit adder
    nbit_full_adder #(.N(16)) adder16 (
        .A(A16), .B(B16), .c_in(0),
        .Sum(Sum16), .c_out(c_out16)
    );

    initial begin
        // 8-bit test
        A8 = 8'b00001111; B8 = 8'b00000001;
        #5 $strobe("8-bit: A=%b, B=%b, Sum=%b, c_out=%b", A8, B8, Sum8, c_out8);

        // 16-bit test
        A16 = 16'h00FF; B16 = 16'h0001;
        #5 $strobe("16-bit: A=%h, B=%h, Sum=%h, c_out=%b", A16, B16, Sum16, c_out16);

        // Another 8-bit test
        #5 A8 = 8'd200; B8 = 8'd100;
        #5 $strobe("8-bit: A=%d, B=%d, Sum=%d, c_out=%b", A8, B8, Sum8, c_out8);

        // Another 16-bit test
        #5 A16 = 16'd65530; B16 = 16'd10;
        #5 $strobe("16-bit: A=%d, B=%d, Sum=%d, c_out=%b", A16, B16, Sum16, c_out16);

        #10 $finish;
    end
endmodule

module ripple_carry_adder #(parameter A = 4)
  ( input [A-1:0] a,
    input [A-1:0] b,
    input cin,
    output [A-1:0] sum,
    output cout
);
    wire [A:0] carry;
    assign carry[0] = cin;

    genvar i;
    generate
        for (i = 0; i < A; i = i + 1) begin: adder_bits
            full_adder uut (
                .a    (a[i]),
                .b    (b[i]),
                .cin  (carry[i]),
                .sum  (sum[i]),
                .cout (carry[i+1])
            );
        end
    endgenerate

    assign cout = carry[A];
endmodule

module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign {cout, sum} = a + b + cin;
endmodule

module nbit_full_adder #(
    parameter N = 8  //parameter N = 16
)(
    input [N-1:0] A, B,
    input  c_in,
    output [N-1:0] Sum,
    output  c_out
);
    wire [N:0] carry;  // One extra bit for final carry
    assign carry[0] = c_in;

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : full_adder_block
            fulladd uut (
                .A (A[i]),
                .B (B[i]),
                .c_in (carry[i]),
                .Sum (Sum[i]),
                .c_out(carry[i+1])
            );
        end
    endgenerate

    assign c_out = carry[N];
endmodule

module fulladd (
    input A, B, c_in,
    output Sum, c_out
);
    assign Sum  = A ^ B ^ c_in;
    assign c_out = (A & B) | (B & c_in) | (A & c_in);
endmodule



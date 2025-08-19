`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 22:16:29
// Design Name: 
// Module Name: multi_always_parallel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multi_always_parallel;
    reg clk, a, b;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    always @(posedge clk)
        a <= ~a;

    always @(posedge clk)
        b <= a;  // b gets value of 'a' before toggle

    initial begin
        a = 0; b = 0;
        #100 $finish;
    end
endmodule



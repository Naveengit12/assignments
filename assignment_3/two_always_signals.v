`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2025 11:23:14
// Design Name: 
// Module Name: two_always_signals
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


module two_always_signals;
    reg clk, sig1, sig2;

    initial clk = 0;
    always #5 
    clk = ~clk;

    always @(posedge clk)
        sig1 <= ~sig1;

    always @(negedge clk)
        sig2 <= ~sig2;

    initial begin
        sig1 = 0; sig2 = 0;
        #50 
        $finish;
    end
endmodule


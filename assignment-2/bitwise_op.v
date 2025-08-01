`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 21:58:29
// Design Name: 
// Module Name: bitwise_op
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


module bitwise_op;
reg [2:0] x = 3'b100, y = 3'b101;
  wire [2:0] w0, w1, w2, w3, w4;
  assign w0 = ~x;
  assign w1 = x & y;
  assign w2 = x | y;
  assign w3 = x ^ y;
  assign w4 = x ^~ y;
  initial $monitor("~x=%b, x&y=%b, x|y=%b, x^y=%b, x^~y=%b",w0, w1, w2, w3, w4);
endmodule


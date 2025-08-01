`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 14:42:40
// Design Name: 
// Module Name: concatenation_operator
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


module concatenation_operator(a, b,c,y);
input a;
input [1:0]b;
input [2:0]c;
output [3:0]y;
  assign y = {a, b[0], c[1]};
endmodule


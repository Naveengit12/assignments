`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 15:47:41
// Design Name: 
// Module Name: comparator
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


module comparator(a, b,ceq, clt, cgt);
input a,b;
output ceq,clt,cgt;
assign a=10;
assign b=10;
  assign ceq = (a == b);
  assign clt = (a < b);
  assign cgt = (a > b);
endmodule


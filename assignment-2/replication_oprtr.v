`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 15:09:27
// Design Name: 
// Module Name: replication_oprtr
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


module replication_oprtr(a, b, c, y);
input a;
input [1:0]b;
input [2:0]c;
output [6:0]y;

  assign y = {a, {4{b[0]}}, c[1]};
endmodule


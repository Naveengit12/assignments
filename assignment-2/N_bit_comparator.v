`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 21:34:54
// Design Name: 
// Module Name: N_bit_comparator
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

module N_bit_comparator
 #(parameter N=4)
 (input [N-1:0] a, b, output eq, lt, gt);
  assign eq = (a == b);
  assign lt = (a < b);
  assign gt = (a > b);
endmodule


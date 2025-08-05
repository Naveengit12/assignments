`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 23:26:04
// Design Name: 
// Module Name: MUX_4to1
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


module MUX_4to1(output y, input i0, i1, i2, i3, s0, s1);
  wire n0, n1, a, b, c, d;
  
  not(n0, s0);
  not(n1, s1);
  
  and(a, i0, n1, n0);
  and(b, i1, n1, s0);
  and(c, i2, s1, n0);
  and(d, i3, s1, s0);
  or(y, a, b, c, d);
endmodule

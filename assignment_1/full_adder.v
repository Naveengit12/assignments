`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 23:21:03
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a, b, c_in, output sum, o_ut);
  wire w1, w2, w3;
  
  xor (w1, a, b);
  xor (sum, w1, c_in);
  and (w2, a, b);
  and (w3, w1, c_in);
  or (c_out, w2, w3);
 endmodule


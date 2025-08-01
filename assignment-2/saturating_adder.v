`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 22:14:16
// Design Name: 
// Module Name: saturating_adder
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

module saturating_adder(a, b, sum);
  input  [3:0] a, b;
  output [3:0] sum;
  wire   [4:0] temp;

  assign temp = a + b;
  assign sum = (temp > 5'd15) ? 4'b1111 : temp[3:0];
endmodule


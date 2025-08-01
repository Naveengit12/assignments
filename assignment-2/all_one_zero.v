`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 15:33:52
// Design Name: 
// Module Name: all_one_zero
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


module all_one_zero(x,zero, one);
input x;
output zero,one;
assign x=4'b0101;

  assign zero = ~(|x);
  assign one = &x;
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 14:58:06
// Design Name: 
// Module Name: eve_parity_gen_9bit
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


module eve_parity_gen_9bit( x,ep, op);
input [8:0]x;
output ep,op;
  assign ep = ^x;
  assign op = ~ep;
endmodule

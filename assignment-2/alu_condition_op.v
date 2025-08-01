`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 22:05:23
// Design Name: 
// Module Name: alu_condition_op
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

module alu_condition_op (a,b,sel,y);
  input  wire [3:0] a, b;    
  input  wire sel;
  output wire [3:0] y;  

// If sel=1 perform a+b else a-b
  assign y = (sel) ? (a + b) : (a - b);
endmodule

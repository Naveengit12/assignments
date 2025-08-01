`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 12:16:29
// Design Name: 
// Module Name: fulladder_4bit
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


module fulladder_4bit(input [2:0] a, b, input c_in,  [2:0] sum, output c_out);

assign a=3'b100;
assign b=3'b010;
assign c_in=3'b000;

  assign {c_out, sum} = a + b + c_in;
endmodule


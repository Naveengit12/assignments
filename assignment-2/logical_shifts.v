`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 18:27:49
// Design Name: 
// Module Name: logical_shifts
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


module logical_shifts(input [3:0] in, output [3:0] lshift, rshift);
  assign lshift = in << 1;
  assign rshift = in >> 1;
endmodule


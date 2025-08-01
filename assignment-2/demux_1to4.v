`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 19:46:17
// Design Name: 
// Module Name: demux_1to4
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


module demux_1to4( in,sel,en,out);
input in,en;
input [1:0]sel;
output[3:0]out;

  assign out = en ? (4'b0001 << sel) & {4{in}} : 4'b0000;
endmodule



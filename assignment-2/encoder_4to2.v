`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 19:12:41
// Design Name: 
// Module Name: encoder_4to2
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


module encoder_4to2(d,y);
input [3:0]d;
output [1:0]y;
  assign out = d[3] ? 2'b11 :
               d[2] ? 2'b10 :
               d[1] ? 2'b01 : 2'b00;
endmodule


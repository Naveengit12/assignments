`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 19:38:04
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(input [3:0] in, output [1:0] out);
  assign out = in[3] ? 2'b11 :
               in[2] ? 2'b10 :
               in[1] ? 2'b01 :
               in[0] ? 2'b00 : 2'b00;
endmodule


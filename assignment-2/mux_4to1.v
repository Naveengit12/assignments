`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 18:59:25
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(d,sel,y);
input [3:0]d;
input [1:0] sel;
output y;
  assign y = sel == 2'b00 ? d[0] :
             sel == 2'b01 ? d[1] :
             sel == 2'b10 ? d[2] : d[3];
endmodule


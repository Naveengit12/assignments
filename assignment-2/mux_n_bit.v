`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 19:54:23
// Design Name: 
// Module Name: mux_n_bit
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
///////////////////////////////////////////////////
  module mux_n_bit #(
    parameter N = 4)

    (input [1:0] sel,
    input [N-1:0] d0, d1, d2, d3,
    output [N-1:0] y);


  assign y = (sel == 2'b00) ? d0 :
             (sel == 2'b01) ? d1 :
             (sel == 2'b10) ? d2 : d3;
endmodule


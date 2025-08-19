`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 11:03:34
// Design Name: 
// Module Name: race_condition
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


module race_condition;
  reg a, b;

  initial begin
    a = 0;
    b = 1;
  end

  always @(a)
    b = a;

  always @(a)
    a = b;
endmodule


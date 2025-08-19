`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 20:04:58
// Design Name: 
// Module Name: assign_two_values_blocking
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


module assign_two_values_blocking;
  reg a, b;

  initial begin
    a = 0;
    b = 0;
    a = 1; // Blocking assignment
    b = a; 
  end
endmodule


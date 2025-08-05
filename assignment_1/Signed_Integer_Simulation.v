`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 21:12:46
// Design Name: 
// Module Name: Signed_Integer_Simulation
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


module Signed_Integer_Simulation;
  integer i;
  initial begin
    i = 1;
    $display("Positive i = %d", i);
    i = -1;
    $display("Negative i = %d", i);
  end
 endmodule

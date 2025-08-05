`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 22:09:11
// Design Name: 
// Module Name: Floating_Point
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


module Floating_Point;
  real delta;
  integer int_val;
  initial begin
    delta = 4e10;
    $display("Delta = %f", delta);
    
    int_val = delta;
    $display("Delta assigned to int = %d", int_val);
    
    delta = 2.18;
    $display("Delta = %f", delta);
  end
 endmodule

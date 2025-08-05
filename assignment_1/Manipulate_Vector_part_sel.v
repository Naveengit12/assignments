`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 22:56:58
// Design Name: 
// Module Name: Manipulate_Vector_part_sel
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


module Manipulate_Vector_part_sel;

  reg [7:0] bus;
  reg [3:0] busA;
  integer i;
  
  initial begin
    bus = 8'b10101111;
    for (i = 0; i < 4; i = i + 1)
      busA[i] = bus[i];
    $display("busA = %b", busA);
    
    busA = bus[3:0];
    $display("busA = %b", busA);
  end
 endmodule

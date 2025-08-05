`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 23:05:26
// Design Name: 
// Module Name: memory_1D
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


module memory_1D;
  reg [7:0] mem[7:0];
  integer i;
  
  initial begin
    for (i = 0; i < 8; i = i + 1)
      mem[i] = i * 2;
      
    for (i = 0; i < 8; i = i + 1)
      $display("mem= %0d",i,mem[i]);
  end
 endmodule

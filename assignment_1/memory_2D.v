`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 23:12:48
// Design Name: 
// Module Name: memory_2D
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


module memory_2D;
reg [7:0] mem[3:0][3:0];
  integer i, j;
  
  initial begin
    for (i = 0; i < 4; i = i + 1)
      for (j = 0; j < 4; j = j + 1)
        mem[i][j] = i * 4 + j;
    $display("mem[3][2] = %0d", mem[3][2]);
  end
 endmodule

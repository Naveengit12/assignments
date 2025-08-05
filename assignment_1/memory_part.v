`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 11:20:08
// Design Name: 
// Module Name: memory_part
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


module memory_part;
  reg [7:0] mem[7:0];
  
  initial begin
    mem[4] = 8'b11110000;
    mem[5] = 8'b10101010;
    $display("Part-select mem[4][7:4] = %b", mem[4][7:4]);
    $display("Bit-select mem[5][3] = %b", mem[5][3]);
  end
 endmodule


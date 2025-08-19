`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 22:14:29
// Design Name: 
// Module Name: race_prone_free
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


module race_prone_free;
reg clk, a, b;

  always @(posedge clk) begin
    a <= b;
    b <= a;
  end
endmodule

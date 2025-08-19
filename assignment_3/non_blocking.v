`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 20:07:49
// Design Name: 
// Module Name: non_blocking
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


module non_blocking;
  reg a, b;

  initial begin
    a <= 0;
    b <= a;
    a <= 1; 
    b <= a; 
  end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 20:49:35
// Design Name: 
// Module Name: print_values
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


module print_values;
  reg [3:0] a = 4'd5, b = 4'd7;
  initial begin
    $display("a = %d, b = %d, sum = %d", a, b, a + b);
  end
endmodule


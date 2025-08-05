`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 11:05:41
// Design Name: 
// Module Name: bit_slicing
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


module bit_slicing;
 
  reg [7:0] data;
  reg [3:0] upper, lower;
  initial begin
    data = 8'b11001010;
    upper = data[7:4];
    lower = data[3:0];
    $display("Upper = %b, Lower = %b", upper, lower);
  end
 endmodule


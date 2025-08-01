`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 12:55:44
// Design Name: 
// Module Name: division_module
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


module division_module;
reg signed [3:0] a = -10, b = 5;
  wire signed [3:0] q, r;
  assign q = a / b;
  assign r = a % b;
  initial $monitor("a=%d, b=%d, a/b=%d, a%%b=%d", a, b, q, r);
endmodule



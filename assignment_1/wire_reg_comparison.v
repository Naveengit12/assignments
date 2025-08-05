`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 15:12:31
// Design Name: 
// Module Name: wire_reg_comparison
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


module wire_comparison;
  wire a, b;
  assign a = 1'b1;
  assign b = a;
  initial
   $display("a=%b,b=%b",a,b);
 endmodule

 module reg_comparison;
  reg a, b;
  initial begin
    a = 1'b1;
    b = a;
    $display("a=%b,b=%b",a,b);
  end
 endmodule


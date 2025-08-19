`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 20:22:56
// Design Name: 
// Module Name: ff_blocking_tb
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



module ff_blocking(input clk, input d, output reg q);
  always @(posedge clk)
    q = d; 
endmodule


module tb;
  reg clk = 0, d;
  wire q;

  ff_blocking uut(clk, d, q);
  always #5 clk = ~clk;

  initial begin
    $monitor("Time=%0t | clk=%b | d=%b | q=%b", $time, clk, d, q);
    d = 0;
    #12 d = 1;
    #10 d = 0;
    #10 $finish;
  end
endmodule



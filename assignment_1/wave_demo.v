`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 10:56:49
// Design Name: 
// Module Name: wave_demo
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


module wave_demo;
  reg clk;
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, wave_demo);
    clk = 0;
    #10 clk = 1;
    #10 clk = 0;
  end
 endmodule

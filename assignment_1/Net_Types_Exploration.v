`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 20:53:47
// Design Name: 
// Module Name: Net_Types_Exploration
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


module Net_Types_Exploration;
  wand a;
  wor b;
  tri c;
  triand d;
  assign a = 1'b1;
  assign b = 1'b0;
  assign c = 1'bz;
  assign d = 1'b1;
  initial begin
    #5
    $monitor("a=%b b=%b c=%b d=%b", a, b, c, d);
  end
 endmodule


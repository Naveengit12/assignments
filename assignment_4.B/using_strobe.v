`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 21:08:08
// Design Name: 
// Module Name: using_strobe
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


module using_strobe;
 reg a = 0, b = 0;

  initial begin
    a = 1;
    b = 1;
    $strobe("a = %b, b = %b", a, b);
  end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 22:35:24
// Design Name: 
// Module Name: Bit_Sel_Acce
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


module Bit_Sel_Acce;
  reg [7:0] data;
  
  initial begin
    data = 8'b10101100;
    $display("data[3] = %b", data[3]);
  end
 endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 22:43:32
// Design Name: 
// Module Name: Part_Sel_Operation
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


module Part_Sel_Operation;

  reg [7:0] bus;
  initial begin
    bus = 8'b11011001;
    $display("Lower nibble = %b", bus[3:0]);
  end
 endmodule

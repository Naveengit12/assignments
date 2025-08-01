`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 18:08:18
// Design Name: 
// Module Name: equality_check
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


module equality_check;
reg [3:0] a = 4'b1x01, b = 4'b1z01;
  initial begin
    $display("a == b: %b", a == b);   // may be unknown
    $display("a === b: %b", a === b); // checks x and z exactly
  end
endmodule
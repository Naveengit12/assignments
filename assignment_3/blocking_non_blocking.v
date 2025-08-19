`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 20:14:26
// Design Name: 
// Module Name: blocking_non_blocking
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


module blocking_non_blocking;
reg a,b,clk;

always @(posedge clk) begin
  a = b;   
  b = a; 
end

always @(posedge clk) begin
  a <= b; 
  b <= a;
end
endmodule


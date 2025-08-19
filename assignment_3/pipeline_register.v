`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 21:59:43
// Design Name: 
// Module Name: pipeline_register
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


module pipeline_register(input clk, input [3:0] in, output reg [3:0] out1, out2);
  reg [3:0] temp;

  always @(posedge clk) begin
    temp <= in;
    out1 <= temp;
    out2 <= out1;
  end
endmodule


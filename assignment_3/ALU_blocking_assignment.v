`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 21:43:24
// Design Name: 
// Module Name: ALU_blocking_assignment
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


module ALU_blocking_assignment(input [3:0] a, b, input [1:0] op, output reg [3:0] result);
  always @(*) begin
    if (op == 2'b00)
      result = a + b;
    else if (op == 2'b01)
      result = a - b;
    else if (op == 2'b10)
      result = a & b;
    else
      result = a | b;
  end
endmodule


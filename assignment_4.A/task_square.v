`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:03:54
// Design Name: 
// Module Name: task_square
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

module square_task;
  reg [7:0] A;
  reg [15:0] B;

  // Task to compute square of input
  task square;
    input [7:0] in;
    output [15:0] out;
    begin
      out = in * in;
    end
  endtask

  initial begin
    A = 8'd12;
    square(A, B);
    $display("A=%d, B=%d", A, B);
  end
endmodule



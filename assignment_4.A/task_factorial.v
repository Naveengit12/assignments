`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:48:52
// Design Name: 
// Module Name: task_factorial
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

module task_factorial;
reg [7:0] num;
reg [31:0] fact;

  task factorial;
    input [7:0] num_in;
    output reg [31:0] fact_out;
    integer i;
    begin
      fact_out = 1;
      for (i = 1; i <= num_in; i = i + 1)
        fact_out = fact_out * i;
    end
  endtask

  initial begin
    num = 4;
    factorial(num, fact);
    $display("num=%d, fact=%d", num, fact);
  end
endmodule


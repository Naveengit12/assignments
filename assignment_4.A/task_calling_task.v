`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 13:17:33
// Design Name: 
// Module Name: task_calling_task
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
module task_call_demo;
  reg [7:0] a = 4;
  reg [7:0] b = 6;
  reg [7:0] result;

  // Task to add two numbers
  task add_task;
    input [7:0] x, y;
    output [7:0] sum;
    begin
      sum = x + y;
    end
  endtask

  // Task that calls add_task twice
  task double_add_task;
    input [7:0] a_in, b_in;
    output [7:0] res;
    reg [7:0] temp;
    begin
      add_task(a_in, b_in, temp);  // temp = a + b
      add_task(temp, b_in, res);   // res = temp + b = a + 2b
    end
  endtask

  initial begin
    double_add_task(a, b, result);
    $display("a = %d, b = %d, result = %d", a, b, result);
  end

endmodule


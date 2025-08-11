`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 09:40:28
// Design Name: 
// Module Name: signed_add_task
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


module signed_add_task;
  reg signed[7:0] x, y;
  wire signed[7:0] result;

  // Output in Verilog tasks must be a reg
  reg signed [7:0] sum_out;

  // The task
  task add_task;
    input signed [7:0] a, b;
    output signed [7:0] sum;
    begin
      sum = a + b;
    end
  endtask

  initial begin
    x = -10;
    y = 20;
    add_task(x, y, sum_out);
    $display("x = %0d, y = %0d, sum_out = %0d", x, y, sum_out);

    x = -50;
    y = -30;
    add_task(x, y, sum_out); 
    $display("x = %0d, y = %0d, sum_out = %0d", x, y, sum_out);
    $finish;
  end
endmodule


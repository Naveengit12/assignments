`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:21:06
// Design Name: 
// Module Name: add_sub_task
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


module add_sub_task;
reg[3:0]a,b;
reg[3:0] sum,diff;

task add_sub;
    input [3:0] x, y;
    begin
      sum = x + y;
      diff = x - y;
      $display("x = %d, y = %d", x, y);
      $display("sum = %d, diff = %d", sum, diff);
    end
  endtask

  initial begin
    a = 4'd7;  
    b = 4'd5;  
    add_sub(a, b);
  end
endmodule
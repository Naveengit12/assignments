`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:17:18
// Design Name: 
// Module Name: max_value_task_4in
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


module max_value_task_4in;
  reg [7:0] a, b, c, d;
  reg [7:0] max_value;

  // Task to find maximum among 4 numbers
  task find_max;
    input [7:0] x, y, z, w;
    output reg [7:0] max_out;
    begin
      max_out = x;
      if (y > max_out) max_out = y;
      if (z > max_out) max_out = z;
      if (w > max_out) max_out = w;
    end
  endtask

  initial begin
    a = 27;
    b = 29;
    c = 39;
    d = 37;

    find_max(a, b, c, d, max_value);
    $display("a=%d, b=%d, c=%d, d=%d", a, b, c, d);
    $display("Max_value = %d", max_value);
  end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 13:02:01
// Design Name: 
// Module Name: task_reverse
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
module task_reverse;
 reg[7:0]A;
 reg[7:0]B;

  // Task to reverse bits of 8-bit input
  task reverse_bits;
    input  [7:0] in;
    output reg [7:0] out;
    integer i;
    begin
      out = 8'b0;
      for (i = 0; i < 8; i = i + 1) begin
        out[i] = in[7 - i]; // reverse bits
      end
    end
  endtask

  initial begin
    A = 8'b10101010;  
    reverse_bits(A, B);
    $display(" A=%b,B=%b",A,B);
  end
endmodule


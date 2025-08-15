`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 20:59:46
// Design Name: 
// Module Name: tb_using_random
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


module tb_using_random;
  reg [7:0] data;

  initial begin
    repeat(5) begin
      data = $random;
      $display("Random data: %0d", data);
      #10;
    end
  end
endmodule

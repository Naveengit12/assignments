`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 22:11:21
// Design Name: 
// Module Name: reg_increment
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


module reg_increment;
  reg [15:0] counter;
  reg clk;

  // Initialize the counter and clock
  initial begin
    counter = 16'd0;  
    clk = 0;          
    $display("Time = %0t, counter = %0d", $time, counter);
  end

  // Clock generation: toggle every 5 time units
  always #5 clk = ~clk;

  // Increment counter on positive edge of clock
  always @(posedge clk) begin
    counter = counter + 1;
    $display("Time = %0t, counter = %0d", $time, counter);
  end
endmodule


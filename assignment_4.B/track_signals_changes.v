`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 20:53:59
// Design Name: 
// Module Name: track_signals_changes
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


module track_signals_changes;
  reg clk = 0, data = 0;
  always #5 
  clk = ~clk;
  always #10 
  data = ~data;

  initial begin
    $monitor("At time %0t: clk = %b, data = %b", $time, clk, data);
    #50 $finish;
  end
endmodule

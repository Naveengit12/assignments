`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:36:35
// Design Name: 
// Module Name: task_toggles
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
module task_toggles;
reg clk = 0; // start with 0

task toggle;
    begin
      forever #10 clk = ~clk; 
    end
  endtask

  initial begin
    toggle(); // task start
    #100 $finish;
  end

  initial
    $monitor("Time=%0t, clk=%b", $time, clk);
endmodule

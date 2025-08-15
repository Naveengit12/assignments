`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 21:58:32
// Design Name: 
// Module Name: contro_monitoring
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


module contro_monitoring;
 reg clk = 0;
  always #5 clk = ~clk;

  initial begin
    $monitor("Time = %0t, clk = %b", $time, clk);
    #15; 
    $monitoroff;
    #10;
     $monitoron;
    #20;
     $finish;
  end
endmodule

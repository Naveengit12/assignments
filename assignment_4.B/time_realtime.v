`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 21:11:48
// Design Name: 
// Module Name: time_realtime
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


module time_realtime;
 initial begin
    #10; 
    $display("Time = %0t", $time);
    #5; 
     $display("RealTime = %0f", $realtime);
  end
endmodule

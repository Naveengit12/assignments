`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 22:21:30
// Design Name: 
// Module Name: Realtime_Sim_Time
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


module Realtime_Sim_Time;
  realtime pres_time;
  
  initial begin
    #10
     pres_time = $realtime;
    $display("pres time = %f", pres_time);
  end
 endmodule

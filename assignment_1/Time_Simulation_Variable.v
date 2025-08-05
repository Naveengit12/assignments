`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 21:56:48
// Design Name: 
// Module Name: Time_Simulation_Variable
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


module Time_Simulation_Variable;
  time t;
  initial begin
    #10
     t = $time;
    $display("Time t = %0t", t);
    #5
     $display("New Time = %0t", $time);
  end
 endmodule


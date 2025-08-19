`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 22:02:37
// Design Name: 
// Module Name: toggle_1bit
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


module toggle_1bit;
  reg toggle;

  // Initialize the signal
  initial begin
    toggle = 0;            
    $display("Time = %0t, toggle = %b", $time, toggle);
  end

  // Always block to toggle the signal
  always begin
    #5 toggle = ~toggle;    
    $display("Time = %0t, toggle = %b", $time, toggle);
  end
endmodule


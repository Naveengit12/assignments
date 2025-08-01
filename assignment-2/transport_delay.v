`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 21:53:02
// Design Name: 
// Module Name: transport_delay
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


module transport_delay(
  input  wire a,
  output wire y
);
  reg temp;
  assign y = temp;

  always @(a)
    #10 temp = a;  // Transport delay - all transitions are passed after 5 time units
endmodule


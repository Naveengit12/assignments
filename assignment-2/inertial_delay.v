`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 21:50:16
// Design Name: 
// Module Name: inertial_delay
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

module inertial_delay(
  input  wire a,
  output wire y
);
  // Inertial delay: glitches <5 time units will be suppressed
  assign #10 y = a;
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 09:45:43
// Design Name: 
// Module Name: cmos_inverter
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


module cmos_inverter(output out, input in);
  supply1 Vdd;
  supply0 Gnd;
  wire n;
  pmos p1(out, Vdd, in);
  nmos n1(out, Gnd, in);
 endmodule

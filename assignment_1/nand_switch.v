`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 10:01:44
// Design Name: 
// Module Name: nand_switch
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


module nand_switch(output Y, input A, B);

  supply1 vdd; 
  supply0 gnd; 
  wire w1;

  
  pmos p1(Y, vdd, A);  
  pmos p2(Y, vdd, B);  

  
  nmos n1(w1, gnd, B); 
  nmos n2(Y, w1, A);  
endmodule

  

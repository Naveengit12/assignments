`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 21:38:07
// Design Name: 
// Module Name: T_ff
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

primitive T_ff (Q, T, CLK);
    output Q;
    input T, CLK;

    reg Q; 

    table
 
       0  (01) : ? : Q;
  
       1  (01) : 0 : 1;
       1  (01) : 1 : 0;
  
       ?  (?0) : ? : Q; // Negative edge or stable clock
       ?  (??) : ? : Q; // T changes when clock is not a positive edge
       ?  (1?) : ? : Q; // T is 1, but clock is not a positive edge
       ?  (0?) : ? : Q; // T is 0, but clock is not a positive edge
    endtable
endprimitive


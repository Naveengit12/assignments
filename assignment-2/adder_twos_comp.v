`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 12:30:45
// Design Name: 
// Module Name: adder_twos_comp
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


module adder_twos_comp( x, y,c_in,sum,c_out);
input x,y,c_in;
output sum,c_out;
  wire t;

    assign x=4'b0010;
  assign y=4'b0001;
  assign c_in=4'b0000;
  assign t = y ^ {4{c_in}};
  assign {c_out, sum} = x + t + c_in;
endmodule



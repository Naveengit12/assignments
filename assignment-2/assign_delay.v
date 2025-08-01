`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 21:46:08
// Design Name: 
// Module Name: assign_delay
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


module assign_delay;
  reg [2:0] a, b;
  wire [2:0] sum;
  assign #5 sum = a + b;
  initial begin
    $monitor("Time=%0t a=%b b=%b sum=%b", $time, a, b, sum);
    a = 3'b110; b = 3'b010;
    #100
     a = 3'b101; b = 3'b011;
  end
endmodule


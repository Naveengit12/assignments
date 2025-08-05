`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 21:50:52
// Design Name: 
// Module Name: Register_Assignment
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


module Register_Assignment;
  reg [7:0] data;
  initial begin
    data = 8'b11001100;
    $display("Data = %b", data);
  end
 endmodule

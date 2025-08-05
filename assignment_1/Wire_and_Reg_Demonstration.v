`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 14:49:01
// Design Name: 
// Module Name: Wire_and_Reg_Demonstration
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


module Wire_and_Reg_Demonstration(
  wire net1, net2
  );
  assign net1 = 1'b1;
  assign net2 = net1;
  initial begin
  $display("net1 = %b, net2 = %b", net1, net2);
  end
endmodule

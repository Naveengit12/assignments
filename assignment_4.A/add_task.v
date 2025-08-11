`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:30:18
// Design Name: 
// Module Name: add_task
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

module add_task;
  reg[7:0]a,b;
  
  task add;
    input[7:0]x,y;
    begin
      $display("sum=%d",x+y);
    end
  endtask
  
  initial begin
    a=99; b=99;
    add(a,b);
  end
endmodule

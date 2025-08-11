`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 09:22:12
// Design Name: 
// Module Name: clock_toggle
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


module clock_toggle;
reg clk = 0; // Clock signal, initial value 0

  // Task to toggle clock 10 times
  task clock_toggle;
    integer i;
    begin
      for (i = 0; i < 10; i = i + 1) begin
       // wait 5 time units and toggle
        #5 clk = ~clk;
        $display("Time: %0t | clk = %b", $time, clk);
      end
    end
  endtask

  initial begin
    $display("Starting clock toggle ...");
    clock_toggle(); // Call the task
    $display("Clock toggle complete.");
    $finish;
  end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 21:53:29
// Design Name: 
// Module Name: NOT_gate
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


module NOT_gate(input a, output y);
  assign y = ~a;
endmodule

module test;
  reg a;
  wire y;
  NOT_gate uut (.a(a), .y(y));

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, test);

    a = 0; #10;
    a = 1; #10;
    $finish;
  end
endmodule

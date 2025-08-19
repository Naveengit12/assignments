`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2025 10:49:09
// Design Name: 
// Module Name: initial_always
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


module initial_always;
    reg [3:0] val;

    initial begin
        val = 4'd0;
        #5
        val = 4'd5;
    end

    always 
    #10  val = val + 1;
endmodule


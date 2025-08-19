`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2025 11:12:43
// Design Name: 
// Module Name: multi_initial_same_module
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


module multi_initial_same_module;
    reg [3:0] a, b;

    initial a = 4'd5;
    initial b = 4'd10;

    initial begin
        #5; 
        $display("a = %d, b = %d", a, b);
    end
endmodule


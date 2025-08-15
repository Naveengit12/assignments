`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 10:43:37
// Design Name: 
// Module Name: different_func
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


module different_func(
    input  [7:0] a,b,
    output [7:0] diff
);

    assign diff = calculate_diff(a, b);

    // Function to compute difference (a - b)
    function [7:0] calculate_diff;
        input [7:0] x;
        input [7:0] y;
        begin
            calculate_diff = x - y;
        end
    endfunction
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 10:52:35
// Design Name: 
// Module Name: square_func
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


module square_func(
    input  [7:0] num,
    output [15:0] square
);

    assign square = calculate_square(num);

    // Function to calculate square of input
    function [15:0] calculate_square;
        input [7:0] x;
        begin
            calculate_square = x * x;
        end
    endfunction
endmodule

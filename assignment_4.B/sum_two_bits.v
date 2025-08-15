`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 09:14:35
// Design Name: 
// Module Name: sum_two_bits
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


module sum_two_bits(
    input  [7:0] a,b,
    output [7:0] sum
);

    // Calling the function
    assign sum = calculate(a, b);

    // Function to add two 8-bit values
    function [7:0] calculate;
        input [7:0] x;
        input [7:0] y;
        begin
            calculate = x + y;
        end
    endfunction
 endmodule

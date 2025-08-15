`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 10:57:05
// Design Name: 
// Module Name: minimum_num_func
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


module minimum_num_func(
    input  [7:0] a,b,
    output [7:0] min_val
);

    assign min_val = get_min(a, b);

    // Function to return minimum of two inputs
    function [7:0] get_min;
        input [7:0] x,y;
        begin
            if (x < y)
                get_min = x;
            else
                get_min = y;
        end
    endfunction
endmodule


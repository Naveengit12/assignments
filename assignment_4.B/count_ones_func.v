`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 11:11:45
// Design Name: 
// Module Name: count_ones_func
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


module count_ones_func(
    input  [7:0] data,
    output [3:0] ones_count  
);

    assign ones_count = count_ones(data);
    function [3:0] count_ones;
        input [7:0] in;
        integer i;
        begin
            count_ones = 0;
            for (i = 0; i < 8; i = i + 1)
                count_ones = count_ones + in[i];
        end
    endfunction
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 11:17:25
// Design Name: 
// Module Name: compare_equal_retu_1
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


module compare_equal_retu_1(
    input  [7:0] a,b,
    output is_equal
);

    assign is_equal = compare_func(a, b);

    function compare_func;
        input [7:0] x;
        input [7:0] y;
        begin
            if (x == y)
                compare_func = 1;
            else
                compare_func = 0;
        end
    endfunction
endmodule


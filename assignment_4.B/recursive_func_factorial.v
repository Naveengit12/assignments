`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 10:31:11
// Design Name: 
// Module Name: recursive_func_factorial
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


module recursive_func_factorial(
    input  [3:0] n,
    output [31:0] result
);

    assign result = fact(n);

    // Recursive function with automatic variables
    function automatic [31:0] fact;
        input [3:0] num;
        begin
            if (num <= 1)
                fact = 1;
            else
            // recursive call
                fact = num * fact(num - 1); 
        end
    endfunction

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 11:06:26
// Design Name: 
// Module Name: even_parity_func
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


module even_parity_func(
    input  [7:0] data,
    output  parity
);

    assign parity = ~get_even_parity(data);

    // Function to XOR all bits (odd parity)
    function get_even_parity;
        input [7:0] in;
        integer i;
        begin
            get_even_parity = 0;
            for (i = 0; i < 8; i = i + 1)
                get_even_parity = get_even_parity ^ in[i];
        end
    endfunction
endmodule


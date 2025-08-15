`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 09:25:07
// Design Name: 
// Module Name: odd_parity_func
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


module odd_parity_func(
    input  [7:0] data,
    output parity
);

    assign parity = get_odd_parity(data);

    // Function to compute XOR of all bits (odd parity)
    function get_odd_parity;
        input [7:0] in;
        integer i;
        begin
            get_odd_parity = 0;
            for (i = 0; i < 8; i = i + 1)
                get_odd_parity = get_odd_parity ^ in[i];
        end
    endfunction

endmodule

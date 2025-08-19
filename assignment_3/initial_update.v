`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2025 11:03:09
// Design Name: 
// Module Name: initial_update
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


module initial_update;
    reg [7:0] data;

    initial begin
        data = 8'd00000000; // setup
    end

    always #5 
    data = data + 1; // functional update
endmodule


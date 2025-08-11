`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 19:26:42
// Design Name: 
// Module Name: check_equality
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


module check_equality;
reg [7:0] a, b;
reg equal_flag;

    // Task to compare two 8-bit inputs
    task check_equality;
        input [7:0] x,y;
        output reg flag;
        begin
            if (x == y)
                flag = 1;
            else
                flag = 0;
        end
    endtask

    // Initial block to test the task
    initial begin
        a = 8'b10101010;
        b = 8'b10101010;
        check_equality(a, b, equal_flag);
        $display("a = %b, b = %b, equal_flag = %b", a, b, equal_flag);
    end
endmodule


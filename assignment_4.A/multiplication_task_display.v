`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 19:10:11
// Design Name: 
// Module Name: multiplication_task_display
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
module multiplication_task_display;

    // Task declaration
    task multiply_and_display;
        input [7:0] a,b;
        reg [15:0] result; 
        begin
            result = a * b;
            $display("a=%d , b=%d , result=%d", a, b, result);
        end
    endtask

    initial begin
        multiply_and_display(8'd5, 8'd3);    
        multiply_and_display(8'd10, 8'd12);  
        multiply_and_display(8'd25, 8'd4);    
    end
endmodule


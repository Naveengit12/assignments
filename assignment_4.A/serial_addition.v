`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 19:36:51
// Design Name: 
// Module Name: serial_addition
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


module serial_addition;

    reg [3:0] a, b;        
    reg [4:0] result; 
         
    // Task: Serial bit-by-bit addition
    task serial_add;
        input [3:0] x,y;
        output [4:0] sum;
        integer i;
        reg carry;
        begin
            carry = 0;
            sum = 0;
            for (i = 0; i < 4; i = i + 1) begin
                // Add bit-by-bit including carry
                sum[i] = x[i] ^ y[i] ^ carry;
                carry = (x[i] & y[i]) | (x[i] & carry) | (y[i] & carry);
            end
            sum[4] = carry; 
        end
    endtask

    // Initial block to test the task
    initial begin
        a = 4'b1011;
        b = 4'b0110; 
        serial_add(a, b, result);
        $display("a = %b, b = %b, sum = %b ", a, b,result);
     end
endmodule

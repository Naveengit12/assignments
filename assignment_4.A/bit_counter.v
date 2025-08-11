`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 19:00:48
// Design Name: 
// Module Name: bit_counter
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


module bit_counter;
   reg [7:0] data_in;
    integer count;

    // Task to count number of 1's in 8-bit input
    task count_ones;
        input [7:0] value;
        output integer ones_count;
        integer i;
        begin
            ones_count = 0;
            for (i = 0; i < 8; i = i + 1) begin
                if (value[i] == 1'b1)
                    ones_count = ones_count + 1;
            end
        end
    endtask

    initial begin
        data_in = 8'b10101101; 
        count_ones(data_in, count);
        $display("data_in=%b, count=%0d", data_in, count);
    end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 12:25:39
// Design Name: 
// Module Name: average_return
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


module average_return;
    reg [7:0] nums[0:3];  // 4-element array (each 8-bit)
    integer i;
    reg [15:0] avg;

    initial begin
        nums[0] = 8'd5;
        nums[1] = 8'd10;
        nums[2] = 8'd15;
        nums[3] = 8'd20;

        // Call task to compute average
        compute_average(nums[0], nums[1], nums[2], nums[3], avg);
        $display("avg=%d", avg);
    end

    // Task to compute average of 4 values
    task compute_average(
        input [7:0] a, b, c, d,
        output [15:0] average
    );
        integer sum;
        begin
            sum = a + b + c + d;
            average = sum / 4;
            $display("sum=%d",sum);
        end
    endtask
endmodule


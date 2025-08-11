`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 11:02:00
// Design Name: 
// Module Name: blinking_led
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


module blinking_led(
    input wire clk,
    input wire reset,
    output reg led
);

    parameter DELAY = 100;
    reg [25:0] counter = 0;

    // Task for delay logic
    task do_delay;
        begin
            if (counter < DELAY) begin
                counter = counter + 1;
            end else begin
                counter = 0;
                led = ~led;
            end
        end
    endtask

    // Main always block using the task
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            led <= 0;
        end else begin
            do_delay();  // Call the task
        end
    end

endmodule

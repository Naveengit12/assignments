`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 11:26:28
// Design Name: 
// Module Name: blinking_led_tb
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


module blinking_led_tb;
    reg clk;
    reg reset;
    wire led;

    // Instantiate the DUT
    blinking_led uut (.clk(clk), .reset(reset), .led(led));

    // Clock generator
    always #10 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #50;
        reset = 0;
        #100;
        $stop;
    end

endmodule


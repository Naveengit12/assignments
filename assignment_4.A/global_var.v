`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 21:09:28
// Design Name: 
// Module Name: global_var
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


module global_var;
reg [7:0] global_counter;

    // Task to drive the global variable
    task drive_global;
        input [7:0] value;
        begin
            $display("Before: global_counter = %0d", global_counter);
            global_counter = value;
            $display("After:  global_counter = %0d", global_counter);
        end
    endtask

    // Initial block to call the task
    initial begin
        global_counter = 0;        
        #5;
        drive_global(25);         
        #5;
        drive_global(100);        
    end
 endmodule
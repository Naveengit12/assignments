`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 12:17:07
// Design Name: 
// Module Name: circular_shift
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


module circular_shift;
reg [7:0] data;  // 8-bit register

    initial begin
        data = 8'b10101010;
        $display("data=%b", data);

        // Call the task
        circular_left_shift(data);
        $display("data=%b", data);
    end

    // Task to perform left circular shift
    task circular_left_shift;
        inout [7:0] value;  

        begin
            value = {value[6:0], value[7]};
        end
    endtask
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:37:48
// Design Name: 
// Module Name: sub_task
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


module sub_task;
reg[7:0]a,b;

task sub;
input[7:0]x,y;
begin
$display("sub=%d",x-y);
end
endtask

initial begin
a=97; b=68;
sub(a,b);
end
endmodule

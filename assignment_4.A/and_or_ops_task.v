`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:51:28
// Design Name: 
// Module Name: and_or_ops_task
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


module and_or_ops_task;
reg[7:0]x,y;

task and_or_ops;
input[7:0]a,b;
begin
$display("and=%d,or=%d",a&b,a|b);
end
endtask

initial begin
x=8'b11; y=8'b101;
and_or_ops(x,y);
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 19:21:59
// Design Name: 
// Module Name: D_latch
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
primitive D_latch (q, clk, d);
	output 	q;
	input 	clk, d;
	reg  	q;

	table
		// clk 	d 		q 	q+
			1 	1 	:	? :	1;
			1 	0 	: 	? : 0;
			0 	? 	: 	? : -;
	endtable
endprimitive

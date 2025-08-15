`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 10:35:22
// Design Name: 
// Module Name: prime_num_fucn
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


module prime_num_fucn(
    input  [7:0] num,
    output prime_num
);

    assign prime_num = check_prime(num);

    // Function to check if a number is prime
    function automatic check_prime;
        input [7:0] n;
        integer i;
        begin
            if (n <= 1) begin
                check_prime = 0;
            end 
            else begin
             // assume it's prime
                check_prime = 1;
                for (i = 2; i < n; i = i + 1) begin
                    if (n % i == 0)
                        check_prime = 0;
                end
            end
        end
    endfunction
endmodule


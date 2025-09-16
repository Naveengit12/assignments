module sequence_detect_tb;
 reg clk;
    reg reset_n;
    reg x;
    wire y;

    sequence_detect uut (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        reset_n = 0;
        x = 0;
        #12;
        reset_n = 1;
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 0;  
        @(posedge clk);
        x = 1; 

        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 1;  
        @(posedge clk);
        x = 0; 

        @(posedge clk);
        x = 1;
        @(posedge clk);
        x = 0;
        @(posedge clk);
        x = 1;
        @(posedge clk);
        x = 1;
        @(posedge clk);
        x = 1;  
       
        #30;
        $stop;
    end

    initial begin
        $monitor("Time=%0t clk=%b reset_n=%b x=%b y=%b", $time, clk, reset_n, x, y);
    end
endmodule

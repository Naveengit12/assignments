module priority_encoder_tb;
    reg [7:0] in;
    wire [2:0] out;
    wire priority;

    priority_encoder uut (
                           .in(in),
                           .out(out),
                            .priority(priority));

    initial begin
        $monitor("%0t\t%b\t%b\t\t%03b", $time, in, priority, out);
        in = 8'b00000000;  //  no input active
        #10;

        in = 8'b00000001; //lowest priority input active
        #10;
 
        in = 8'b00000100;  //input[2] active
        #10;

        in = 8'b01000010;  // multiple inputs active (input[6] and input[1])
        #10;
 
        in = 8'b10000000; //highest priority input active
        #10;

        in = 8'b10001001; // multiple inputs active (input[7], input[3], input[0])
        #10;

        $finish;
    end
endmodule

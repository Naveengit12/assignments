module priority_encoder(in,out,priority);
input [7:0] in;
output reg[2:0] out;
output reg priority;

always @(*) begin
casez(in)
      8'b1??????? : begin
                    out = 3'b111;
                    priority = 1;    // highest peiority
                    end

      8'b01?????? : begin
                    out = 3'b110;
                    priority = 1;
                    end
                    
      8'b001????? : begin
                    out = 3'b101;
                    priority = 1;
                    end
                    
      8'b0001???? : begin
                    out = 3'b100;
                    priority = 1;
                    end  
                    
      8'b00001??? : begin
                    out = 3'b011;
                    priority = 1;
                    end  
                    
      8'b000001?? : begin
                    out = 3'b010;
                    priority = 1;
                    end
                    
      8'b0000001? : begin
                    out = 3'b001;
                    priority = 1;
                    end
                    
      8'b00000001 : begin
                    out = 3'b000;
                    priority = 1; // lowest priority
                    end
       
       default : begin
                 out = 3'b000;
                 priority = 0; // no active priority
                 end             
              endcase
           end                        
  endmodule
  

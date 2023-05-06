`timescale 1ns / 1ps

module ShiftRegister(in, out, clk, rst);
    input in, clk, rst;
    output[3:0] out;
    reg[3:0] out;
    
    initial begin
    out =4'b1010;
    end
   
    always@(posedge clk) begin
        if(rst==1)
          out=4'b0000;
        else begin
        out = out<<1;           
        out[0] = in;
        end
   end
endmodule
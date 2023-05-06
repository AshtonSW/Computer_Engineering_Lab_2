`timescale 1ns / 1ps

module RingCounter(out, clk, rst);
    input clk, rst;
    output[3:0] out;
    reg[3:0] out;
    
    initial begin
    out = 4'b0001;
    end
   
    always@(posedge clk) begin
        if(rst==1) out=4'b0000;
        else begin
        out = {out[2:0],out[3]};
        end
   end
endmodule
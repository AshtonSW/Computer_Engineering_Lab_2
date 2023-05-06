`timescale 1ns / 1ps


module sequence1101mealy(
    input data, clk, rst,
    output out
    );
    reg [3:0]outseq;
    reg out;
    
    initial begin
        outseq = 4'b0000;
    end
    
    always @(posedge clk) begin
        if(rst == 1) begin
            outseq <= 4'b0000;
            out <= 0;
        end
        else begin
        
            outseq = outseq << 1;
            outseq[0] = data;
            if (outseq == 4'b1101) out=1;
            else out =0;
        end          
    end
        
endmodule

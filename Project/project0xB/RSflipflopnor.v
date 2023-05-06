`timescale 1ns / 1ps

module RSflipflopnor(
    input s, r, clk,
    output q1, q2
    );
    
    assign q1=~((r & (clk)) | q2);
    assign q2 = ~((s &(clk)) | q1);
    
    
endmodule

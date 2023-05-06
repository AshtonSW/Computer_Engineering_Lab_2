`timescale 1ns / 1ps

module demux1to4(
input s0, s1, f,
output a,b,c,d
);
    
    assign a = ~s0 & ~s1 & f;
    assign b = s0 & ~s1 & f;
    assign c = ~s0 & s1 & f;
    assign d = s0 & s1 & f;
             
endmodule

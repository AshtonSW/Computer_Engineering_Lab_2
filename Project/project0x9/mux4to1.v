`timescale 1ns / 1ps

module mux4to1(
input a,b,c,d,s0,s1,
output f
);
    
    assign f = (a&~s0&~s1) | (b & ~s1 & s0) | (c& s1 & ~s0) | (d & s1 & s0);

             
endmodule

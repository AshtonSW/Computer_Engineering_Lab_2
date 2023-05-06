`timescale 1ns / 1ps


module ANDG4in(
input a,b,c,d,
output E,F,G
    );
  
  
 assign E = a&b;
 assign F = E&c;
 assign G = F&d;  
  
endmodule

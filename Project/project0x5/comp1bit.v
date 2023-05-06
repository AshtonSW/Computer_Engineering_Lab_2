`timescale 1ns / 1ps

module comp1bit(
input a,b,
output x,y,z,w

    );
   
    assign x= ~(a^b),
    y = a^b,
    z = a&(~b),
    w= (~a)&b;
    
endmodule

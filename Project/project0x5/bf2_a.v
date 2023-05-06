`timescale 1ns / 1ps

module bf2_a(
input a,b,c,
output x

    );
   
    assign x=(~a&~b)|~c;
    
    
endmodule

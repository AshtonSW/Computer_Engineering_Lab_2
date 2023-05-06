`timescale 1ns / 1ps

module bf2_b(
input a,b,c,
output y

    );
   
    assign y=~((a|b)&c);
    
    
endmodule

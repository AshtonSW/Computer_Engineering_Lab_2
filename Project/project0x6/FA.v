`timescale 1ns / 1ps

module FA(
input a,b,ci,
output co, s
    );
    
    assign s = (a^b)^ci,
    co = (a&b)|(ci&(a^b));
endmodule

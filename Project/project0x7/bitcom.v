`timescale 1ns / 1ps


module bitcom(
input a, b, c, d,
output f1, f2, f3
    );
    
    assign f1 = a&~c | (b&~d)&(a|~c),
    f2 = ~(a^c)&~(b^d),
    f3 = ~a&c | (~b&d)&(~a|c);
endmodule

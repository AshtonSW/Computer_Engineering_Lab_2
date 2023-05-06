`timescale 1ns / 1ps

module seg7(
input a,b,c,d,
output outa, outb, outc, outd, oute, outf, outg, outdp, digit);
    
    assign outa = (~a&c)|(a&~d)|(~a&~b&~c&~d)|(~a&b&~c&d)|(a&b&c&d)|(a&~b&~c&d);
    assign outb = (~a&~b)|(~a&~c&~d)|(~b&~c)|(a&~b&~d)|(a&~c&d)|(~a&c&d);
    assign outc = (~a&~c)|(a&~b)|(~c&d)|(~a&d)|(~a&b&c);
    assign outd = (~b&~c&~d)|(a&~c&~d)|(b&~c&d)|(~b&c&d)|(~a&~b&c)|(b&c&~d);
    assign oute = (a&c)|(c&~d)|(a&~d)|(a&b)|(~a&~b&~d);
    assign outf = (b&~d)|(a&~b)|(~a&~c&~d)|(~a&b&~c)|(a&c&d);
    assign outg = (a&~b)|(~b&c)|(c&~d)|(~a&b&~c)|(a&b&d);
    assign outdp = 1;
    assign digit = outa|outb|outc|outd|oute|outf|outg|outdp;
    
    
endmodule

`timescale 1ns / 1ps

module bf1_b(
input a,b,c,
output y

   );
  
    assign y=~((a&b)|c);
    
endmodule
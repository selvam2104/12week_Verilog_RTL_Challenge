`timescale 1ns / 1ps

//Project Description: Binary to Gray code conversion implementation
//Module: bin_gray
//Created by Pradeep (GitHub - selvam2104)

module bin_gray(
    input [3:0] bi,
    output [3:0] gray
    );
    
    assign gray = bi ^ (bi >> 1);
    
endmodule


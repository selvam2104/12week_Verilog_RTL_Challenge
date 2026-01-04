`timescale 1ns / 1ps

//Project Description: Parameterized comparator implementation
//Module: comparator
//Created by Pradeep (GitHub - selvam2104)

module comparator #(
    parameter N = 4
    )(
    input [N-1:0] A,
    input [N-1:0] B,
    output GT, LT, EQ
    );
    
    assign EQ = (A == B);
    assign GT = (A > B);
    assign LT = (A < B);
    
endmodule


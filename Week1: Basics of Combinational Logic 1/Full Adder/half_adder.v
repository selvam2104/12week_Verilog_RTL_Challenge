`timescale 1ns / 1ps

//Project Description: A Half Adder implementation
//Module: half_adder
//Created by Pradeep (GitHub - selvam2104)

module half_adder(
    input A,B,  //inputs single-bit A and B
    output Y,C  //outputs Y - sum and C - carry
    );
    
    assign Y = A^B; //sum of A and B
    assign C = A&B; //carry of A and B
    
endmodule


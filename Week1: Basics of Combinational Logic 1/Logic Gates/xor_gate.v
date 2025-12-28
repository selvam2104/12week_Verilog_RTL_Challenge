`timescale 1ns / 1ps

//Project Description: A simple XOR Gate implementation
//Module: XOR_Gate
//Created by Pradeep (GitHub - selvam2104)

module xor_gate(
    output Y,
    input A,
    input B
    );
    
    assign Y = A ^ B;   //using xor operator
    
endmodule


`timescale 1ns / 1ps

//Project Description: A simple XNOR Gate implementation
//Module: XNOR_Gate
//Created by Pradeep (GitHub - selvam2104)

module xnor_gate(
    output Y,
    input A,
    input B
    );
    
    assign Y = ~(A^B);
    
endmodule


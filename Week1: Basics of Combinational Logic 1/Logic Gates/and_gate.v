`timescale 1ns / 1ps

//Project Description: A simple AND Gate implementation
//Module: AND_Gate
//Created by Pradeep (GitHub - selvam2104)

module and_gate(
    output Y,
    input A,
    input B
    );
    
    assign Y = A & B;   //using AND operator
    
endmodule


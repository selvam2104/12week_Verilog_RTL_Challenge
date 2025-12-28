`timescale 1ns / 1ps

//Project Description: A simple OR Gate implementation
//Module: OR_Gate
//Created by Pradeep (GitHub - selvam2104)

module or_gate(
    output Y,
    input A,
    input B
    );
    
    assign Y = A | B;   //using OR operator
    
endmodule


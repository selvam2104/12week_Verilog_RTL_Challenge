`timescale 1ns / 1ps

//Project Description: A simple NOT Gate implementation
//Module: NOT_Gate
//Created by Pradeep (GitHub - selvam2104)

module not_gate(
    output Y,
    input A
    );
    
    assign Y = ~A;  //using NOT operator
    
endmodule


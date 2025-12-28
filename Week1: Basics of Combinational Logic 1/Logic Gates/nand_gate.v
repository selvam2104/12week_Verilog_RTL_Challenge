`timescale 1ns / 1ps

//Project Description: A simple NAND Gate implementation
//Module: NAND_Gate
//Created by Pradeep (GitHub - selvam2104)

module nand_gate(
    output Y,
    input A,
    input B
    );
    
    assign Y = ~(A&B);
    
endmodule


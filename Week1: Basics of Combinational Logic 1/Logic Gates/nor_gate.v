`timescale 1ns / 1ps

//Project Description: A simple NOR Gate implementation
//Module: NOR_Gate
//Created by Pradeep (GitHub - selvam2104)

module nor_gate(
    output Y,
    input A,
    input B
    );
    
    assign Y = ~(A|B);  //using not and or operators
    
endmodule


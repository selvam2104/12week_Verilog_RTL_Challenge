`timescale 1ns / 1ps

//Project Description: A 2 input multiplexer implementation
//Module: mux_2
//Created by Pradeep (GitHub - selvam2104)

module mux_2(
    output Y,
    input A,
    input B,
    input sel
    );
    
    assign Y = sel ? B : A; // sel == 1 -> B; sel == 0 -> A
    
endmodule


`timescale 1ns / 1ps

//Project Description: 4 input multiplexer implementation
//Module: mux_4
//Created by Pradeep (GitHub - selvam2104)

module mux_4(
    output Y,
    input A,B,C,D,
    input [1:0] sel
    );
    
    wire Y1,Y2;
    
    //Two 2-to-1 mux  -  A or B  and  C or D  selector
    mux_2 u1(.A(A),.B(B),.Y(Y1),.sel(sel[0]));
    mux_2 u2(.A(C),.B(D),.Y(Y2),.sel(sel[0]));
    
    //One 2-to-1 mux
    mux_2 u3(.A(Y1),.B(Y2),.Y(Y),.sel(sel[1]));
    
endmodule


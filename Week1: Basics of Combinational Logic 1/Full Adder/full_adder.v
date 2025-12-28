`timescale 1ns / 1ps

//Project Description: A Full Adder implementation
//Module: full_adder
//Created by Pradeep (GitHub - selvam2104)

module full_adder(
    input A,B,C_in,
    output Y,C_out
    );
    
    wire w0;
    wire c0,c1;
    
    half_adder uut1 (.A(A),.B(B),.Y(w0),.C(c0));
    half_adder uut2 (.A(w0),.B(C_in),.Y(Y),.C(c1));
    
    assign C_out = c0|c1;
    
endmodule


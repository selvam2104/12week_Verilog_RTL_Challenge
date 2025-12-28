`timescale 1ns / 1ps

//Project Description: 4-bit Ripple Carry Adder implementation
//Module: rca
//Created by Pradeep (GitHub - selvam2104)

module rca(
    input [3:0] A,B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    wire C1,C2,C3;
    
    full_adder uut1 (.A(A[0]),.B(B[0]),.C_in(Cin),.Y(Sum[0]),.C_out(C1));
    full_adder uut2 (.A(A[1]),.B(B[1]),.C_in(C1),.Y(Sum[1]),.C_out(C2));
    full_adder uut3 (.A(A[2]),.B(B[2]),.C_in(C2),.Y(Sum[2]),.C_out(C3));
    full_adder uut4 (.A(A[3]),.B(B[3]),.C_in(C3),.Y(Sum[3]),.C_out(Cout));
    
endmodule


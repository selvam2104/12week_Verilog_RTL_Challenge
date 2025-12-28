`timescale 1ns / 1ps

//Project Description: 4-bit Carry Look Ahead Adder implementation
//Module: cla
//Created by Pradeep (GitHub - selvam2104)

module cla(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    wire [3:0] G, P;
    wire C1, C2, C3;
    
    //Generate Gi = Ai and Bi
    assign G = A & B;
    
    //Propagate Pi = Ai xor Bi
    assign P = A ^ B;
    
    //Carry Look Ahead logic
    assign C1 = G[0] | (P[0] & Cin);
    assign C2 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign C3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);

    //Sum
    assign Sum[0] = P[0] ^ Cin;
    assign Sum[1] = P[1] ^ C1;
    assign Sum[2] = P[2] ^ C2;
    assign Sum[3] = P[3] ^ C3;

endmodule


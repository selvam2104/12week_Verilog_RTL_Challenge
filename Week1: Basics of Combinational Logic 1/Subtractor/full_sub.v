`timescale 1ns / 1ps

//Project Description: A Full Subtractor implementation
//Module: full_sub
//Created by Pradeep (GitHub - selvam2104)

module full_sub(
    input A, B, Bin,
    output Diff, Bout
    );
    
    wire d1, b1, b2;
    
    half_sub uut1 (.A(A),.B(B),.Diff(d1),.Bout(b1));
    half_sub uut2 (.A(d1),.B(Bin),.Diff(Diff),.Bout(b2));

    assign Bout = b1 | b2;

endmodule


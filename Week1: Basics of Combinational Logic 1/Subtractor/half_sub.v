`timescale 1ns / 1ps

//Project Description: A Half Subtractor implementation
//Module: half_sub
//Created by Pradeep (GitHub - selvam2104)

module half_sub(
    input A,B,  //inputs single-bit A and B
    output Diff,Bout  //outputs Difference and Borrow out
    );

    assign Diff = A ^ B; //Difference between A and B
    assign Bout = (~A) & B; //Borrow
    
endmodule

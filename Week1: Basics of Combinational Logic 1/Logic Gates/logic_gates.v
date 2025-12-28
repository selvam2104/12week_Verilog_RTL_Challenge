`timescale 1ns / 1ps

//Project Description: Logic gates implementations
//Module: logic_gate - top module
//Created by Pradeep (GitHub - selvam2104)

module logic_gates(
    output and_Y,
    output nand_Y,
    output or_Y,
    output nor_Y,
    output xor_Y,
    output xnor_Y,
    output not_Y,
    input A,
    input B
    );
    
    and_gate u1(.Y(and_Y),.A(A),.B(B));
    nand_gate u2(.Y(nand_Y),.A(A),.B(B));
    or_gate u3(.Y(or_Y),.A(A),.B(B));
    nor_gate u4(.Y(nor_Y),.A(A),.B(B));
    xor_gate u5(.Y(xor_Y),.A(A),.B(B));
    xnor_gate u6(.Y(xnor_Y),.A(A),.B(B));
    not_gate u7(.Y(not_Y),.A(A));
    
endmodule


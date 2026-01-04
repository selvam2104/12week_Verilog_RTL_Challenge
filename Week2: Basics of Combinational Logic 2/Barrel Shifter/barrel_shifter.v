`timescale 1ns / 1ps

//Project Description: Barrel Shifter (left/right) implementation
//Module: barrel_shifter
//Created by Pradeep (GitHub - selvam2104)

module barrel_shifter #(
    parameter WIDTH = 8
    )(
    input [WIDTH-1:0] data_in,
    input [$clog2(WIDTH)-1:0] shift,
    input dir,      //0 -> left, 1 -> right
    output [WIDTH-1:0] data_out
    );
    
    assign data_out = (dir == 1'b0) ? (data_in << shift) : (data_in >> shift);
    
endmodule


`timescale 1ns / 1ps

//Project Description: A 3:8 decoder implementation
//Module: decoder_3
//Created by Pradeep (GitHub - selvam2104)

module decoder_3(
    input [2:0] in,
    input en_in,
    output [7:0] out
    );
    
    assign out = en_in ? (8'b00000001 << in) : 8'b00000000;
    
endmodule


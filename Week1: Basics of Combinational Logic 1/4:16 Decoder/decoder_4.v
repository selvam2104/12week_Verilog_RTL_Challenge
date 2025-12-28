`timescale 1ns / 1ps

//Project Description: A 4:16 decoder implementation
//Module: decoder_4
//Created by Pradeep (GitHub - selvam2104)

module decoder_4(
    input [3:0] in,
    input en_in,
    output [15:0] out
    );
    
    wire en_low, en_high;
    
    assign en_low = en_in & (~in[3]);
    assign en_high = en_in & (in[3]);
    
    decoder_3 d0 (
            .in(in[2:0]),
            .en_in(en_low),
            .out(out[7:0]));
    
    decoder_3 d1 (
            .in(in[2:0]),
            .en_in(en_high),
            .out(out[15:8]));
    
endmodule


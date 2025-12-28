`timescale 1ns / 1ps

//Project Description: A 1-to-8 demultiplexer implementation using 1:2 & 1:4 demux
//Module: demux_8
//Created by Pradeep (GitHub - selvam2104)

module demux_8(
    input in,
    input [2:0] sel,
    output reg [7:0] Y
    );
    
    reg sel1;
    reg [1:0] sel2;
    wire [3:0] out1, out2;
    wire A,B;
    
    always @(*) begin
        sel1 = sel[2];
        sel2 = sel[1:0];
    end
    
    demux_2 uut1 (.in(in),.sel(sel1),.Y0(A),.Y1(B));
    demux_4 uut2 (.in(A),.sel(sel2),.out(out1));
    demux_4 uut3 (.in(B),.sel(sel2),.out(out2));
    
    always @(*) begin
        Y[3:0] = out1;
        Y[7:4] = out2;
    end
        
endmodule


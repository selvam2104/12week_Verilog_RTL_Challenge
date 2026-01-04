`timescale 1ns / 1ps

//Project Description: Gray code to Binary conversion implementation
//Module: gray_bin
//Created by Pradeep (GitHub - selvam2104)

module gray_bin #(
    parameter N = 4
    )(
    input [N-1:0] gray,
    output reg [N-1:0] bin
    );
    
    integer i;
    
    always @(*) begin
        bin[N-1] = gray[N-1];
        
        for (i=(N-2);i>=0;i=i-1) begin
            bin[i] = bin[i+1] ^ gray[i];
        end
    end
    
endmodule


`timescale 1ns / 1ps

//Project Description: A Bit Reverser implementation
//Module: bit_reserver
//Created by Pradeep (GitHub - selvam2104)

module bit_reverser#(
    parameter WIDTH = 4
    )(
    input [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out
    );
    
    integer i;
    
    always @(*) begin
        for(i=0;i<WIDTH;i=i+1) begin
            data_out[i] = data_in[(WIDTH-1)-i];
        end
    end
    
endmodule


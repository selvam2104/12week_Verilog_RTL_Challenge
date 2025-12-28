`timescale 1ns / 1ps

//Project Description: A 2:4 decoder implementation
//Module: decoder_2
//Created by Pradeep (GitHub - selvam2104)

module decoder_2(
    input [1:0] in,
    input en_in,
    output reg [3:0] out
    );
            
    always @(*) begin
        out = 4'b0000;
        if (en_in) begin
            case (in)
                2'b00 : out[0] = 1'b1;
                2'b01 : out[1] = 1'b1;
                2'b10 : out[2] = 1'b1;
                2'b11 : out[3] = 1'b1;
            endcase
        end
    end
    
endmodule


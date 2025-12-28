`timescale 1ns / 1ps

//Project Description: A 4:2 encoder with priority implementation
//Module: p_encoder_4
//Created by Pradeep (GitHub - selvam2104)

module p_encoder_4(
    input [3:0] in,
    output reg [1:0] out,
    output reg valid
    );
    
    always @(*) begin
        valid = 1'b1;
        
        casez (in)
            4'b1??? : out = 2'b11;
            4'b01?? : out = 2'b10;
            4'b001? : out = 2'b01;
            4'b0001 : out = 2'b00;
            default : begin
                valid = 1'b0;
                out = 2'b00;
            end
        endcase
        
    end
    
endmodule


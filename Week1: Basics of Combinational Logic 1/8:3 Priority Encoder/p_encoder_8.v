`timescale 1ns / 1ps

//Project Description: A 8:3 encoder with priority implementation
//Module: p_encoder_8
//Created by Pradeep (GitHub - selvam2104)

module p_encoder_8(
    input [7:0] in,
    output reg [2:0] out,
    output reg valid
    );
    
    wire [1:0] out_high, out_low;
    wire valid_high, valid_low;
    
    p_encoder_4 p0 (.in(in[7:4]),.out(out_high),.valid(valid_high));
    p_encoder_4 p1 (.in(in[3:0]),.out(out_low),.valid(valid_low));
    
    always @(*) begin
        if (valid_high) begin
            out[2] = valid_high;
            out[1:0] = out_high;
            valid = 1'b1;
        end
        else if (valid_low) begin
            out[2] = 1'b0;
            out[1:0] = out_low;
            valid = 1'b1;
        end
        else begin
            out = 3'b0;
            valid = 1'b0;
        end
    end
    
endmodule


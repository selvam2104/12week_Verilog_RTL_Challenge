`timescale 1ns / 1ps

//Project Description: A 1-to-2 demultiplexer implementation
//Module: demux_2
//Created by Pradeep (GitHub - selvam2104)

module demux_2(
    input in,
    input sel,
    output reg Y0,Y1
    );
    
    always @(*) begin
        Y0 = 0; Y1 = 0; //setting default values
        case (sel)
            1'b0 : Y0 = in;
            1'b1 : Y1 = in;
        endcase
    end
    
endmodule


`timescale 1ns / 1ps

//Project Description: Multiplexer using tristate implementation
//Module: mux_tristate
//Created by Pradeep (GitHub - selvam2104)

module mux_tristate(
    input d0, d1,
    input sel,
    output Y
    );
    
    assign Y = (~sel) ? d0 : 1'bz;
    assign Y = (sel) ? d1 : 1'bz;
    
endmodule


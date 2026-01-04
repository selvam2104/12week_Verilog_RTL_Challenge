`timescale 1ns / 1ps

//Project Description: Parity Generator & Checker implementation
//Module: parity
//Created by Pradeep (GitHub - selvam2104)

module parity(
    input [3:0] data,
    output even_parity, odd_parity,
    output even_error, odd_error
    );
    
    assign even_parity = ^data;
    assign odd_parity = ~(^data);

    assign even_error = (^data) ^ even_parity;
    assign odd_error = ~((^data) ^ odd_parity);    

endmodule


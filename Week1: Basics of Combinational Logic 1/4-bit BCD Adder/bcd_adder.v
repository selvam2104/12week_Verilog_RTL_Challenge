`timescale 1ns / 1ps

//Project Description: A BCD Adder implementation
//Module: bcd_adder
//Created by Pradeep (GitHub - selvam2104)


module bcd_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

    wire [4:0] bin_sum;
    wire correction;
    wire [4:0] corrected_sum;

    assign bin_sum = A + B + Cin;

    assign correction = bin_sum[4] |
                        (bin_sum[3] & (bin_sum[2] | bin_sum[1]));

    assign corrected_sum = bin_sum + (correction ? 5'b00110 : 5'b00000);

    assign Sum  = corrected_sum[3:0];
    assign Cout = corrected_sum[4];

endmodule


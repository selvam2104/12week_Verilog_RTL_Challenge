`timescale 1ns / 1ps

//Project Description: A Adder-Subtractor System implementation
//Module: add_sub
//Created by Pradeep (GitHub - selvam2104)

module add_sub(
    input [3:0] A, B,
    input sel,      //0 - Add ; 1 - Sub
    output [3:0] Sum,
    output Cout
    );
    
    wire [3:0] B_inv;
    wire [4:0] C;
    
    assign B_inv = B ^ {4{sel}};
    assign C[0] = sel;
        
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : adder_gen
            full_adder FA (.A(A[i]),
                        .B(B_inv[i]),
                        .C_in(C[i]),
                        .Y(Sum[i]),
                        .C_out(C[i+1]));
        end
    endgenerate
    
    assign Cout = C[4];
    
endmodule


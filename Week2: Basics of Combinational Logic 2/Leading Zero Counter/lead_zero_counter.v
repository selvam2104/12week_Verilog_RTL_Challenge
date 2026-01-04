`timescale 1ns / 1ps

//Project Description: A Leading Zero Counter implementation
//Module: lead_zero_count
//Created by Pradeep (GitHub - selvam2104)

module lead_zero_count #(
    parameter WIDTH = 4
    )(
    input [WIDTH-1:0] data_in,
    output reg [$clog2(WIDTH):0] lz_count
    );
    
    integer i;
    reg found;
    
    always @(*) begin
        lz_count = WIDTH;
        found = 0;
        
        for (i=(WIDTH-1);i>=0;i=i-1) begin
            if ((data_in[i]==1'b1) && (!found)) begin
                lz_count = (WIDTH-1) - i;
                found = 1;
            end
        end
    end
    
endmodule


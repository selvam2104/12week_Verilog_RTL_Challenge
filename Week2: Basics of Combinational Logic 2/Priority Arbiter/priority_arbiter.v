`timescale 1ns / 1ps

//Project Description: A Parameterized Priority Arbiter implementation
//Module: priority_arbiter
//Created by Pradeep (GitHub - selvam2104)

module priority_arbiter #(
    parameter WIDTH = 4
    )(
    input [WIDTH-1:0] req,
    output reg [WIDTH-1:0] grant
    );
    
    integer i;
    reg flag;
    
    always @(*) begin
        grant = 'b0;
        flag = 0;
        
        for (i=(WIDTH-1);i>=0;i=i-1) begin
            if ((req[i] == 1) && (flag !== 1)) begin
                grant[i] = 1'b1;
                flag = 1;
            end
        end
        
    end
    
endmodule


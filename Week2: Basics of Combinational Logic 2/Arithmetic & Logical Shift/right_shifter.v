`timescale 1ns / 1ps

//Project Description: Right shifter using logical & arithmetic implementation
//Module: right_shifter
//Created by Pradeep (GitHub - selvam2104)

module right_shifter #(
    parameter WIDTH = 8
    )(
    input signed [WIDTH-1:0] data_in,
    input [$clog2(WIDTH)-1:0] shift,
    input mode,     //0 -> logical shift;   1 -> arithmetic shift
    output reg [WIDTH-1:0] data_out
    );
    
    integer i;
    
    always @(*) begin
        data_out = 0;
        for (i=0;i<WIDTH;i=i+1) begin
            if ((i+shift) < WIDTH) begin
                data_out[i] = data_in[i+shift];
            end
            else begin
                if (mode == 0)
                    data_out[i] = 1'b0; //logical
                else
                    data_out[i] = data_in[WIDTH-1];    //arithmetic
            end
        end
    end
    
endmodule


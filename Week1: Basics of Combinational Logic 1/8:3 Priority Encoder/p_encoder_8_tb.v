`timescale 1ns / 1ps

//Project Description: Testbench 8:3 encoder with priority implementation
//Module: p_encoder_8_tb
//Created by Pradeep (GitHub - selvam2104)

module p_encoder_8_tb;

    reg [7:0] in;
    wire [2:0] out;
    wire valid;
    
    p_encoder_8 uut (.in(in),.out(out),.valid(valid));
    
    integer i;
    reg [2:0] expected_out;
    reg expected_valid;
    
    initial begin
        for (i=0;i<256;i=i+1) begin
            in = i;
            
            if (in[7] == 1) begin
                expected_out = 3'b111;
                expected_valid = 1'b1;
            end
            else if (in[6] == 1) begin
                expected_out = 3'b110;
                expected_valid = 1'b1;
            end
            else if (in[5] == 1) begin
                expected_out = 3'b101;
                expected_valid = 1'b1;
            end
            else if (in[4] == 1) begin
                expected_out = 3'b100;
                expected_valid = 1'b1;
            end
            else if (in[3] == 1) begin
                expected_out = 3'b011;
                expected_valid = 1'b1;
            end
            else if (in[2] == 1) begin
                expected_out = 3'b010;
                expected_valid = 1'b1;
            end
            else if (in[1] == 1) begin
                expected_out = 3'b001;
                expected_valid = 1'b1;
            end
            else if (in[0] == 1) begin
                expected_out = 3'b000;
                expected_valid = 1'b1;
            end
            else begin
                expected_out = 3'b000;
                expected_valid = 1'b0;
            end
            #1;
            
            if (out !== expected_out || valid !== expected_valid) begin
                $display("FAILED.");
                $finish;
            end
            
        end
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("p_encoder_8.vcd");
	$dumpvars(0, p_encoder_8_tb);
	
	$monitor("Time=%0t | input=%b | output=%b | valid=%b",$time,in,out,valid);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for 4:2 encoder with priority implementation
//Module: p_encoder_4_tb
//Created by Pradeep (GitHub - selvam2104)

module p_encoder_4_tb;

    reg [3:0] in;
    wire [1:0] out;
    wire valid;
    
    p_encoder_4 uut (.in(in),.out(out),.valid(valid));
    
    integer i;
    reg [1:0] expected_out;
    reg expected_valid;
    
    initial begin
    
        $display("Starting self-checking testbench ...");
        
        for (i=0;i<16;i=i+1) begin
            in = i;
            if (in[3] == 1) begin
                expected_out = 2'b11;
                expected_valid = 1'b1;
            end
            else if (in[2] == 1) begin
                expected_out = 2'b10;
                expected_valid = 1'b1;
            end
            else if (in[1] == 1) begin
                expected_out = 2'b01;
                expected_valid = 1'b1;
            end
            else if (in[0] == 1) begin
                expected_out = 2'b00;
                expected_valid = 1'b1;
            end
            else begin
                expected_out = 2'b00;
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
	$dumpfile("p_encoder_4.vcd");
	$dumpvars(0, p_encoder_4_tb);

	$monitor("Time=%0t | input=%b | output=%b | valid=%b",$time,in,out,valid);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for 2:4 decoder implementation
//Module: decoder_2_tb
//Created by Pradeep (GitHub - selvam2104)

module decoder_2_tb;

    reg [1:0] in;
    reg en_in;
    wire [3:0] out;
    
    decoder_2 uut (.in(in),.en_in(en_in),.out(out));
    
    integer i,j;
    reg [3:0] expected = 4'b0000;
    
    initial begin
        $display ("Starting Testbench ...");
        
        //self-testing testbench
        
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                in = i;
                en_in = j;
                if (en_in) begin
                    expected = 4'b0001 << in;
                end
                else
                    expected = 4'b0000;
                #1;
                
                if (out !== expected) begin
                    $display ("FAILED.");
                    $finish;
                end
                
            end
        end
        
        $display ("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("decoder_2.vcd");
	$dumpvars(0, decoder_2_tb);
	
	$monitor("Time=%0t | input=%b | enable=%b | output=%b",$time,in,en_in,out);

    end

endmodule


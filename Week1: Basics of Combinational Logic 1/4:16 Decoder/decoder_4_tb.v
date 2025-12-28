`timescale 1ns / 1ps

//Project Description: Testbench for 4:16 decoder implementation
//Module: decoder_4_tb
//Created by Pradeep (GitHub - selvam2104)

module decoder_4_tb;

    reg [3:0] in;
    reg en_in;
    wire [15:0] out;
    
    decoder_4 uut (.in(in),.en_in(en_in),.out(out));
    
    integer i,j;
    reg [15:0] expected;
    
    initial begin
        
        $display("Starting self-checking testbench ...");
        
        for (i=0;i<16;i=i+1) begin
            for (j=0;j<2;j=j+1) begin
                in = i;
                en_in = j;
                
                if (en_in)
                    expected = 16'b1 << in;
                else
                    expected = 16'b0;
               
                #1;
                
                if (out!==expected) begin
                    $display("FAILED.");
                    $finish;
                end
                                
            end
        end
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("decoder_4.vcd");
	$dumpvars(0, decoder_4_tb);
	
	$monitor("Time=%0t | input=%b | enable=%b | output=%b",$time,in,en_in,out);

    end

endmodule


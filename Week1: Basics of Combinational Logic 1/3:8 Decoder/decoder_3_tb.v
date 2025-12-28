`timescale 1ns / 1ps

//Project Description: Testbench for 3:8 decoder implementation
//Module: decoder_3
//Created by Pradeep (GitHub - selvam2104)

module decoder_3_tb;
    
    reg [2:0] in;
    reg en_in;
    wire [7:0] out;

    decoder_3 uut (.in(in),.en_in(en_in),.out(out));

    integer i,j;
    reg [7:0] expected = 8'b0;

    initial begin
        $display("Starting self-testing Testbench ...");
        
        for (i=0;i<8;i=i+1) begin
            for (j=0;j<2;j=j+1) begin
                in = i;
                en_in = j;
                if (en_in)
                    expected = 8'b00000001 << in;
                else
                    expected = 8'b00000000;
                #1;
                
                if (out!==expected) begin
                    $display("FAILED");
                    $finish;
                end
                
            end
        end
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("decoder_3.vcd");
	$dumpvars(0, decoder_3_tb);
	
	$monitor("Time=%0t | input=%b | enable=%b | output=%b",$time,in,en_in,out);

    end

endmodule


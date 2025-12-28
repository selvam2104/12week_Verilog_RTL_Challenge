`timescale 1ns / 1ps

//Project Description: Testbench for 1-to-4 demultiplexer
//Module: demux_4_tb
//Created by Pradeep (GitHub - selvam2104)

module demux_4_tb;
    reg in;
    reg [1:0] sel;
    wire [3:0] out;
    
    demux_4 uut(.in(in),.sel(sel),.out(out));
    
    initial begin
        $display("Starting Testbench ...");
        in = 1;
        
        //case-1
        sel = 2'b00; #10
        if (out !== 4'b0001) $display("FAILED.");
        
        //case-2
        sel = 2'b01; #10
        if (out !== 4'b0010) $display("FAILED.");
        
        //case-3
        sel = 2'b10; #10
        if (out !== 4'b0100) $display("FAILED.");
        
        //case-4
        sel = 2'b11; #10
        if (out !== 4'b1000) $display("FAILED.");
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("demux_4.vcd");
	$dumpvars(0, demux_4_tb);
	
	$monitor("Time=%0t | input=%b | sel=%b | output=%b",$time,in,sel,out);

    end
    
endmodule


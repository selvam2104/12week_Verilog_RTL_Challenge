`timescale 1ns / 1ps

//Project Description: Testbench for 1-to-2 demultiplexer
//Module: demux_2_tb
//Created by Pradeep (GitHub - selvam2104)

module demux_2_tb;

    reg in, sel;
    wire Y0, Y1;
    
    demux_2 uut(.in(in),.Y0(Y0),.Y1(Y1),.sel(sel));
    
    initial begin
        $display("Starting Testbench ...");
        //Testing differnent input combinations
        in = 1;
        
        //case 1
        sel = 0; #10
        if (Y0!==1) $display("FAILED");
        
        //case 2
        sel = 1; #10
        if (Y1!==1) $display("FAILED");
        
        $display("Testbench Completed");
        $finish;
        
    end

   initial begin 
	$dumpfile("demux_2.vcd");
	$dumpvars(0, demux_2_tb);
	
	$monitor("Time=%0t | input=%b | sel=%b | Y0=%b | Y1=%b",$time,in,sel,Y0,Y1);

   end

endmodule


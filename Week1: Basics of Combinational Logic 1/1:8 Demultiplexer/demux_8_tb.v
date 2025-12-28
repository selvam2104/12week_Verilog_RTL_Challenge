`timescale 1ns / 1ps

//Project Description: Testbench for 1-to-8 demultiplexer
//Module: demux_8_tb
//Created by Pradeep (GitHub - selvam2104)

module demux_8_tb;
    reg in;
    reg [2:0] sel;
    wire [7:0] out;
    
    demux_8 uut(
    .in(in),
    .sel(sel),
    .Y(out)
    );
    
    initial begin
        $display("Starting Testbench ...");
        in = 1;
        
        //case-1
        sel = 3'b000; #10
        if (out[0] !== 1) $display("FAILED");
        
        //case-2
        sel = 3'b001; #10
        if (out[1] !== 1) $display("FAILED");
        
        //case-3
        sel = 3'b010; #10
        if (out[2] !== 1) $display("FAILED");
        
        //case-4
        sel = 3'b011; #10
        if (out[3] !== 1) $display("FAILED");
        
        //case-5
        sel = 3'b100; #10
        if (out[4] !== 1) $display("FAILED");
        
        //case-6
        sel = 3'b101; #10
        if (out[5] !== 1) $display("FAILED");
        
        //case-7
        sel = 3'b110; #10
        if (out[6] !== 1) $display("FAILED");
        
        //case-8
        sel = 3'b111; #10
        if (out[7] !== 1) $display("FAILED");
        
        $display("Testbench completed.");
        $finish;
        
    end
    
    initial begin 
	$dumpfile("demux_8.vcd");
	$dumpvars(0, demux_8_tb);
	
	$monitor("Time=%0t | input=%b | sel=%b | output=%b",$time,in,sel,out);

    end

endmodule


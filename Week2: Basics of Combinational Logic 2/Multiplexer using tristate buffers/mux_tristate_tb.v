`timescale 1ns / 1ps

//Project Description: Testbench for Multiplexer using tristate implementation
//Module: mux_tristate_tb
//Created by Pradeep (GitHub - selvam2104)

module mux_tristate_tb;

    reg d0, d1, sel;
    wire Y;
    
    mux_tristate dut (.d0(d0),.d1(d1),.sel(sel),.Y(Y));
    
    integer i,j,k;
    
    initial begin
        $display("Starting self-checking testbench ...");
        
        for (i=0;i<2;i=i+1) begin
            for (j=0;j<2;j=j+1) begin
                for (k=0;k<2;k=k+1) begin
                    d0 = i;
                    d1 = j;
                    sel = k;
                    #1;                    
                end
            end
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("mux_tristate.vcd");
	$dumpvars(0, mux_tristate_tb);
	
	$monitor("Time=%0t | d0=%b | d1=%b | sel=%b | Y=%b",$time,d0,d1,sel,Y);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for 2 input multiplexer
//Module: mux_2_tb
//Created by Pradeep (GitHub - selvam2104)

module mux_2_tb;

    wire Y;
    reg A,B,sel;
    
    mux_2 uut(.Y(Y),.A(A),.B(B),.sel(sel));
    
    initial begin
        $display("Starting testbench ...");
        
        //testing all possible combinations
        
        A = 0; B = 0; sel = 0; #10
        if (Y!==0) $display("FAIL: A=0 B=0 sel=0 Y=%b",Y);
        
        A = 0; B = 0; sel = 1; #10
        if (Y!==0) $display("FAIL: A=0 B=0 sel=1 Y=%b",Y);
        
        A = 0; B = 1; sel = 0; #10
        if (Y!==0) $display("FAIL: A=0 B=1 sel=0 Y=%b",Y);
        
        A = 0; B = 1; sel = 1; #10
        if (Y!==1) $display("FAIL: A=0 B=1 sel=1 Y=%b",Y);
        
        A = 1; B = 0; sel = 0; #10
        if (Y!==1) $display("FAIL: A=1 B=0 sel=0 Y=%b",Y);
        
        A = 1; B = 0; sel = 1; #10
        if (Y!==0) $display("FAIL: A=1 B=0 sel=1 Y=%b",Y);

        A = 1; B = 1; sel = 0; #10
        if (Y!==1) $display("FAIL: A=1 B=1 sel=0 Y=%b",Y);
        
        A = 1; B = 1; sel = 1; #10
        if (Y!==1) $display("FAIL: A=1 B=1 sel=1 Y=%b",Y);
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("mux_2.vcd");
	$dumpvars(0, mux_2_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | sel=%b | Y=%b",$time,A,B,sel,Y);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for 4 input multiplexer
//Module: mux_4_tb
//Created by Pradeep (GitHub - selvam2104)

module mux_4_tb;

    wire Y;
    reg A,B,C,D;
    reg [1:0] sel;
    
    mux_4 uut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y(Y),
        .sel(sel));
        
    initial begin
        $display("Starting testbench ...");
        
        //Testing different possible input combinations
        
        //Test case-1
        sel = 2'b00; A = 1; B = 0; C = 0; D = 0; #10
        if (Y!==1) $display("FAILED.");
        
        //Test case-2
        sel = 2'b01; A = 0; B = 1; C = 0; D = 0; #10
        if (Y!==1) $display("FAILED.");
        
        //Test case-3
        sel = 2'b10; A = 0; B = 0; C = 1; D = 0; #10
        if (Y!==1) $display("FAILED.");
        
        //Test case-4
        sel = 2'b11; A = 0; B = 0; C = 0; D = 1; #10
        if (Y!==1) $display("FAILED.");
        
        $display("Testbench completed.");
        $finish; 
    
    end

    initial begin 
	$dumpfile("mux_4.vcd");
	$dumpvars(0, mux_4_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | C=%b | D=%b | sel=%b | Y=%b",$time,A,B,C,D,sel,Y);

    end

endmodule


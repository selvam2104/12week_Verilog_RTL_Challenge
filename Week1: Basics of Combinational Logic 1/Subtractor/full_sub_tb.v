`timescale 1ns / 1ps

//Project Description: Testbench for Full Subtractor implementation
//Module: full_sub_tb
//Created by Pradeep (GitHub - selvam2104)

module full_sub_tb;
    reg A,B,Bin;
    wire Diff,Bout;
    
    full_sub uut (.A(A),.B(B),.Bin(Bin),.Diff(Diff),.Bout(Bout));
    
    initial begin
        $display("Starting Testbench ...");
        
        //case1
        A = 0; B = 0; Bin = 0; #10
        if (Diff !== 0 && Bout !== 0) $display("FAILED");
        
        //case2
        A = 0; B = 0; Bin = 1; #10
        if (Diff !== 1 && Bout !== 1) $display("FAILED");
        
        //case3
        A = 0; B = 1; Bin = 0; #10
        if (Diff !== 1 && Bout !== 1) $display("FAILED");
        
        //case4
        A = 0; B = 1; Bin = 1; #10
        if (Diff !== 0 && Bout !== 1) $display("FAILED");
        
        //case5
        A = 1; B = 0; Bin = 0; #10
        if (Diff !== 1 && Bout !== 0) $display("FAILED");
        
        //case6
        A = 1; B = 0; Bin = 1; #10
        if (Diff !== 0 && Bout !== 0) $display("FAILED");
        
        //case7
        A = 1; B = 1; Bin = 0; #10
        if (Diff !== 1 && Bout !== 0) $display("FAILED");
        
        //case8
        A = 1; B = 1; Bin = 1; #10
        if (Diff !== 0 && Bout !== 1) $display("FAILED");
        
        $display("Testbench Completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("full_sub.vcd");
	$dumpvars(0, full_sub_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | Borrow_in=%b | Difference=%b | Borrow_out=%b",$time,A,B,Bin,Diff,Bout);

    end

endmodule


`timescale 1ns / 1ps

//Projecti Description: Testbench for Half Adder implementation
//Module: half_adder_tb
//Created by Pradeep (GitHub - selvam2104)

module half_adder_tb;
    reg A,B;
    wire Y,Cout;
    
    half_adder uut (.A(A),.B(B),.Y(Y),.C(Cout));
    
    initial begin
        $display("Starting Testbench ...");
        
        //case1
        A = 0;  B = 0; #10
        if(Y !== 0 && Cout !== 0) $display("FAILED");
        //case2
        A = 0;  B = 1; #10
        if(Y !== 1 && Cout !== 0) $display("FAILED");
        //case3
        A = 1;  B = 0; #10
        if(Y !== 1 && Cout !== 0) $display("FAILED");
        //case4
        A = 1;  B = 1; #10
        if(Y !== 1 && Cout !== 1) $display("FAILED");
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("half_adder.vcd");
	$dumpvars(0, half_adder_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | Sum=%b | Carry_out=%b",$time,A,B,Y,Cout);

    end

endmodule


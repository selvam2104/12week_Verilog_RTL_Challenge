`timescale 1ns / 1ps

//Project Description: Testbench for 4-bit carry look ahead Adder implementation
//Module: cla_tb
//Created by Pradeep (GitHub - selvam2104)

module cla_tb;
    reg [3:0] A,B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
    integer i,j,k;
    reg [4:0] expected; //5-bits    Cout + Sum
    
    cla uut (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    
    initial begin
        $display("Starting Testbench ...");
        
        //self-testing testbench
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    A = i;
                    B = j;
                    Cin = k;
                    expected = A + B + Cin;
                    #1;
                    
                    if ({Cout,Sum} !== expected) begin
                        $display("FAILED.");
                        $finish;
                    end
                    
                end
            end
        end
        
        $display("Testbench Completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("cla.vcd");
	$dumpvars(0, cla_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | Carry_in=%b | Sum=%b | Carry_out=%b",$time,A,B,Cin,Sum,Cout);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for BCD Adder implementation
//Module: bcd_adder_tb
//Created by Pradeep (GitHub - selvam2104)

module bcd_adder_tb;

    reg [3:0] A,B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
    bcd_adder uut (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    
    integer i,j,k;
    integer expected;
    reg [3:0] expected_Sum;
    reg expected_Cout;
    
    initial begin
    
        $display("Starting self-checking testbench ...");
        
        for (i=0;i<10;i=i+1) begin
            for (j=0;j<10;j=j+1) begin
                for (k=0;k<2;k=k+1) begin
                    A = i;
                    B = j;
                    Cin = k;
                    
                    expected = A + B + Cin;
                    expected_Sum  = expected % 10;
                    expected_Cout = expected / 10;
                    #1;
                    
                    if (Sum !== expected_Sum || Cout !== expected_Cout) begin
                        $display("FAILED.");
                        $finish;
                    end
                    
                end
            end
        end
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("bcd_adder.vcd");
	$dumpvars(0, bcd_adder_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | Sum=%b | Carry_out=%b",$time,A,B,Sum,Cout);

    end

endmodule


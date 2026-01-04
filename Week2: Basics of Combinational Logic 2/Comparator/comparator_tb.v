`timescale 1ns / 1ps

//Project Description: Testbench for Parameterized comparator implementation
//Module: comparator_tb
//Created by Pradeep (GitHub - selvam2104)

module comparator_tb;

    reg [3:0] A, B;
    wire GT, LT, EQ;
    
    comparator dut (.A(A),.B(B),.GT(GT),.LT(LT),.EQ(EQ));
    
    integer i,j;
    
    initial begin
        $display("Starting self-checking testbench ...");
        
        for (i=0;i<16;i=i+1) begin
            for (j=0;j<16;j=j+1) begin
                A = i;
                B = j;
                #1;
                
                if ((GT!==(A>B)) || (LT!==(A<B)) || (EQ!==(A==B))) begin
                    $display("FAILED.");
                    $finish;
                end
                               
            end
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("comparator.vcd");
	$dumpvars(0, comparator_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | GT=%b | LT=%b | EQ=%b",$time,A,B,GT,LT,EQ);

    end

endmodule


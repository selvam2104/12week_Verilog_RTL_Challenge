`timescale 1ns / 1ps

//Project Description: Testbench for Adder-Subtractor implementation
//Module: add_sub_tb
//Created by Pradeep (GitHub - selvam2104)

module add_sub_tb;
    reg [3:0] A, B;
    reg sel;
    wire [3:0] Sum;
    wire Cout;
    
    add_sub uut (.A(A),.B(B),.sel(sel),.Sum(Sum),.Cout(Cout));
    
    integer i, j, k; 
    reg [3:0] expected;
    
    initial begin
        $display("Starting Testbench ...");
        
        //self-testing testbench
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    A = i;
                    B = j;
                    sel = k;
                    if (sel == 0)
                        expected = A + B;     // ADD
                    else
                        expected = A - B;     // SUB
                    expected = expected[3:0];
                    #1;
                    
                    if (Sum !== expected) begin
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
	$dumpfile("add_sub.vcd");
	$dumpvars(0, add_sub_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | sel=%b | Sum=%b | Carry=%b",$time,A,B,sel,Sum,Cout);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for Full Adder implementation
//Module: full_adder_tb
//Created by Pradeep (GitHub - selvam2104)

module full_adder_tb;
    reg A,B,C_in;
    wire Sum,C_out;
    
    full_adder uut (.A(A),.B(B),.C_in(C_in),.Y(Sum),.C_out(C_out));
    
    initial begin
        $display("Starting Testbench ...");
        
        //case1
        A = 0; B = 0; C_in = 0; #10
        if (Sum !== 0 && C_out !== 0) $display("FAILED");
        
        //case2
        A = 0; B = 0; C_in = 1; #10
        if (Sum !== 1 && C_out !== 0) $display("FAILED");
        
        //case3
        A = 0; B = 1; C_in = 0; #10
        if (Sum !== 1 && C_out !== 0) $display("FAILED");
        
        //case4
        A = 0; B = 1; C_in = 1; #10
        if (Sum !== 0 && C_out !== 1) $display("FAILED");
        
        //case5
        A = 1; B = 0; C_in = 0; #10
        if (Sum !== 1 && C_out !== 0) $display("FAILED");
        
        //case6
        A = 1; B = 0; C_in = 1; #10
        if (Sum !== 0 && C_out !== 1) $display("FAILED");
        
        //case7
        A = 1; B = 1; C_in = 0; #10
        if (Sum !== 0 && C_out !== 1) $display("FAILED");
        
        //case8
        A = 1; B = 1; C_in = 1; #10
        if (Sum !== 1 && C_out !== 1) $display("FAILED");
        
        $display("Testbench Completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("full_adder.vcd");
	$dumpvars(0, full_adder_tb);
	
	$monitor("Time=%0t | A=%b | B=%b | Carry_in=%b | Sum=%b | Carry_out=%b",$time,A,B,C_in,Sum,C_out);

    end

endmodule


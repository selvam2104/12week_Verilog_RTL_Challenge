`timescale 1ns / 1ps

//Project Description: Testbench Gray code to Binary conversion implementation
//Module: gray_bin_tb
//Created by Pradeep (GitHub - selvam2104)

module gray_bin_tb;

    reg [3:0] gray;
    wire [3:0] bin;
    
    gray_bin uut (.gray(gray),.bin(bin));
    
    integer i;
    
    initial begin
        $display("Starting self-checking testbench ...");
        
        for (i=0;i<16;i=i+1) begin
            gray = i ^ (i >> 1);
            #10;
            
            if (bin !== i) begin
                $display("FAILED.");
                $finish;
            end
        end
        
        $display("Testbench completed.");
        $finish;
    
    end

    initial begin 
	$dumpfile("gray_bin.vcd");
	$dumpvars(0, gray_bin_tb);
	
	$monitor("Time=%0t | gray=%b | binary=%b",$time,gray,bin);

    end

endmodule


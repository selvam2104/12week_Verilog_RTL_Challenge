`timescale 1ns / 1ps

//Project Description: Binary to Gray code conversion implementation
//Module: bin_gray
//Created by Pradeep (GitHub - selvam2104)

module bin_gray_tb;

    reg [3:0] bi;
    wire [3:0] gray;
    
    bin_gray uut (.bi(bi),.gray(gray));
    
    integer i;
    
    initial begin
        $display("Starting self-checking Testbench ...");
        
        for (i=0;i<16;i=i+1) begin
            bi = i;
            #1;
        end
        
        $display("Testbench completed.");
        $finish;
        
    end
    
    initial begin 
	$dumpfile("bin_gray.vcd");
	$dumpvars(0, bin_gray_tb);
	
	$monitor("Time=%0t | binary=%b | gray=%b",$time,bi,gray);

    end

endmodule


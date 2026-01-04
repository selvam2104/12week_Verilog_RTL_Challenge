`timescale 1ns / 1ps

//Project Description: A Testbench for Parity Generator and Checker implementation
//Module: parity_tb
//Created by Pradeep (GitHub - selvam2104)

module parity_tb;

    reg [3:0] data;
    wire even_parity, odd_parity;
    wire even_error, odd_error;
    
    parity dut (.data(data),
	    	.even_parity(even_parity),
		.odd_parity(odd_parity),
		.even_error(even_error),
		.odd_error(odd_error)
		);
    
    integer i;
    
    initial begin
        $display("Starting self-checking Testbench ...");
        
        for (i=0; i<16; i=i+1) begin
            data = i;
            #1;
            
            if (even_error || odd_error) begin
                $display("FAILED.");
                $finish;
            end
        end
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin 
	$dumpfile("parity.vcd");
	$dumpvars(0, parity_tb);
	
	$monitor("Time=%0t | data=%b | even_parity=%b | odd_parity=%b",$time,data,even_parity,odd_parity);

    end

endmodule


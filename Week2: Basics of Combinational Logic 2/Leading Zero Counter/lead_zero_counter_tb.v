`timescale 1ns / 1ps

//Project Description: Testbench for Leading Zero Counter implementation
//Module: lead_zero_count_tb
//Created by Pradeep (GitHub - selvam2104)

module lead_zero_count_tb;

    reg [3:0] data_in;
    wire [2:0] lz_count;
    
    lead_zero_count dut (.data_in(data_in),.lz_count(lz_count));
    
    integer i;
    
    initial begin
        $display("Starting self-checking Testbench ...");
        
        for (i=0;i<16;i=i+1) begin
            data_in = i;
            #10;
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("lead_zero_count.vcd");
	$dumpvars(0, lead_zero_count_tb);
	
	$monitor("Time=%0t | data_in=%b | lz_count=%b",$time,data_in,lz_count);

    end

endmodule


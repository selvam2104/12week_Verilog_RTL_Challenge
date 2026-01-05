`timescale 1ns / 1ps

//Project Description: Testbench for Bit Reverser implementation
//Module: bit_reserver_tb
//Created by Pradeep (GitHub - selvam2104)

module bit_reverser_tb;

    reg [3:0] data_in;
    wire [3:0] data_out;
    
    bit_reverser dut (.data_in(data_in),.data_out(data_out));
    
    integer i;
    reg [3:0] expected;
    
    function [3:0] out_ref;
        input [3:0] in_ref;
        integer j;
        begin : for_loop
            for(j=0;j<4;j=j+1) begin
                out_ref[j] = in_ref[3-j];
            end
        end
    endfunction
    
    initial begin
        $display("Starting self-checking testbench ...");
        
        for(i=0;i<16;i=i+1) begin
            data_in = i;
            expected = out_ref(data_in);
            #10;
            
            if(data_out !== expected) begin
                $display("FAILED.");
                $finish;
            end
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("bit_reverser.vcd");
	$dumpvars(0, bit_reverser_tb);
	
	$monitor("Time=%0t | data_in=%b | data_out=%b",$time,data_in,data_out);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for Parameterized Priority Arbiter implementation
//Module: priority_arbiter_tb
//Created by Pradeep (GitHub - selvam2104)

module priority_arbiter_tb;

    reg [3:0] req;
    wire [3:0] grant;
    
    priority_arbiter dut (.req(req),.grant(grant));
    
    integer i;
    reg [3:0] expected;
    
    function [3:0] grant_ref;
        input [3:0] req_ref;
        integer j;
        begin : for_loop
            grant_ref = 4'b0000;
            for (j=3;j>=0;j=j-1) begin
                if (req_ref[j]) begin
                    grant_ref[j] = 1'b1;
                    disable for_loop;
                end
            end
        end
    endfunction
    
    initial begin
        $display("Starting self-checking testbench ...");
        expected = 4'b0000;
        
        for (i=0;i<16;i=i+1) begin
            req = i;
            expected = grant_ref(req);            
            #10;
                        
            if(grant !== expected) begin
                $display("FAILED.");
                $finish;
            end
            
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("priority_arbiter.vcd");
	$dumpvars(0, priority_arbiter_tb);
	
	$monitor("Time=%0t | request=%b | grant=%b",$time,req,grant);

    end

endmodule


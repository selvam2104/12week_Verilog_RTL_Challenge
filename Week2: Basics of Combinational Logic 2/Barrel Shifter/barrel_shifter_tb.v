`timescale 1ns / 1ps

//Project Description: Testbench for Barrel Shifter (left/right) implementation
//Module: barrel_shifter_tb
//Created by Pradeep (GitHub - selvam2104)

module barrel_shifter_tb;

    reg [7:0] data_in;
    reg [2:0] shift;
    reg dir;
    wire [7:0] data_out;

    barrel_shifter dut (.data_in(data_in),.shift(shift),.dir(dir),.data_out(data_out));
    
    integer i;
    
    initial begin
        $display("Starting self-checking testbench ...");
        
        data_in = 8'b10101010;
        
        for (i=0;i<8;i=i+1) begin
            shift = i;
            dir = 0; #1;
            
            dir = 1; #1;
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
 	$dumpfile("barrel_shifter.vcd");
	$dumpvars(0, barrel_shifter_tb);
	
	$monitor("Time=%0t | data_in=%b | shift=%b | dir=%b | data_out=%b",$time,data_in,shift,dir,data_out);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench for right shifter using logical & arithmetic implementation
//Module: right_shifter_tb
//Created by Pradeep (GitHub - selvam2104)

module right_shifter_tb;

    reg signed [7:0] data_in;
    reg [2:0] shift;
    reg mode;
    wire [7:0] data_out;
    
    right_shifter dut (.data_in(data_in),.shift(shift),.mode(mode),.data_out(data_out));
    
    integer i;
    reg [7:0] expected = 8'b0;
    
    initial begin
        $display("Starting self-checking Testbench ...");
        
        data_in = 8'b10101010;
        
        for (i=0;i<8;i=i+1) begin
            shift = i;
            mode = 0;
            expected = data_in >> shift;
            #10; 
            if (data_out !== expected) begin
                $display("FAILED.");
                $finish;
            end
            
            mode = 1;
            expected = data_in >>> shift; 
            #10;         
            if (data_out !== expected) begin
                $display("FAILED.");
                $finish;
            end
        end
        
        $display("Testbench completed.");
        $finish;
    end

    initial begin 
	$dumpfile("right_shifter.vcd");
	$dumpvars(0, right_shifter_tb);
	
	$monitor("Time=%0t | data_in=%b | shift=%b | data_out=%b",$time,data_in,shift,data_out);

    end

endmodule


`timescale 1ns / 1ps

//Project Description: Testbench forlLogic gates implementations
//Module: logic_gate_tb
//Created by Pradeep (GitHub - selvam2104)

module logic_gates_tb;

    wire and_Y,nand_Y,or_Y,nor_Y,xor_Y,xnor_Y,not_Y;
    reg A,B;
    
    logic_gates uut(
        .and_Y(and_Y),
        .nand_Y(nand_Y),
        .or_Y(or_Y),
        .nor_Y(nor_Y),
        .xor_Y(xor_Y),
        .xnor_Y(xnor_Y),
        .not_Y(not_Y),
        .A(A),
        .B(B));
        
	integer i,j;

    initial begin
        $display("Starting self-testing testbench ...");
        
        //testing all possible input combinations
        
	for (i=0;i<2;i++) begin
		for (j=0;j<2;j++) begin
			A = i;
			B = j;
			#10;
		end
	end
        
        $display("Testbench completed.");
        $finish;
        
    end

    initial begin
	$dumpfile("logic_gates.vcd");
	$dumpvars(0, logic_gates_tb);

    end

endmodule


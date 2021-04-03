`timescale 1ns / 1ps



module top_tb(

    );
 
    reg [9:0] SW;
    wire [6:0] hex;
    
    top dut(.SW(SW), .hex(hex));
    
//test values for 4 modes 

    initial begin
        SW[9:8] = 2'b00;
        #10;
        SW[3:0] = 'b0000;
        #10;
        SW[3:0] = 'b0101;
        #10;
        SW[3:0] = 'b1011;
        #10;
        
        SW[9:8] = 2'b01;
        #10;
        SW[7:4] = 'b0101;
        #10;
        
        
        SW[9:8] = 2'b10;
        #10;
        SW[3:0] = 'b0000;
        #10;
        SW[3:0] = 'b0011;
        #10;
        SW[3:0] = 'b1111;
        #10;
        
        SW[9:8] = 2'b11;
        #10
        SW[3:0] = 'b0000;
        #10;
        SW[3:0] = 'b1001;
        #10;
        SW[3:0] = 'b1011;
        #10;

        $stop;
        
        
        
        
        
        
    end
    
    
endmodule



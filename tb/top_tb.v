`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 16:28:54
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb(

    );
 /*wire  [15:0]  SW;
  reg [4:0] BTN;
  
  wire [15:0] LED;
  wire        CA;
  wire        CB;
  wire        CC;
  wire        CD;
  wire        CE;
  wire        CF;
  wire        CG;
  wire        DP;
  wire  [7:0] AN;
  top dut(
  .SW( SW ),
  .BTN ( BTN ),
  
  .LED ( LED ),
  .CA ( CA ),
  .CB ( CB ),
  .CC ( CC ),
  .CD ( CD ),
  .CE ( CE ),
  .CF ( CF ),
  .CG ( CG ),
  .DP ( DP ),
  .AN ( AN )      
    );  
    reg [3:0] SW1;
    reg [3:0] SW2;
    reg [1:0] SW3;
    
    assign SW = {6'b0, SW3, SW2, SW1};
    
     initial begin
      //  Wait for Global Reset to Complete
      SW1 = 4'h9;
      #100;
      SW2 = 4'h1;
      #100;
      SW3 = 4'h2;
      #100;
      $stop;
   end
    
    initial begin
      //  Wait for Global Reset to Complete
      SW2 = 4'h3;
      #70;
      SW2 = 4'h2;
      #100;
      SW3 = 4'h6;
   end
   initial begin
      //  Wait for Global Reset to Complete
      SW3 = 4'h0;
      repeat(5) begin
      #80;
      SW3 = SW3 + 4'h1;
    end
    
   end*/
   
   
    
    
    
    
    
    
    
    
    /*initial begin
      //  Wait for Global Reset to Complete
      BTN = 5'h19;
      repeat(5) begin
      #10;
      BTN = BTN+1'b1;
      end
      #150;
      BTN = 5'h33;
      
      $stop;
   end*/
    reg [9:0] SW;
    wire [6:0] hex;
    top dut(.SW(SW), .hex(hex));
    
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



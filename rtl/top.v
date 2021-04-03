`timescale 1ns / 1ps
module top(
  input [9:0]  SW,
  input [4:0] BTN,
  
  output [15:0] LED,
  
  output  [6:0] hex,
  output        DP,
  output  [7:0] AN      
    );

 
    

reg [3:0] num;
    
    
//Multiplexer choosing one of 4 modes 
always @(*) begin //всегда когда происходит событие в скобках. * - меняется любой сигнад
    case(SW[9:8])
        'b00: if  ((SW[3:0]=='b0011)|(SW[3:0]=='b0110)|(SW[3:0]=='b0111)|(SW[3:0]=='b1011)|(SW[3:0]=='b1100)|(SW[3:0]=='b1101)|(SW[3:0]=='b1110)) begin num[3:0]='d1;
        end else if(SW[3:0]=='b1111) begin num[3:0]='d2;
        end else num[3:0]='d0;
        'b01: num[3:0]=SW[7]*'b0+SW[6]*'b1*'b100+SW[5]*'b0+SW[4]*'b1;
        'b10: num[3:0] = (SW[0]&SW[1]&SW[2]^SW[3]);
        'b11: num[3:0] = SW[3:0]; 
    endcase
   

end


// upload arguments in decoder
decoder dc(.x(num[3:0]), .y(hex[6:0]));


//turn on only one indicator
assign AN = 'b1111_1110;
    
    
    
    
 endmodule
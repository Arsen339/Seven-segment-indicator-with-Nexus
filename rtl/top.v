module top(
  input [9:0]  SW,
  input [4:0] BTN,
  
  output [15:0] LED,
  
  output  [6:0] hex,
  output        DP,
  output  [7:0] AN      
    );
//assign LED = {BTN, SW[10:0]};   
 
    

reg [3:0] num;//wire - ����������� ������, ��� ���� � ��������� case
//reg [6:0]  hex;  //DP,G,F,E,D,C,B,A

//always @(*) begin //������ ����� ���������� ������� � �������. * - �������� ����� ������
//  case (SW[9:0])
//    'd0 : num = SW[3:0];
//    'd1 : num = SW[7:4];
//    'd2 : num = LED[3:0];
//    'd3 : num = LED[7:4];
    
//    endcase
//end   
    
    
    
always @(*) begin //������ ����� ���������� ������� � �������. * - �������� ����� ������
    case(SW[9:8])
        'b00: if  ((SW[3:0]=='b0011)|(SW[3:0]=='b0110)|(SW[3:0]=='b0111)|(SW[3:0]=='b1011)|(SW[3:0]=='b1100)|(SW[3:0]=='b1101)|(SW[3:0]=='b1110)) begin num[3:0]='d1;
        end else if(SW[3:0]=='b1111) begin num[3:0]='d2;
        end else num[3:0]='d0;
        'b01: num[3:0]=SW[7]*'b0+SW[6]*'b1*'b100+SW[5]*'b0+SW[4]*'b1;
        'b10: num[3:0] = (SW[0]&SW[1]&SW[2]^SW[3]);
        'b11: num[3:0] = SW[3:0]; 
    endcase
   
//  case (num)
//    'd2 : hex = 'b1100_0000;
//    default : hex = 'b0000_0000;
//    endcase
end

decoder dc(.x(num[3:0]), .y(hex[6:0]));

//key k(.i(BTN[4:1]), .j

/*assign CA = hex[0];
assign CB = hex[1];
assign CC = hex[2];
assign CD = hex[3]; 
assign CE = hex[4];
assign CF = hex[5];
assign CG = hex[6];*/

assign AN = 'b1111_1110;
    
    
    
    
 endmodule
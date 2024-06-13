`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 18:07:21
// Design Name: 
// Module Name: orgate
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


module orgate(input a,b,output y

    );
    assign y =a|b;
endmodule

module org_tb;
reg A, B;
wire Y;g andgate(.A(A),.B(B),.Y(Y));
initial begin
      A=1'b0;B=1'b0;
      #10 A =1'b0;B= 1'b1;
      #10 A =1'b1;B= 1'b0;
      #10 A =1'b1;B= 1'b1;
      #10
        $finish;
   end 
endmodule       


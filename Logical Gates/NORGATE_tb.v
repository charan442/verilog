`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 10:00:21
// Design Name: 
// Module Name: NORGATE_tb
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


module NORGATE_tb;
reg A, B;
wire Y;
NORGATE norgate(.A(A),.B(B),.Y(Y));
initial begin
      A =1'b0;B =1'b0;
      #20 A =1'b0;B= 1'b1;
      #20 A =1'b1;B= 1'b0;
      #20 A =1'b1;B= 1'b1;
      #20
        $finish;
    end
always @(Y)
  $display("time=%0t\tINPUT VALUES: \t A=%b B =%b\t output value Y =%b",$time,A,B,Y);
 endmodule     
         

   


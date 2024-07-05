`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 11:50:31
// Design Name: 
// Module Name: NOTGATE_tb
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


module NOTGATE_tb;
reg A;
wire Y;
NOTGATE norgate(.A(A),.Y(Y));
initial begin
A =1'b0;
#10 A =1'b1;
#10
$finish;
end
always @(Y)
$display( "time =%0t \tINPUT VALUES: \t A=%b output value Y =%b",$time,A,Y);
endmodule

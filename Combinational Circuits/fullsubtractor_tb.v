`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 13:52:36
// Design Name: 
// Module Name: tb
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


module tb;
reg a, b, Bin;
wire D, Bout;
full_subtractor fs(a, b, Bin, D, Bout);
initial begin
$monitor("At time %0t: a=%b b=%b, Bin=%b, diff=%b, borrow=%b",$time, a,b,Bin,D,Bout);
a = 0; b = 0; Bin = 0; #1;
a = 0; b = 0; Bin = 1; #1;
a = 0; b = 1; Bin = 0; #1;
a = 0; b = 1; Bin = 1; #1;
a = 1; b = 0; Bin = 0; #1;
a = 1; b = 0; Bin = 1; #1;
a = 1; b = 1; Bin = 0; #1;
a = 1; b = 1; Bin = 1;
end  
endmodule

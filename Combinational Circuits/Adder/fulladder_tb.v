`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 12:00:23
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
  reg a, b, c;
  wire s, c_out;
  
  fulladder fa(a, b, c, s, c_out);
  
  initial begin
    $monitor("At time %0t: a=%b b=%b, cin=%b, sum=%b, carry=%b",$time, a,b,c,s,c_out);
    a = 0; b = 0; c = 0; #1;
    a = 0; b = 0; c = 1; #1;
    a = 0; b = 1; c = 0; #1;
    a = 0; b = 1; c = 1; #1;
    a = 1; b = 0; c = 0; #1;
    a = 1; b = 0; c = 1; #1;
    a = 1; b = 1; c = 0; #1;
    a = 1; b = 1; c = 1;
  end
endmodule
  

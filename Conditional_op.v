`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 11:50:44
// Design Name: 
// Module Name: Conditional_op
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


module Conditional_op;
  reg [3:0] i1, i2;
  reg [3:0] result;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    result = (i1 > i2)? 1 : 0;
    $display("result = %0h", result);
    
    i1 = 4'h6; i2 = 4'h6;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    result = (i1 > i2)? 1 : 0;
    $display("result = % 0h", result);
    
    i1 = 4'b1x00; i2 = 4'b0100;
    $display("i1 = %b, i2 = %b", i1, i2);
    result = (i1 > i2)? (i1 & i2) : (i1 | i2);
    $display("result = %b", result);
  end 
endmodule

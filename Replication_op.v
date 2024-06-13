`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 15:11:12
// Design Name: 
// Module Name: Replication_op
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


module Replication_op;
  reg [1:0] i1, i2;
  reg [7:0] out;
  
  initial begin 
    i1 = 2'h2; i2 = 2'h3;
    
    $display("out = %b", {4{i1}});
    $display("out = %b", {{3{i2}}, {2{i1}}} );
   end
endmodule

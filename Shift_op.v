`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 12:14:26
// Design Name: 
// Module Name: Shift_op
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


module Shift_op;
   reg [7:0] i1, o1;
   reg signed [7:0] i2, o2;
   
   initial begin 
   i1 = 8'b1111_0000;
   o1 = i1 >> 3;
   $display("Shift right (>>) i1 = %b by 3: %b", i1, o1);
   i1 = o1;
   
   o1 = i1 << 3;
   $display("Shift left (<<) i1 = %b by 3: %b", i1, o1);
   
   i2 = 8'b1111_0000;
   o2 = i2 >>> 3;
   $display("Shift right (>>>) i2 = %b by 3: %b", i2, o2);
   i2 = o2;
   
   o2 = i2 <<< 3;
   $display("Shift left (<<<) i2 = %b by 3: %b", i2, o2);  
 end
endmodule

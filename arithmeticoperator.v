`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 14:56:39
// Design Name: 
// Module Name: arithematicoperator
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


module arithematicoperator;
  reg [3:0] i1,i2;
  initial begin
     i1 = 4'h6;
     i2 = 4'h2;
     
     $display("i1 = %0h and i2 =%0h", i1, i2);
     $display("Add: %0h", i1 + i2);
     $display("Sub: %0h", i1 - i2);
     $display("Mul: %0h", i1 * i2);
     $display("Div: %0h", i1 / i2);
     $display("Pow: %0h", i2 ** 3);
     $display("Mod: %0h", i1 % 12);
     
     i1 = 4'ha; i2 = 4'h3;
     $display("\ni1 = %0h and i2 = %0h", i1, i2);
     $display("Mod: %0h", i1 % i2);
    end
endmodule

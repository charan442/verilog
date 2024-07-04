`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 09:29:42
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a, b, cin,
  output sum, cout
);
  
  assign {sum, cout} = {a^b^cin, ((a & b) | (b & cin) | (a & cin))};
  //or
  //assign sum = a^b^cin;
  //assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module ripple_carry_adder #(parameter SIZE = 4) (
  input [SIZE-1:0] A, B, 
  input Cin,
  output [SIZE-1:0] S, Cout);
  
  genvar g;
  
  full_adder fa0(A[0], B[0], Cin, S[0], Cout[0]);
  generate  // This will instantiate full_adder SIZE-1 times

      full_adder fa(A[g], B[g], Cout[g-1], S[g], Cout[g]);

  endgenerate
endmodule

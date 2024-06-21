`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 10:57:06
// Design Name: 
// Module Name: CarryLookAheadAdder
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


module CarryLookAheadAdder(
input [3:0]A, B,
input Cin,
output [3:0] S,
output Cout
);
wire [3:0] Ci;
assign Ci[0] = Cin;
assign Ci[1] = (A[0] & B[0]) | ((A[0]^B[0]) & Ci[0]);
assign Ci[2] = (A[1] & B[1]) | ((A[1]^B[1]) & ((A[0]^B[0]) | ((A[0]^B[0]) & Ci[0])));
assign Ci[3] = (A[2] & B[2]) | ((A[2]^B[2]) & ((A[1]^B[1]) | ((A[1]^B[1]) & ((A[0]^B[0]) | ((A[0]^B[0]) & Ci[0])))));
assign Cout =  (A[3] & B[3]) | ((A[3]^B[3]) & ((A[2] & B[2]) | ((A[2]^B[2]) & ((A[1] & B[1]) | ((A[1]^B[1]) & ((A[0] & B[0]) | ((A[0]^B[0]) & Ci[0])))))));
assign S = A^B^Ci;
endmodule

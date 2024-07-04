`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 11:15:33
// Design Name: 
// Module Name: TB
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


module TB;
reg [3:0]A, B;
reg Cin;
wire [3:0] S;
wire Cout;
wire [4:0] add;
CarryLookAheadAdder cla(A, B, Cin, S, Cout);
assign add = {Cout, S};
initial begin 
$monitor("A = %b: B = %b, Cin = %b --> S = %b, Cout = %b, Addition = %0d", A, B, Cin, S, Cout, add);
A = 1; B = 0; Cin = 0; #10;
A = 2; B = 4; Cin = 1; #10;
A = 4'hb; B = 4'h6; Cin = 0; #10;
A = 5; B = 3; Cin =1;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 14:40:17
// Design Name: 
// Module Name: test
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


module test;
reg a,b,cin;
wire sum,carry;
full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
 a = 0; b = 0; cin = 0; #1;
 a = 0; b = 0; cin = 1; #1;
 a = 0; b = 1; cin = 0; #1;
 a = 0; b = 1; cin = 1; #1;
 a = 1; b = 0; cin = 0; #1;
 a = 1; b = 0; cin = 1; #1;
 a = 1; b = 1; cin = 0; #1;
 a = 1; b = 1; cin = 1;
 #30$finish;
 end
 always @(a or b or cin);
 $display("time=%0t INPUT VALUES: a=%b b=%b cin=%b OUTPUT VALUES: sum=%b carry=%b",$time,a,b,cin,sum,carry);
 endmodule    

    );
endmodule

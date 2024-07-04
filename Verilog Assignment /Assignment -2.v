1. What is the value of y in binary format in the below snippet?

reg [5:0] y;
initial
begin
y= &#39;Ox2;
end
Ans:
The hexadecimal value 'Ox2 is equivalent to the binary value 000010.
Therefore, the value of y in binary format is 0010.

2. What is the value of the b in the below snippet?

integer b;
initial
begin
b= -&#39;d12/3;
end
Ans:
The negative decimal value of 12 is -12, and when divided by 3, the value of b in the given snippet is -4.

3. What value is passed across the port b in the below snippet?

module test(output [32:0]b);
real a=14.5;
assign b = a;
endmodule
Ans:

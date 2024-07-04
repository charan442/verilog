1. What is the value of y in binary format in the below snippet?

reg [5:0] y;
initial
begin
y= &#39;Ox2;
end
Ans:
The hexadecimal value 'Ox2 is equivalent to the binary value 0010.
Therefore, the value of y in binary format is 6'b000010.

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
Ans: port b 14

4. Find the value of the variable t at 1ns &amp; 20ns respectively from the
below snippet.
time = t;
initial begin
#10 t= $time;
#20 ;
end
Ans: t =$time 10ns.

5. Write an RTL snippet to initialize all the locations of an array of size:10x8 to
0 at 0ns. Depth= 10, Width = 8bits
Ans:
module array_initialization (
  input wire clk,
  input wire rst,
  output reg [7:0] array [9:0]
);

integer i;

always @(posedge clk or posedge rst) begin
  if (rst) begin
    for (i = 0; i < 10; i = i + 1) begin
      array[i] <= 8'b0;
    end
  end
end

endmodule

6. What will be the value of the parameter constant for the instance DUT in
the top module from the below snippet?
module test;
parameter WIDTH=8;
endmodule
module top;
test #(16) OUT ( )
;
endmodule
Ans:The value of the parameter WIDTH for the instance DUT in the top module is 16.

7. What is the bug in the following snippet?
module test;
parameter WIDTH=8;

endmodule
module top;
test OUT ( ) ;
initial
defparam OUT.WIDTH=10;
endmodule
Ans:
  parameters should be set explicitly at module instantiation rather than using defparam statements inside procedural blocks like 'initial'.

8. What will be displayed in the console mode for the below snippet?

reg[13*8:1]s;
initial
begin
s = &quot;hello world&quot;;
$display(&quot;Value = %s&quot;,s[104:65]);

end
    Ans:
    value = hello

  
  

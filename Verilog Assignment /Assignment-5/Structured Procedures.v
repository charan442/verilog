1. How many DFFs will be inferred from the below snippet.

input c, din;
output reg y3;
reg y1,y2;
always@ ( posedge c) begin
y1 = din;
y2 = y1;
y3 = y2;
end
answer: 1 d flipflop

2. How many DFFs will be inferred from the below snippet:

input c,din;
output reg y3;
reg y1,y2;
always@(posedge c)
begin
y1 &lt;= din;
y2 &lt;= y1;
y3 &lt;= y2;
end
answer is 3 d flipflop is used

3. Write RTL code to design a 3-bit SISO right shift register using
only a Non-blocking assignment. (Do not use any operators).
Ans: module SISO(
    input clk,
    input rst,
    input din,
    output reg dout
);
    reg [2:0] shift_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            shift_reg <= 3'b0;
        else begin
            shift_reg[2] <= din;
            shift_reg[1] <= shift_reg[2];
            shift_reg[0] <= shift_reg[1];
            dout = shift_reg[0];
        end
    end

endmodule
4. Which of the statements will execute from the below
snippet &amp; justify the behavior?
reg c = 3’b00x;
always@(*)
begin
casex( c )
3’b000:st1;
3’b100:st2;
3’b001 : st3;
endcase
end
answer: st1 will execute.

5. Which hardware logic is inferred from the below snippet?

always@(*) begin

Page 2

case( 1’b1 ) a[3] : y
=3;
a[2] : y = 2;;
a[1] : y = 1;
a[0] : y = 0;
endcase
end
answer: priority encoder

6. Write RTL code for designing an 8:1 mux using a for loop.
  answer:
  module mux_8to1 (
    input [7:0] in,    
    input [2:0] sel,   
    output reg out     
);

    integer i;

    always @(*) begin
        out = 0;    
        for (i = 0; i < 8; i = i + 1) begin
            if (sel == i) begin
                out = in[i];
            end
        end
    end
endmodule
  
7. Write Verilog code for generating an infinite clock signal
with a 50% Duty cycle having a time period of 10ns using a
forever loop.
  answer:
  module clock_gen (
    output reg clk
);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns period, 5ns high, 5ns low
    end
endmodule
8. Draw the waveform for the below snippet.

initial
begin
#5 clk = 0;
forever #5clk =~clk; end
initial
begin
rst = 1;
repeat(3)@(negedge clk);
rst =0;
end
Ans:
 initial begin
    #5 clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    repeat (3) @(negedge clk);
    rst = 0;
end

   /answer : Time:  0   5  10  15  20  25  30  35  40  45  50
             clk :  -   0   1   0   1   0   1   0   1   0   1
The clock starts with an initial delay of 5 time units and then toggles every 5 time unit;

  
Time:  0   5  10  15  20  25  30  35  40  45  50
rst :  1   1   1   1   1   1   0   0   0   0   0

  here at negegde 10,20,30 after 30 the rst will be 0;

9. Write RTL code for designing a D latch using a 2:1 mux.
  answer:
  module D_latch (
    input D,
    input enable,
    output reg Q
);
    always @(*) begin
        if (enable)
            Q = D;
         // If enable is low, Q retains its value
        else 
          q=0;
    end
endmodule
10. Find the output for the below codes:
  

1) reg a,b;
always@(a,b) begin
#10 a &lt;= 1&#39;b0;
#1 b &lt;= 1&#39;b1;
a &lt;= 1;
#5 b &lt;= a;
$display($time,&quot;a=%d,b=%d&quot;,a,b);
end
ANSWER: At t=0, the always block is triggered.
At t=10, a is set to 0.
At t=11, b is set to 1.
Immediately after, a is set to 1.
At t=16, b is set to the value of a (which is 1).
  
2) reg a,b;
always@(a,b) begin
#10 a = 1&#39;b0;

Page 2

#1 b = 1&#39;b1;
a = 1;
#5 b = a;
$display($time,&quot;a=%d,b=%d&quot;,a,b);
end
ANSWER: At t=0, the always block is triggered.
At t=10, a is set to 0.
At t=11, b is set to 1.
Immediately after, a is set to 1.
At t=16, b is set to the value of a (which is 1).

3) reg a,
b;
initial begin
a=1;
b=a;
$display($time,&quot;a=%d,b=%d&quot;,a,b);
end
initial begin
#1 a&lt;=1;
b&lt;=a;
$display($time,&quot;a=%d,b=%d&quot;,a,b);
end
ANSWER:
In the first initial block, a is set to 1 and then b is set to a.
The $display statement prints a=1, b=1.
In the second initial block, after 1 time unit, a is set to 1 again and b is set to a.
The second $display statement prints a=1, b=1.
So, the output will be two lines showing a=1, b=1.

11. For the below RTL schematic write the RTL snippet.
  module DFLIP (
    input x1, x2, x3, clock,
    output g, f
);
    reg  q1, q1_bar, q2, q2_bar;
    
    // D flip-flop instantiation for the first flip-flop
    always @(posedge clock) begin
        q1 <= x1 & x2;
        q1_bar <= ~(x1 & x2);
    end

    // D flip-flop instantiation for the second flip-flop
    always @(posedge clock) begin
        q2 <= q1 | x3;
        q2_bar <= ~(q1 | x3);
    end

    assign g = q2;
    assign f = q1;


endmodule

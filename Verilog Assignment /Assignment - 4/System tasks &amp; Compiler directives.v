1. What value of a is displayed on the console output? Justify the
same.
reg[1:0]a;
initial
begin
$display($time,“a=%d”,a);
a =2’d3;
#10;
a = 2’d2;
end
Ans: a = 2

2. What is the value of b displayed on the console output? Justify the
same.

reg[1:0]b;
initial
begin
$strobe($time,“b=%d”,b);
b =2’d3;
b = 2’dx;
#10;
b = 2’d2;
end
Ans: a = 2

3. What values are monitored for the variable b till the end of
simulation time? Display the same.

reg[1:0]b;
initial
begin
$monitor($time,“b=%d”,b);
b = 2’d0;
b = 2’dx;
#10;
b = 2’d2;
#10;

b = 2’d1;
$monitoroff;
#10;
b = 2’d2;
$monitoron;
#10;
#100 $finish;
end
Ans: a = 0,x,2,1,2.
4. Display the console output for the following.

`timescale 10ns/1ns
parameter P=15.5;
reg a;
initial begin
$monitor($time,“Value of a = %b”,a); #P a =
1’b1;
#P a = 1’b0;
end

5. Display the console output for the following.
`timescale 10ns/1ns
parameter P=15.5 ;
reg a ;
initial
begin
$monitor($realtime,“Value of a = %b”,a);
#P a = 1’b1;
#P a = 1’b0;
end
Ans: 
0.000000 Value of a = x
155.000000 Value of a = 1
310.000000 Value of a = 0


6. Write Verilog code in order to generate 5 odd random numbers between 1 to 10.
  Ans:
  module odd_random_generator(
    input wire clk,
    output reg [3:0] odd_number
);

reg [3:0] rand_num;
reg [2:0] count;

initial begin
    count = 0;
    odd_number = 0;
end

always @(posedge clk) begin
    if (count < 5) begin
        rand_num <= $random % 10 + 1; 
        if (rand_num % 2 == 1) begin  
            odd_number <= rand_num;  
            count <= count + 1;
        end
    end
end

endmodule


7. Write RTL code for designing a JK Flip-flop and use the following input states as `define macro: SET, RESET, TOGGLE, HOLD.
 Ans:
  module jk_flipflop (
    input wire J, 
    input wire K,
    input wire clk, 
    input wire rst, 
    input wire state,
    output reg Q,
    output reg nQ 
);

`define SET 2'b00
`define RESET 2'b01
`define TOGGLE 2'b10
`define HOLD 2'b11

always @ (posedge clk or posedge rst)
begin
    if (rst) begin
        Q <= 1'b0;
        nQ <= 1'b1;
    end
    else begin
        case (state)
            `SET: begin
                Q <= 1'b1;
                nQ <= 1'b0;
            end
            `RESET: begin
                Q <= 1'b0;
                nQ <= 1'b1;
            end
            `TOGGLE: begin
                if (J & K) begin
                    Q <= ~Q;
                    nQ <= ~nQ;
                end
            end
            `HOLD: begin
                
            end
        endcase
    end
end

endmodule

  
8. Write Verilog code in order to generate a clock signal of frequency ; 1Ghz. Use the following timescale: `timescale 1us/1ps
  Ans:
  module clock_generator(
    output reg clk
);

reg [24:0] count;

initial begin
    count = 0;
    clk = 0;
end

always @(posedge #(1.0/2.0) clk) begin
    count <= count + 1;
    if (count == 500) begin  
        count <= 0;
        clk <= ~clk;  
    end
end

endmodule

9. Write Verilog code for reading an external file “f1.txt” from the path location/home/user1/sim and transfer the contents of the file to an 8-bit data_in bus in every clock cycle.
Ans:
  module file_reader(
    input wire clk, 
    output reg [7:0] data_in 
);

reg [7:0] file_data; 
integer file_handle; 

initial begin
    file_handle = $fopen("/home/user1/sim/f1.txt", "r"); 
    if (file_handle == 0) begin
        $display("Error: Unable to open the file");
        $finish; 
    end
end

always @(posedge clk) begin
    if (!$feof(file_handle)) begin
        $fscanf(file_handle, "%h", file_data); 
        data_in <= file_data; 
    end
    else begin
        $display("End of file reached");
      $fclose(file_handle)
        $finish;
    end
end

endmodule

  
10. Find the bug if any in the following File write operation snippet.

module test ;

reg [5:0]channel ;
reg a ;
initial
begin
channel = $fopen(“file1.txt”);
$monitor(channel,”a=%b”,a);
end
endmodule

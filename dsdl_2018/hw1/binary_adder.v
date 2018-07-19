module binary_adder( a, b, sum);
input [5:0] a;
input [5:0] b;
output [5:0] sum;
wire [5:0]carry;
reg zero;
/*
TODO:
use full_adder module to build a binary adder:
a + b = sum
Please see the testbench binary_adder_tb.v for the sample input and output.
*/
genvar i;
for(i = 0; i < 6; i = i + 1)
	begin
	if(i == 0)
		full_adder full_adder0(.a(a[0]), .b(b[0]), .sum(sum[0]), .cin(0), .cout(carry[0]));
	else
		full_adder full_adder1(.a(a[i]), .b(b[i]), .sum(sum[i]), .cin(carry[i - 1]), .cout(carry[i]));
	end
endmodule

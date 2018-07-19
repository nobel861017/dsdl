module binary_adder(a,b,sum);
input [5:0] a;
input [5:0] b;
output [5:0] sum;
wire [5:0] c;
reg zero;
genvar i;
/*i = 0;
while (i < 6) begin
	if(i == 0)
		full_adder full_adder0(.a(a[0]), .b(b[0]), .sum(sum[0]), .cin(0), .cout(c[0]));	
	else
		full_adder full_adder1(.a(a[i]), .b(b[i]), .sum(sum[i]), .cin(c[i-1]), .cout(c[i]));
	i = i + 1;
end*/
for(i = 0; i < 6; i = i + 1) begin
        if(i == 0)
                full_adder full_adder0(.a(a[0]), .b(b[0]), .sum(sum[0]), .cin(0), .cout(c[0])); 
        else
                full_adder full_adder1(.a(a[i]), .b(b[i]), .sum(sum[i]), .cin(c[i-1]), .cout(c[i]));
end
endmodule

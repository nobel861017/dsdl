`timescale 1ns/100ps

module half_adder_tb;
reg a;
reg b;
reg cin;
wire sum, cout;

initial begin
	$dumpfile("full_adder.vcd");
	$dumpvars;
end

initial begin
	a = 0; b = 0; cin =0;
	# 100 a = 0; b = 0; cin = 1;
	# 100 a = 0; b = 1; cin = 1;
	# 100 a = 1; b = 1; cin = 1;
	# 100 a = 1; b = 1; cin = 0;
	# 100 a = 0; b = 1; cin = 0;
	# 100 a = 1; b = 0; cin = 0;
	# 100 a = 1; b = 0; cin = 1;
	# 100
	$finish;
end

full_adder full_adder_0( .a(a), .b(b), .sum(sum), .cin(cin), .cout(cout));

endmodule

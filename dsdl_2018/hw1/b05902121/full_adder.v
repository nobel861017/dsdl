module full_adder(a,b,sum,cin,cout);

input a;
input b;
input cin;
output sum;
output cout;
wire tmp_sum, tmp1, tmp2;

xor xor0(tmp_sum,a,b);
xor xor1(sum,tmp_sum,cin);
and and0(tmp1,a,b);
and and0(tmp2,tmp_sum,cin);
or or0(cout,tmp1,tmp2);

endmodule

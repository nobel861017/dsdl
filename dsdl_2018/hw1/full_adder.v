module full_adder(a, b, sum, cin, cout);

input a;
input b;
input cin;
output sum;
output cout;
wire temp1, temp2, temp3;
/*
TODO:
use gate level primitives to construct a full adder
Useful gate primitives: or, and , xor
*/
xor xor0(sum, a, b, cin);
and and0(temp1, a, b);
and and1(temp2, a, cin);
and and2(temp3, cin, b);
or or0(cout, temp1, temp2, temp3);

endmodule

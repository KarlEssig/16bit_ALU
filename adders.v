module half_adder(input a,b, output c,s);
  assign c = a & b;
  assign s = a ^ b;
endmodule

module full_adder(input a,b,cin, output cout, s);
  wire wire1, wire2, wire3;
   half_adder H1(a,b,wire1,wire2);
   half_adder H2(wire2, cin, wire3, sum);
   assign cout = wire1 | wire3;
 endmodule
 
 module full_adder4(input [3:0] a,b, input cin, output cout, output [3:0] s);
  wire wire1, wire2, wire3;
  full_adder A1(a[0],b[0],cin,wire1,s[0]);
  full_adder A2(a[1],b[1],wire1,wire2,s[1]);
  full_adder A3(a[2],b[2],wire2,wire3,s[2]);
  full_adder A4(a[3],b[3],wire3,cout,s[3]);
endmodule

module full_adder16(input [15:0] a,b, input cin, output cout, output [15:0] s);
  wire wire1, wire2, wire3;
  full_adder4 A1(a[3:0], b[3:0], cin, wire1, s[3:0]);
  full_adder4 A2(a[7:4], b[7:4], wire1, wire2, s[7:4]);
  full_adder4 A3(a[11:8], b[11:8], wire2, wire3, s[11:8]);
  full_adder4 A4(a[15:12], b[15:12], wire3, cout, s[15:12]);
 endmodule

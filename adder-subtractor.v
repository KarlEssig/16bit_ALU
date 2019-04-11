module half_addersub(input a,b,enable, output c,s);
  wire wire1;
  assign wire1 = enable ^ b; 
  assign c = a & wire1;
  assign s = a ^ wire1;
endmodule

module full_addersub(input a,b,cin,enable, output cout, s);
  wire wire1, wire2, wire3;
   half_addersub H1(a,b,enable,wire1,wire2);
   half_addersub H2(wire2, cin, enable, wire3, sum);
   assign cout = wire1 | wire3;
 endmodule
 
 module full_addersub4(input [3:0] a,b, input cin, enable, output cout, output [3:0] s);
  wire wire1, wire2, wire3;
  full_addersub A1(a[0],b[0],cin,enable,wire1,s[0]);
  full_addersub A2(a[1],b[1],wire1,enable,wire2,s[1]);
  full_addersub A3(a[2],b[2],wire2,enable,wire3,s[2]);
  full_addersub A4(a[3],b[3],wire3,enable,cout,s[3]);
endmodule

module full_addersub16(input [15:0] a,b, input enable, output cout, output [15:0] s);
  wire wire1, wire2, wire3;
  full_addersub4 A1(a[3:0], b[3:0], enable, enable, wire1, s[3:0]);
  full_addersub4 A2(a[7:4], b[7:4], wire1, enable, wire2, s[7:4]);
  full_addersub4 A3(a[11:8], b[11:8], wire2, enable, wire3, s[11:8]);
  full_addersub4 A4(a[15:12], b[15:12], wire3, enable, cout, s[15:12]);
 endmodule


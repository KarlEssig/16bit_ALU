/*module half_addersub(input a,b,enable, output c,s);
  wire wire1;
  assign wire1 = enable ^ b; 
  assign c = a & wire1;
  assign s = a ^ wire1;
endmodule
*/
module full_addersub(input a,b,cin,output sum, cout);
	assign sum = a ^ b ^ cin;
	assign cout = (a & b) | ((a ^ b) &  cin);
endmodule

module full_addersub16(input enable, input [15:0] a,b, output cout, output [15:0] sum);
	wire[16:0] carrywire;
	assign carrywire[0] = enable;
	genvar x;
	generate
	for(x = 0; x < 16; x = x + 1)
	begin
	full_addersub Adder(a[x],b[x]^enable,carrywire[x],sum[x],carrywire[x+1]);  
	end
	endgenerate
	assign cout = carrywire[16];
endmodule

/* 
 module full_addersub4(input [3:0] a,b, input cin, enable, output cout, output [3:0] s);
  wire wire1, wire2, wire3;
  full_addersub A1(a[0],b[0]^enable,cin,wire1,s[0]);
  full_addersub A2(a[1],b[1]^enable,wire1,wire2,s[1]);
  full_addersub A3(a[2],b[2]^enable,wire2,wire3,s[2]);
  full_addersub A4(a[3],b[3]^enable,wire3,cout,s[3]);
endmodule

module full_addersub162(input [15:0] a,b, input enable, output cout, output [15:0] s);
  wire wire1, wire2, wire3;
  full_addersub4 A1(a[3:0], b[3:0], enable, enable, wire1, s[3:0]);
  full_addersub4 A2(a[7:4], b[7:4], wire1, enable, wire2, s[7:4]);
  full_addersub4 A3(a[11:8], b[11:8], wire2, enable, wire3, s[11:8]);
  full_addersub4 A4(a[15:12], b[15:12], wire3, enable, cout, s[15:12]);
 endmodule
*/
module testbench();

//Testing Adder

  reg [15:0] a, b;
  reg enable;
  wire [15:0] sum;
  wire cout;

  full_addersub16 mult(enable, a, b, cout, sum);

  initial begin 
    a = 0; b = 0; enable = 0;
    #250  a=16'b0000000000000101;b=16'b0000000000000001;
    #250  a=16'b0111010001110101;b=16'b0101100110010110;
    #250  a=16'b1111010001110101;b=16'b1101100110010110;
  end

  initial begin
    $display("        A                          B                               SUM                  COUT");
    $monitor(" %b          %b          %b         %b", a, b, sum,cout);
  end


endmodule


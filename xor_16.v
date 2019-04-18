module Xor_16(input [15:0] a, b, output [15:0] s);
	assign s[0] = a[0] ^ b[0];
	assign s[1] = a[1] ^ b[1];
	assign s[2] = a[2] ^ b[2];
	assign s[3] = a[3] ^ b[3];
	assign s[4] = a[4] ^ b[4];
	assign s[5] = a[5] ^ b[5];
	assign s[6] = a[6] ^ b[6];
	assign s[7] = a[7] ^ b[7];
	assign s[8] = a[8] ^ b[8];
	assign s[9] = a[9] ^ b[9];
	assign s[10] = a[10] ^ b[10];
	assign s[11] = a[11] ^ b[11];
	assign s[12] = a[12] ^ b[12];
	assign s[13] = a[13] ^ b[13];
	assign s[14] = a[14] ^ b[14];
	assign s[15] = a[15] ^ b[15];
endmodule

module testbench();

//Testing Xor_16

  reg [15:0] a, b;
  wire [15:0] s;

  Xor_16 simpleXor(a, b, s);

  initial begin 
    a = 0; b = 0; 
    #250  a=16'b0000010001110101;b=16'b0101100101110110;
    #250  a=16'b0111010001110101;b=16'b0101100110010110;
    #250  a=16'b1111010001110101;b=16'b1101100110010110;
  end

  initial begin
    $display("        A                          B                        XOR    ");
    $monitor(" %b          %b          %b         ", a, b, s);
  end

endmodule

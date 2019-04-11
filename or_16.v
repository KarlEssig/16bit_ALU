module Or_16(input [15:0] a, b, output [15:0] s);
	s[0] = a[0] & b[0];
	s[1] = a[1] & b[1];
	s[2] = a[2] & b[2];
	s[3] = a[3] & b[3];
	s[4] = a[4] & b[4];
	s[5] = a[5] & b[5];
	s[6] = a[6] & b[6];
	s[7] = a[7] & b[7];
	s[8] = a[8] & b[8];
	s[9] = a[9] & b[9];
	s[10] = a[10] & b[10];
	s[11] = a[11] & b[11];
	s[12] = a[12] & b[12];
	s[13] = a[13] & b[13];
	s[14] = a[14] & b[14];
	s[15] = a[15] & b[15];
endmodule

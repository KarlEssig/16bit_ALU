module CheckMultiply(input[31:0] a, output overflow, output [15:0] multout);
	assign overflow = a[31] | a[30] | a[29] | a[28] | a[27] | a[26] | a[25] | a[24] | a[23] | a[22] | a[21] | a[20] | a[19] | a[18] | a[17] | a[16];
	assign multout[15:0] = a[15:0];
endmodule


module CheckDivide(input[15:0] b, output error, output[15:0] nb);
	assign error = (b[0] | b[1] | b[2] | b[3] | b[4] | b[5] | b[6] | b[7] | b[8] | b[9] | b[10] | b[11] | b[12] | b[13] | b[14] | b[15]) == 0;
	assign nb = b;
	assign nb[15] = error == 1 ? 1 : b[15];
endmodule

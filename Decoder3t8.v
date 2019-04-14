module Decoder3t8(input[2:0] select, output[7:0] out);
	assign out[0] = (select == 0);
	assign out[1] = (select == 1);
	assign out[2] = (select == 2);
	assign out[3] = (select == 3);
	assign out[4] = (select == 4);
	assign out[5] = (select == 5);
	assign out[6] = (select == 6);
	assign out[7] = (select == 7);
endmodule

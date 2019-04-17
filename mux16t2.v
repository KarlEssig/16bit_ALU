module Mux16t2(input select, input[15:0] d0,d1, output[15:0] res);
	assign res = select == 0 ? d0 : d1;
endmodule

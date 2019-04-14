
module Mux16t8(input[7:0] select, input[15:0] d0,d1,d2,d3,d4,d5,d6,d7, output[15:0] res);
	assign res = select[0] == 1 ? d0 : select[1] == 1 ? d1 : select[2] == 1 ? d2 : select[3] == 1 ? d3 : select[4] == 1 ? d4 : select[5] == 1? d5 : select[6] == 1 ? d6 : d7;
endmodule

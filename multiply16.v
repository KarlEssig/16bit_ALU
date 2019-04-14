module Multiply16(input [15:0] a, b, output reg [31:0] p);
	integer x;
	always @(a or b)
	begin
		p = 0;
		
		for (x = 0; x < 16; x = x + 1)
			assign p = a[x] == 1 ? p + (b << x) : p;

	end
endmodule

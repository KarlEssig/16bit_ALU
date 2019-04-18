module Multiply16(input [15:0] a, b, output reg [31:0] p);
	integer x;

	always @(a or b)
	begin
		p = 0;
		
		for (x = 0; x < 16; x = x + 1)
			if ( a[x] == 1'b1 ) 
				p = p + (b << x);
	end
endmodule

module testbench();

//Testing Multiplier

  reg [15:0] a, b;
  wire [31:0] p;

  Multiply16 mult(a, b, p);

  initial begin 
    a = 0; b = 0; 
    #250  a=16'b0000010001110101;b=16'b0101100101110110;
    #250  a=16'b0111010001110101;b=16'b0101100110010110;
    #250  a=16'b1111010001110101;b=16'b1101100110010110;
  end

  initial begin
    $display("        A                          B                               MULT    ");
    $monitor(" %b          %b          %b         ", a, b, p);
  end


endmodule

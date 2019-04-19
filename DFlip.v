/*module DFlipFlop2(input [1:0] a, clock, reset, output reg [1:0] s);
	always @(posedge clock)
	begin
		s = a;
	end
	always @(posedge reset)
	begin
		s = 0;
	end
endmodule
*/
module DFlipFlopRUNNING(input a, clock, reset, output reg s);
	always @(posedge clock)
	begin
		s = 1;
	end
	always @(posedge reset)
	begin
		s = 1;
	end
endmodule

module DFlipFlopERROR(input a, clock, reset, output reg s);
	always @(posedge clock)
	begin
		s = a;
	end
	always @(posedge reset)
	begin
		s = 0;
	end
endmodule


module DFlipFlop16(input [15:0] a, clock, reset, output reg [15:0] s);
	always @(posedge clock)
	begin
		s = a;
	end
	always @(posedge reset)
	begin
		s = 0;
	end
endmodule



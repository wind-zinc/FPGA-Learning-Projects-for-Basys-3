`timescale 1ns / 1ps

module sw_2(
input wire 			 clk,
input wire [1:0] sw, //width
input wire 			 sw1,
input wire 			 sw2,
output reg 			 led
);

always@(posedge clk) begin
	case(sw)
		2: led <= (sw1 && sw2);
		1: led <= (sw1 || sw2);
		default: led <= 0;
	endcase
end
endmodule
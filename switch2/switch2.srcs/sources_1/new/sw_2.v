`timescale 1ns / 1ps
/*module sw_2(
input wire clk,
input wire sw1,sw2,sw3,sw4,
output reg led

    );
always@(posedge clk)begin
	if(sw1 == 1 && sw2 == 0) begin
	 led <= (sw3 && sw4);
end
  else if(sw1 == 0 && sw2 == 1) begin
  	led <= (sw3 | sw4);
  end
  else begin 
  	led <= 0;
  end
end
endmodule*/

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
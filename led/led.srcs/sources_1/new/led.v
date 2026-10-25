`timescale 1ns / 1ps
// clk 100MHz W5
module led(
input wire clk,
output reg led = 0
    );
/*
reg a = 1;
reg b = 2;

assign a = b; //a=2 b=2
assign b = a; //a=b=2

always@(posedge clk) begin
	a <= b;
	b <= a;
end // a=2 b=1

always(*)  always* always_comb begin // 敏感电平触发
	case(a) 
		1: ....
		2: ...
	endcase
end*/
reg [29:0] cnt = 0; // width
//reg [2:0] cnyt = 0;
//reg led2 = 1;

always@(posedge clk) begin
	if(cnt == 50_000_000) begin //cnt == 500_000_000
		led <= ~led;
		cnt <= 0;
	end
	else begin
		cnt <= cnt + 1'b1;
	end
/*	if(cnyt == 5)begin
		led2 <= ~led2;
	end
	else begin 
		cnyt = cnyt + 1;
	end*/
end

//~ 按位非 4'b0010 => 4'b1101
//! 逻辑非 xxx => 0 or 1 
//led [7:0] = 0; xxx //数组
//led [7] = 1


endmodule


`timescale 1ns / 1ps
// clk 100MHz W5
module led(
input wire clk,
output reg led = 0
    );

reg [29:0] cnt = 0; // width
always@(posedge clk) begin
	if(cnt == 50_000_000) begin //cnt == 500_000_000
		led <= ~led;
		cnt <= 0;
	end
	else begin
		cnt <= cnt + 1'b1;
	end

end
endmodule


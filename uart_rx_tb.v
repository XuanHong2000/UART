`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:17 09/24/2021
// Design Name:   uart_rx
// Module Name:   D:/tt tkvm 1/uart/uart_rx_tb.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_rx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_rx_tb;
  // Inputs
	reg wr;
	reg clk;
	reg ret;
	reg [10:0] rx;
  // Outputs
	wire [7:0] data_out;
	uart_rx uut (
		.wr(wr), 
		.clk(clk), 
		.ret(ret), 
		.rx(rx), 
		.data_out(data_out));
   initial begin
		clk = 0;
      forever #10 clk=~clk;
		end
		initial begin
		wr = 0;
      forever #40 wr=~wr;
		end
	initial begin
		rx = 00111010111;
		ret=1 ;
		#100;
		
	end
endmodule


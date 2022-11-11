`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:02 09/24/2021
// Design Name:   uart_tx
// Module Name:   D:/tt tkvm 1/uart/uart_tx_tb.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_tx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_tx_tb;
	// Inputs
	reg [7:0] data;
	reg clk;
	reg ret;
	// Outputs
	wire [10:0] tx;
   // Instantiate the Unit Under Test (UUT)
	uart_tx uut (
		.data(data), 
		.clk(clk), 
		.ret(ret), 
		.tx(tx));
    initial begin
		clk = 0;
      forever #5 clk=~clk;
		end
	initial begin
		ret = 0;
      forever #20 ret=~ret;
		end
	initial begin
	data = 01110101;
		ret =1;
		#100;
	end     
endmodule







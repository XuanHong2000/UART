`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:04 09/24/2021 
// Design Name: 
// Module Name:    uarttxrx 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uarttxrx (
input clk1,ret1,wr1,ret2,
input [7:0]data1,
output [7:0]data_out1);
wire [10:0]tx1;

	uart_tx I1(.data(data1),.clk(clk1),.ret(ret1),.tx(tx1));
	uart_rx I2(.wr(wr1),.clk(clk1),.ret(ret2),.rx(tx1),.data_out(data_out1));
		
endmodule


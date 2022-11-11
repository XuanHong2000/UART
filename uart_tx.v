`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:45 09/24/2021 
// Design Name: 
// Module Name:    uart_tx 
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
module uart_tx (
input [7:0]data,
input clk,ret,
output [10:0]tx );
reg tx_start,buad_clk;
reg [10:0]data_frame;
reg [2:0]count;
always@(posedge clk)
	begin
		if(ret==0)
			tx_start=0;
		else
			tx_start=1;
	end
always@(posedge clk)
	begin
		if(tx_start==1)
			count=count+1;
		else
			count=0;
	end
always@(posedge clk)
	begin
		if(count==3'b111)
			buad_clk=1;
		else
	      buad_clk=0;
end
always@(posedge clk)
	begin
		if(ret==0)
			data_frame={1'b0, data, ^data, 1'b1};
			if(buad_clk==1)
					data_frame=data_frame>>1;
			else
				data_frame=data_frame;
	end
assign tx[10:0]=data_frame;

endmodule


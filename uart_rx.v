`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:53 09/24/2021 
// Design Name: 
// Module Name:    uart_rx 
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
module uart_rx (
input wr,clk,ret,
input [10:0]rx,
output reg [7:0]data_out);
reg rx_start,buad_clk;
reg [10:0]data_frame;
reg [2:0]count;
always@(posedge clk)
	begin
		if(ret==0)
			rx_start=0;
		else 
			if(wr==1)   //wr =1 no moi chay
				rx_start=1;  
			else
				rx_start=0;
	end
always@(posedge clk)
	begin
		if(ret==0)
			count=0;
		else 
				if(rx_start==1)
					count=count+1;
				else
					count=0;
	end
always@(posedge clk)
	begin
		if(ret==0)
			buad_clk=0;
		else
			if(count==1)
				buad_clk=1;
			else
				buad_clk=0;
	end
always@(posedge clk)
	begin
		if(ret==0)
			data_frame=11'b00000000000;
		else 
			if(buad_clk==1)
				begin
				//data_frame=0;
				data_frame=rx;
				//data_frame=data_frame>>1;
				end
			else
			data_frame=data_frame;
	end
always@(posedge clk)
	begin
		if(ret==0)
			data_out=8'b0;
		else 
			if(data_frame[0]==1)
				begin
					data_out=data_frame[9:2];
					//data_frame=11'b0;
				end
		   else
				data_out=8'b0 ;
	end
endmodule


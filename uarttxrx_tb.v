`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:20:31 10/12/2021
// Design Name:   uarttxrx
// Module Name:   D:/tt tkvm 1/uart/uarttxrx_tb.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uarttxrx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uarttxrx_tb;
   // Inputs
	reg clk1;
	reg ret1;
	reg wr1;
	reg ret2;
	reg [7:0] data1;
   // Outputs
	wire [7:0] data_out1;
  // Instantiate the Unit Under Test (UUT)
	uarttxrx uut (
		.clk1(clk1), 
		.ret1(ret1), 
		.wr1(wr1), 
		.ret2(ret2), 
		.data1(data1), 
		.data_out1(data_out1)
	);
	initial begin
		// Initialize Inputs
		clk1 = 0;
      forever #10 clk1=~clk1;
		end
	initial begin
		 
		ret1 = 0;
      forever #20 ret1=~ret1;
		end
	initial begin
		wr1 = 0;
      forever #40 wr1=~wr1;
		end
	initial begin
		data1 =8'b01110101;
		ret2=1;
		#100;
	end     
endmodule

	

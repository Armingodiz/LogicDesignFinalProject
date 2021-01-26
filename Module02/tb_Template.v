`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:54 01/26/2021
// Design Name:   GasDetectorSensor
// Module Name:   F:/Xilinx_install/Projects/Final/Module2/Module/TemplateTB.v
// Project Name:  Module
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GasDetectorSensor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TemplateTB;

	// Inputs
	reg arst;
	reg clk;
	reg din;

	// Outputs
	wire [2:0] dout;

	// Instantiate the Unit Under Test (UUT)
	GasDetectorSensor uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.dout(dout)
	);
	
	initial begin
		clk = 0;
		# 5
		repeat (20)
			# 10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		arst = 1'b1;
		# 2
		arst = 1'b0;
		din = 1'b0;
		#10
		din = 1'b1;
		# 10
		din = 1'b0;
		# 40
		din = 1'b0;
		# 10 
		din = 1'b1;
		# 10
		din = 1'b0;
		# 40
		din = 1'b0;
		# 10 
		din = 1'b1;
		# 10
		din = 1'b0;
		# 40
		din = 1'b0;
	end
      
endmodule
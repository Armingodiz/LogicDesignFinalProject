`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:59 01/25/2021
// Design Name:   LightingSystem
// Module Name:   F:/LOGIC AZ/final_4/tb_system.v
// Project Name:  final_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LightingSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_system;

	// Inputs
	reg [3:0] tcode;
	reg [3:0] ulight;
	reg [3:0] lenght;

	// Outputs
	wire [3:0] wshade;
	wire [3:0] lightnum;
	wire [15:0] lightstate;

	// Instantiate the Unit Under Test (UUT)
	LightingSystem uut (
		.tcode(tcode), 
		.ulight(ulight), 
		.lenght(lenght), 
		.wshade(wshade), 
		.lightnum(lightnum), 
		.lightstate(lightstate)
	);

	initial begin
		// Initialize Inputs
		tcode = 4'b0000;
		ulight = 4'b1010;
		lenght = 4'b1100;

		// Wait 100 ns for global reset to finish
		#100;
		tcode = 4'b0001;
		#100;
		tcode = 4'b0010;
		#100;
		tcode = 4'b0100;
		#100;
		tcode = 4'b1000;
		#100
		$finish;
        
		  
		// Add stimulus here

	end
      
endmodule


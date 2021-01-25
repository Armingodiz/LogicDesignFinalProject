`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:34 01/24/2021 
// Design Name: 
// Module Name:    TemperatureCalculator 
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
module TemperatureCalculator (
	input  [31:0] tc_base  , // base [environment degree ]
	input  [ 7:0] tc_ref   , // ref  [system work voltage]
	input  [15:0] adc_data , // adc  [sensor digital data]
	output [31:0] tempc      // temp [temperature celsius]
);
	// multiplier 8 * 8 
	wire [15:0] mul8_output;
	Multiplier8x8 multiplayer8 (tc_ref, tc_ref,mul8_output);
	// multiplier 16 * 16 
	wire [31:0] mul16_output;
	wire [15:0] unsigned_vector;
	assign unsigned_vector = {1'b0, adc_data[14:0]}; // replacing mvb with 0 and passing the main one to adderSubtractor
	Multiplier16x16 multi16x16 (mul8_output, unsigned_vector, mul16_output);
	// divide by 64 by calling TemperatureCalculatorUtils : 
	wire [31:0] devide_result;
	TemperatureCalculatorUtils divide (mul16_output, devide_result);
	// final output by calling addersubractor :
	AdderSubtractor32x32 adder_subtractor (tc_base, devide_result, adc_data[15], tempc);
	
endmodule

`timescale 1ns / 1ns
/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/
/*-----------------------------------------------------------
---  Module Name: Gas Detector Sensor
---  Description: Module2:
-----------------------------------------------------------*/
module GasDetectorSensor (
	input        arst     , // async reset
	input        clk      , // clock posedge
	input        din      , // input data 
	output [2:0] dout       // output data
);
	
	MethanDetector mthn (arst, clk, din, dout[0]);
	CoDetector co (arst, clk, din, dout[1]);
	Co2Detector co2 (arst, clk, din, dout[2]);

endmodule
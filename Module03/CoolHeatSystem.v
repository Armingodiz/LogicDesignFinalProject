`timescale 1ns/ 1ns
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
---  Module Name: Cool Heat System
---  Description: Module3:
-----------------------------------------------------------*/
module CoolHeatSystem (
	input        arst      , // reset [asynch]  
	input        clk       , // clock [posedge] 
	input  [7:0] speed     , // speed [duty-cycle]  
	input  [7:0] chs_conf  , // degree [temprature] 
	output [3:0] chs_power , // power  [cooler/heater] 
	output       chs_mode  , // model  [heat=1/cool=0]
	output       pwm_data    // data  [output]
);

	FanSpeed fanspeed (arst, clk, speed, pwm_data);
	ModePower modepower (chs_conf, chs_power, chs_mode);
	
endmodule
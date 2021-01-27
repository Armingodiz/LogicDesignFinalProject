`timescale 1 ns/1 ns
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
---  Module Name: Power Mode (Conting Ones)
---  Description: Module3: 
-----------------------------------------------------------*/
module ModePower (
	input  [7:0] chs_conf  , // degree [temprature] 
	output [3:0] chs_power , // power  [cooler/heater] 
	output       chs_mode    // model  [heat=1/cool=0]
);
	// we add each bit (this will be count of 1 in our input ) 
	wire [3:0] count1;
	assign count1 = chs_conf[0] + chs_conf[1] + chs_conf[2] + chs_conf[3] + chs_conf[4] + chs_conf[5] + chs_conf[6] + chs_conf[7];
	assign chs_mode = ~ count1[0];
	assign chs_power = count1;

endmodule
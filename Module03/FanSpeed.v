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
---  Module Name: Fan Speed (PWM)
---  Description: Module3: 
-----------------------------------------------------------*/
module FanSpeed (
	input        arst     , // reset [asynch]  
	input        clk      , // clock [posedge] 
	input  [7:0] speed    , // speed [duty-cycle]  
	output       pwm_data   // data  [output]
);
	reg temp; 
	wire [7:0] count;
	
	Counter counter (clk, arst, count);
	
	always @ ( posedge clk or posedge arst )
	begin
		if ( arst == 1'b1 ) temp <= 1'b0;
		else begin
			if ( count < speed ) temp <= 1'b1;
			else temp <= 1'b0;
		end
	end

	assign pwm_data = temp;

endmodule
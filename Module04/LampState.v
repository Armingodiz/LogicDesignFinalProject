`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:30 01/25/2021 
// Design Name: 
// Module Name:    LampState 
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
module LampState (
	input  [ 3:0] active_lights , // number of active light
	output reg [15:0]  lights_state    // state of lights is on
);
	integer index;
	reg [3:0]counter;
	always @ (active_lights) begin
		counter = 4'b0000;
		for (index = 0; index <16 ; index = index+1)begin
			lights_state[index] = ((active_lights > counter)? 1'b1 : 1'b0);
			counter = counter + 4'b0001;
		end
	end

endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:15 01/25/2021 
// Design Name: 
// Module Name:    ActiveLamps 
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

module ActiveLamps (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
    input  [3:0] lenght     , // room length  [square room lenght ]
	output reg [3:0] active_lights  // number of active light
);
always @ (tcode, ulight, lenght)begin
	case(tcode)
		4'b0000: active_lights = 4'b0000;
		4'b0001: active_lights = 4'b0000;
		4'b0010: active_lights = 4'b0000;
		4'b0100: active_lights = lenght / 4'b0100;
		4'b1000: active_lights = ulight;
	endcase
end

endmodule
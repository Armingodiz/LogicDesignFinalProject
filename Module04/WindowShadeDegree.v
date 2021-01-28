`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:45 01/25/2021 
// Design Name: 
// Module Name:    WindowShadeDegree 
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
module WindowShadeDegree (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
	output reg [3:0] wshade   // shade level  [window shade level ]
);
always @ (tcode, ulight)begin
	case(tcode )
		4'b0000: wshade = 4'b0000;
		4'b0001: wshade = 4'b1111;
		4'b0010: wshade = 4'b1011;
		4'b0100: wshade = ulight;
		4'b1000: wshade = 4'b0000;
	endcase
end

endmodule
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
---  Module Name: Gas Engine Utils
---  Description: Module2:
-----------------------------------------------------------*/
/***********************************************************/
/************** Design Your Own Modules Below **************/
module MethanDetector(
	input arst,
	input clk,
	input din,
	output reg dout
);
	
	parameter 
		S0 =4'b0000,
		S1 = 4'b0001,
		S2 = 4'b0010,
		S3 = 4'b0011,
		S4 = 4'b0100,
		S5 = 4'b0101,
		S6 = 4'b0110,
		S7 = 4'b0111,
		S8 = 4'b1000;
		
	reg [3:0] present_state = S0, next_state=S0;
	
	always @ ( posedge clk or posedge arst )begin
			if ( ~arst )
				dout <= 1'b0;
			else begin 
				if( present_state == S8 )
					dout <= 1'b1;
				present_state <= next_state;
			end
	end
	
	always @ (present_state or din) 
	begin
		case(present_state)
			S0:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S1;
				end
			S1:
				begin
					if(din== 1'b0) next_state <= S2;
					else next_state <= S1;
				end	
			S2:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S3;
				end	
			S3:
				begin
					if(din== 1'b0) next_state <= S2;
					else next_state <= S4;
				end	
			S4:
				begin
					if(din== 1'b0) next_state <= S2;
					else next_state <= S5;
				end	
			S5:
				begin
					if(din== 1'b0) next_state <= S6;
					else next_state <= S1;
				end	
			S6:
				begin
					if(din== 1'b0) next_state <= S7;
					else next_state <= S3;
				end					
			S7:
				begin
					if(din== 1'b0) next_state <= S8;
					else next_state <= S4;
				end
			S8:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S3;
				end
			default:
				begin
					next_state <= S0;
				end
			endcase
	end
	
endmodule
	
	
module CoDetector(
	input arst,
	input clk,
	input din,
	output reg dout
);
	
	parameter 
		S0 =4'b0000,
		S1 = 4'b0001,
		S2 = 4'b0010,
		S3 = 4'b0011,
		S4 = 4'b0100,
		S5 = 4'b0101,
		S6 = 4'b0110,
		S7 = 4'b0111,
		S8 = 4'b1000,
		S9 = 4'b1001,
		S10 = 4'b1010,
		S11 = 4'b1011,
		S12 = 4'b1100;
		
	reg [3:0] present_state = S0, next_state2 = S0;
	
	always @ ( posedge clk or posedge arst )begin
			if ( arst )
				dout <= 1'b0;
			else begin 
				if( present_state == S12 )
					dout <= 1'b1;
				present_state <= next_state2;
			end
	end
	
	always @ (present_state or din) 
	begin
		case(present_state)
			S0:
				begin
					if(din== 1'b0) next_state2 <= S0;
					else next_state2 <= S1;
				end
			S1:
				begin
					if(din== 1'b0) next_state2 <= S2;
					else next_state2 <= S1;
				end	
			S2:
				begin
					if(din== 1'b0) next_state2 <= S0;
					else next_state2 <= S3;
				end	
			S3:
				begin
					if(din== 1'b0) next_state2 <= S4;
					else next_state2 <= S1;
				end	
			S4:
				begin
					if(din== 1'b0) next_state2 <= S0;
					else next_state2 <= S5;
				end	
			S5:
				begin
					if(din== 1'b0) next_state2 <= S6;
					else next_state2 <= S1;
				end	
			S6:
				begin
					if(din== 1'b0) next_state2 <= S7;
					else next_state2 <= S5;
				end					
			S7:
				begin
					if(din== 1'b0) next_state2 <= S0;
					else next_state2 <= S8;
				end
			S8:
				begin
					if(din== 1'b0) next_state2 <= S9;
					else next_state2 <= S1;
				end
			S9:
				begin
					if(din== 1'b0) next_state2 <= S10;
					else next_state2 <= S3;
				end
			S10:
				begin
					if(din== 1'b0) next_state2 <= S0;
					else next_state2 <= S11;
				end
			S11:
				begin
					if(din== 1'b0) next_state2 <= S2;
					else next_state2 <= S12;
				end
			S12:
				begin
					if(din== 1'b0) next_state2 <= S2;
					else next_state2 <= S1;
				end
			default:
			begin
				next_state2 <= S0;
			end
			endcase
	end
	
endmodule


module Co2Detector(
	input arst,
	input clk,
	input din,
	output reg dout
);
	
	parameter 
		S0 =4'b0000,
		S1 = 4'b0001,
		S2 = 4'b0010,
		S3 = 4'b0011,
		S4 = 4'b0100,
		S5 = 4'b0101,
		S6 = 4'b0110,
		S7 = 4'b0111,
		S8 = 4'b1000,
		S9 = 4'b1001;
		
	reg [3:0] present_state = S0, next_state=S0;
	
	always @ ( posedge clk or posedge arst )begin
			if ( arst )
				dout <= 1'b0;
			else begin 
				if( present_state == S9 )
					dout <= 1'b1;
				present_state <= next_state;
			end
	end
	
	always @ (present_state or din) 
	begin
		case(present_state)
			S0:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S1;
				end
			S1:
				begin
					if(din== 1'b0) next_state <= S2;
					else next_state <= S1;
				end	
			S2:
				begin
					if(din== 1'b0) next_state <= S3;
					else next_state <= S1;
				end	
			S3:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S4;
				end	
			S4:
				begin
					if(din== 1'b0) next_state <= S5;
					else next_state <= S1;
				end	
			S5:
				begin
					if(din== 1'b0) next_state <= S6;
					else next_state <= S1;
				end	
			S6:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S7;
				end					
			S7:
				begin
					if(din== 1'b0) next_state <= S8;
					else next_state <= S1;
				end
			S8:
				begin
					if(din== 1'b0) next_state <= S9;
					else next_state <= S1;
				end
			S9:
				begin
					if(din== 1'b0) next_state <= S0;
					else next_state <= S4;
				end
			default:
				begin
					next_state <= S0;
				end
			endcase
	end
	
endmodule

/************** Design Your Own Modules Above **************/
/***********************************************************/
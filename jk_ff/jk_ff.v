`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//  _____                                            
// /__   \  ___  ___  _ __    ___   __ _  _ __   ___ 
//   / /\/ / _ \/ __|| '_ \  / _ \ / _` || '__| / _ \
//  / /   |  __/\__ \| |_) ||  __/| (_| || |   |  __/
//  \/     \___||___/| .__/  \___| \__,_||_|    \___|
//                   |_|                              
// Create Date: 12/10/2022 08:51:30 PM
// Design Name: 
// Module Name: jk_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module jk_ff(						
    input           clk,j,k,rst,set,	
    output reg      q,
    output          qb
);

assign qb = ~q;
always@(posedge clk or negedge rst or negedge set)
	begin
		if(!rst)
			q <= 1'b0;			
		else if (!set)
			q <= 1'b1;  		
		else
			case({j,k})
				2'b00:		q <= q;		
				2'b01:		q <= 0;		
				2'b10:		q <= 1;		
				2'b11:		q <= ~q;	
			endcase
	end
endmodule
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
// Module Name: segment
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

module segment(
    input  [3:0] seg_data_1,  
    input  [3:0] seg_data_2,  
    output [8:0] segment_led_1,  //segment1£¬MSB~LSB = SEG,DP,G,F,E,D,C,B,A
    output [8:0] segment_led_2   //segment2£¬MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

reg[8:0] seg [15:0];          
initial 
	begin
		seg[0] = 9'h3f;   //  0
		seg[1] = 9'h06;   //  1
		seg[2] = 9'h5b;   //  2
		seg[3] = 9'h4f;   //  3
		seg[4] = 9'h66;   //  4
		seg[5] = 9'h6d;   //  5
		seg[6] = 9'h7d;   //  6
		seg[7] = 9'h07;   //  7
		seg[8] = 9'h7f;   //  8
		seg[9] = 9'h6f;   //  9
		seg[10]= 9'h77;   //  A
		seg[11]= 9'h7C;   //  b
		seg[12]= 9'h39;   //  C
		seg[13]= 9'h5e;   //  d
		seg[14]= 9'h79;   //  E
		seg[15]= 9'h71;   //  F
	end

assign segment_led_1 = seg[seg_data_1];
assign segment_led_2 = seg[seg_data_2];

endmodule

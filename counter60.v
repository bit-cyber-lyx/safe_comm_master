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
// Module Name: counter60
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
module counter60 (
    input           clk,rst,           
    input           key,				 
    output   [8:0]  segment_led_1,segment_led_2    
);

wire	clk1h;			
reg	[7:0] cnt;			
reg		flag;			

divide #				
(
.WIDTH(24),
.N(12_000_000)
) u1
(
.clk(clk),
.rst_n(rst),
.clkout(clk1h)
);

always @(posedge clk)	
	if(!rst)
		flag = 1'b0;
	else if(!key)
		flag = ~flag;
	else
		flag = flag;

always @(posedge clk1h )
	begin	
		if(!rst)
			cnt <= 8'h00;		
		else if(flag)
			begin
				if(cnt[3:0] == 4'd9)	
					begin
						cnt[3:0] <= 4'd0;	
						if(cnt[7:4] == 4'd5 )	
							cnt[7:4] <= 4'd0;	
						else
							cnt[7:4] <= cnt[7:4] + 1'b1;	
					end
				else cnt[3:0] <= cnt[3:0] + 1'b1;	
			end
		else
			cnt <= cnt;
	end

segment segment_inst(
    .seg_data_1		(cnt[7:4]),  
    .seg_data_2		(cnt[3:0]),  
    .segment_led_1	(segment_led_1),  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
    .segment_led_2	(segment_led_2)   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

endmodule

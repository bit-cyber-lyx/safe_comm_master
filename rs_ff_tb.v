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
// Module Name: rs_ff_tb
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
 
module rs_ff_tb();       
 
reg    clk,r,s;      
wire   q,qb;      	 
 
initial
begin
	clk = 0;
	r = 0;
	s = 0;
	#50
	r = 0;
	s = 1;
	#50
	r = 1;
	s = 0;
	#50
	r = 1;
	s = 1;
	#50
	r = 0;
	s = 1;
end
always #10 clk = ~clk;    

 

rs_ff  rs_ff_inst (     
	.clk(clk),     
	.r(r),
	.s(s),
	.q(q),    
	.qb(qb)   
);
endmodule
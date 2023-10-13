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
// Module Name: jk_ff_tb
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
 
module jk_ff_tb();       
 
reg    clk,j,k,rst,set;         	
wire   q,qb;      	  
 

initial
begin
	clk = 0;
	j = 0;
	k = 0;
	rst = 1;
	set = 1;
	#50
	set = 0;
	#50
	set = 1;
	#50
	rst = 0;
	#50
	rst = 1;
end
always #10 clk = ~clk;     
always #20 j = ~j;
always #30 k = ~k;

 

jk_ff  jk_ff_inst (      
	.clk(clk),  
	.j(j),
	.k(k),
	.rst(rst),
	.set(set),
	.q(q),    
	.qb(qb)   
);
endmodule
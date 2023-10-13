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
// Module Name: dff_tb
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
 
module dff_tb();       
 
reg    clk,rst,d;     
wire   q,qb;      	  
 
initial
begin
	clk = 0;
	rst = 0;
	d = 0;
	#50
	rst = 1;
	
end
always #10 clk = ~clk;
always #15 d = ~d;
 

dff  dff_tb (      
    .clk(clk),   
    .rst(rst),
    .d(d),
    .q(q),   
    .qb(qb)   
);
endmodule
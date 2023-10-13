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
// Module Name: coded_lock_tb
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
 
module coded_lock_tb();       
 
reg    q,u,n,b,d;       
wire   led1,led2;      	
 

initial
begin
	{q,u,n,b} = 0;
	d = 0 ;
	#100
	d = 1 ;
end
always #10 q = ~q;  
always #20 u = ~u;
always #25 n = ~n;
always #15 b = ~b;
 

coded_lock  coded_lock_inst (    
	.q(q),     
	.u(u),
	.n(n),
	.b(b),
	.d(d),
	.led1(led1),
	.led2(led2)  
);
endmodule
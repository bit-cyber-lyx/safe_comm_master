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
// Module Name: voter4_tb
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
 
module voter4_tb();       
 
reg    a,b,c,d;    
wire   led;      	
 

initial
begin
	a = 0;
	b = 0;
	c = 0;
	d = 0;
end
always #10 a = ~a;     
always #20 b = ~b;
always #25 c = ~c;
always #15 d = ~d;
 

voter4  voter4_inst (     
	.a(a),  
	.b(b),
	.c(c),
	.d(d),
	.led(led)   
);
endmodule
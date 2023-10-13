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
// Module Name: mult4_tb
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
 
module mult4_tb();       
 
reg    a,b,c,d;         	
reg [1:0] sel;
wire   led;   
 

initial
begin
	a = 1;
	b = 0;
	c = 1;
	d = 0;
	sel = 2'b00;
	#50
	sel = 2'b10;
	#50
	sel = 2'b01;
	#50
	sel = 2'b11;
end

 

mult4  mult4_inst (     
	.a(a), 
	.b(b),
	.c(c),
	.d(d),
	.sel(sel),
	.led(led)  
);
endmodule
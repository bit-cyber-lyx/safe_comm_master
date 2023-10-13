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
// Module Name: comparer1_tb
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
 
module comparer1_tb();       
 
reg    a,b;         	
wire   led1,led2,led3;  
 

initial
begin
	a = 0;
	b = 0;
end
always #10 a = ~a;     
always #15 b = ~b;
 

comparer1  comparer1_inst (     
	.a(a),    
	.b(b),
	.led1(led1), 
	.led2(led2),
	.led3(led3)
);
endmodule
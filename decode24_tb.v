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
// Module Name: decode24_tb
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
 
module decode24_tb();       
 
reg    [1:0] a;        
wire   [3:0] led;      	
 
//初始化过程块
initial
begin
	a = 2'b00;
	#20
	a = 2'b01;
	#20
	a = 2'b10;
	#20
	a = 2'b11;
	#20
	a = 2'b00;
end

decode24  decode24_inst (     
	.a(a),    
	.led(led)  
);
endmodule
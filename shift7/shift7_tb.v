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
// Module Name: shift7_tb
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

module shift7_tb;
	
reg clk, rst;     
reg [6:0]datain;  
wire dataout;     

initial
	begin
		clk =0;
		rst =1;
		datain =7'b1110101; 
		#50
		rst =0;
		#100
		rst =1;
	end
	
always #20 clk =~clk;   

shift7 shift7_inst (
    .clk	(clk),
    .rst	(rst),
    .datain	(datain),
    .dataout(dataout)
);
endmodule

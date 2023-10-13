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
// Module Name: shift7
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

module shift7(
    input           clk,     
    input           rst,	
    input    [6:0]  datain,  
    output          dataout 
);

reg [6:0] data;

always @(posedge clk)
	if(!rst)
		data <= datain;		
	else
		begin
			data[6] <= 1'b0;
			data[5] <= data[6];
			data[4] <= data[5];
			data[3] <= data[4];
			data[2] <= data[3];
			data[1] <= data[2];
			data[0] <= data[1];    
		end
		
assign dataout = data[0];	

endmodule
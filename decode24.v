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
// Module Name: decode24
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

module decode24(
    input       [1:0] a     ,       
    output reg  [3:0] led    	
);


always@(a)                    
	begin
		case(a)
			2'b00: led = 4'b0001; 
			2'b01: led = 4'b0010;
			2'b10: led = 4'b0100;
			2'b11: led = 4'b1000;
		endcase
	end

endmodule
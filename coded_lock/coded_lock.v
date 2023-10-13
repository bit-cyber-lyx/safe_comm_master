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
// Module Name: coded_lock
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

module coded_lock
(
    input    q,u,n,b,           
    input    d,				  
    output   led1,    	      
    output   led2			  
);

wire  [3:0]   code;			  
reg			  open;			  
reg			  alarm;          

assign		code = {q,u,n,b};

always@(d or code)
	if(d == 1'b1)            
		begin
			if(code == 4'b0101)   
				begin
					open = 1'b1; 
					alarm = 1'b0; 
				end
			else
				begin
					open = 1'b0;  
					alarm = 1'b1;
				end
		end
	else
		begin
			open = 1'b0;
		end

assign  led1 = ~open;		
assign	led2 = ~alarm;		

endmodule
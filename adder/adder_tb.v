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
// Module Name: adder_tb
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
 
module adder_tb();       
 
reg    a,b,cin;         
wire   sum,cout;
 

initial
begin
	a = 0;
	b = 0;
	cin = 0;
end

always #10 a = ~a;      
always #15 b = ~b;
always #20 cin = ~cin;
 

adder  adder_inst (     
	.a(a),    
	.b(b),
	.cin(cin),
	.sum(sum), 
	.cout(cout)   
);
endmodule
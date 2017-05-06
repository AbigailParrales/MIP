`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:50 05/03/2017 
// Design Name: 
// Module Name:    meme_data_2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module meme_data_2(
    input clk,
    input memwr,
    input [5:0] address,
    input [7:0] wrdata,
    output [7:0] rddata,
    output memrd
    );
	
	reg[63:0] memdata [7:0];
	
	always @(posedge clk)
		if(memwr)
			memdata[address] <= wrdata;
			
	assign rddata = memrd ? memdata [address]: 8'hZZ; 

endmodule

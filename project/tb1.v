`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:57:31 01/17/2018
// Design Name:   top
// Module Name:   C:/Users/masoud/Desktop/vga_test/fpga/tb1.v
// Project Name:  fpga
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb1;

	// Inputs
	reg clk;
	reg reset_fifo;
	reg [5:0] sw;
	reg scale_sch_we;
	reg fwd_inv_we;

	// Outputs
	wire full;
	wire empty;
	wire [5:0] rgb;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset_fifo(reset_fifo), 
		.full(full), 
		.empty(empty), 
		.sw(sw), 
		.rgb(rgb), 
		.hsync(hsync), 
		.vsync(vsync), 
		.scale_sch_we(scale_sch_we), 
		.fwd_inv_we(fwd_inv_we)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset_fifo = 0;
		sw = 6'b110011;
		scale_sch_we = 0;
		fwd_inv_we = 0;
		#100;
		scale_sch_we = 1;
		fwd_inv_we = 1;
		#100;
		scale_sch_we = 0;
		fwd_inv_we = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always #2 clk=~clk;
endmodule


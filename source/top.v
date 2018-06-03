`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:59:32 12/24/2017 
// Design Name: 
// Module Name:    top 
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
module top(
    input clk,
    input rx,
	 input ch,
	 	 //fifo

	 output full,
	
	 
	 //vga
	 input [5:0] sw,
	 output reg [5:0] rgb,
	 output hsync,
	 output vsync
	 //fft
    );

wire [7:0]  data;
wire 	[7:0] data_rx;
reg tx_data_ready;
wire clk_wr, clk_rd;
wire [7:0]dout_fifo;
wire CLK_OUT1,CLK_OUT2,clk;
wire [10:0]pixel_x, pixel_y;
wire [10:0]douta;
wire RxD_data_ready;
reg rd_en=0;

 
async_receiver # (.Baud(115200)) uart_rec (
    .clk(clk), 
    .RxD(rx), 
    .RxD_data_ready(RxD_data_ready), 
    .RxD_data(data_rx), 
    .RxD_idle(), 
    .RxD_endofpacket()
    );
wire [10:0] rd_data_count;  


fifo our_fifo(
  .clk(clk), // input clk
  .din(data_rx), // input [7 : 0] din
  .wr_en(RxD_data_ready), // input wr_en
  .rd_en(rd_en), // input rd_en
  .dout(dout_fifo), // output [7 : 0] dout
  .full(full), // output full
  .empty(empty), // output empty
  .data_count(rd_data_count) // output [8 : 0] data_count
);
	
 

reg done_fft;
reg [9:0]norm2;
reg [8 : 0] addr_in_ram;
wire [8 : 0] xn_index;
wire [7 : 0] xk_re;
wire [7 : 0] xk_im;
wire [7 : 0] xn_re;
wire [8 : 0] xk_index;
wire [7 : 0] doutb1;
wire [7 : 0] doutb2;
reg [7 : 0] doutb;
reg [9:0] cnt_fifo = 0; 

reg start =0;
reg forconfig = 1;
reg fwd_inv_we=0;
reg ce=0;
reg scale_sch_we=0;

//configure
always @(posedge clk)
	begin
		if(forconfig)
			begin
				fwd_inv_we <= 1;
				scale_sch_we <= 1;
				forconfig <= 1'b0;
				start <= 1;

			end
		else  
			begin
				fwd_inv_we <= 0;
				scale_sch_we <= 0;
			end
	end

always @(posedge clk)
	begin
		if(rd_data_count == 511)
			begin
				rd_en <= 1'b1;
				ce <= 1'b1;
				cnt_fifo <= 0;
			end
		if(rd_en)
			begin
				cnt_fifo <= cnt_fifo + 1'b1;
			end
		if (cnt_fifo == 511)
			begin
				rd_en <= 0;
				cnt_fifo <= 0;
			end
		if(xk_index == 511)
			begin
				ce <= 0;
			end
	end



	
reg unload=1'b1;	
reg [17:0] scale_sch=18;	

fft our_fft (
  .clk(clk), // input clk
  .ce(ce), // input ce
  .start(start), // input start
  .unload(unload), // input unload
  .xn_re(dout_fifo), // input [7 : 0] xn_re
  .xn_im(0), // input [7 : 0] xn_im
  .fwd_inv(1), // input fwd_inv
  .fwd_inv_we(fwd_inv_we), // input fwd_inv_we
  .scale_sch(scale_sch), // input [17 : 0] scale_sch
  .scale_sch_we(scale_sch_we), // input scale_sch_we
  .rfd(rfd), // output rfd
  .xn_index(xn_index), // output [8 : 0] xn_index
  .busy(busy), // output busy
  .edone(edone), // output edone
  .done(done), // output done
  .dv(dv), // output dv
  .xk_index(xk_index), // output [8 : 0] xk_index
  .xk_re(xk_re), // output [7 : 0] xk_re
  .xk_im(xk_im) // output [7 : 0] xk_im
);
wire [16:0] data_fft;
assign data_fft = (xk_re * xk_re) + (xk_im * xk_im);




reg [9:0]add_ram=0;

ram our_ram (
  .clka(clk), // input clka
  .wea(dv), // input [0 : 0] wea
  .addra(xk_index), // input [8 : 0] addra
  .dina(data_fft), // input [7 : 0] dina
  .douta(), // output [7 : 0] douta
  .clkb(clk), // input clkb
  .web(1'b0), // input [0 : 0] web
  .addrb(add_ram), // input [8 : 0] addrb
  .dinb(), // input [7 : 0] dinb
  .doutb(doutb1) // output [7 : 0] doutb
);

ram main_sig(
  .clka(clk), // input clka
  .wea(rd_en), // input [0 : 0] wea
  .addra(cnt_fifo), // input [8 : 0] addra
  .dina(dout_fifo), // input [7 : 0] dina
  .douta(), // output [7 : 0] douta
  .clkb(clk), // input clkb
  .web(1'b0), // input [0 : 0] web
  .addrb(add_ram), // input [8 : 0] addrb
  .dinb(), // input [7 : 0] dinb
  .doutb(doutb2) // output [7 : 0] doutb
);

always @(posedge clk)
	begin
		if(ch == 1)
			doutb <= doutb1;
		else
			doutb <= doutb2;
	end

///vga
	
VGA my_vga(
    .clk(clk), 
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y), 
    .videoon(videoon), 
    .h_synq(hsync), 
    .v_synq(vsync)
    );	
	 
	 
//address of last ram

		
always@(posedge clk)
begin
if(videoon)begin
		if(pixel_x > 64 && pixel_x < 576)
			if(pixel_y > 430)
				begin
						add_ram <= pixel_x - 64;
						if(pixel_y > 480-doutb)
							rgb <= sw;
						else 
							rgb <= ~sw;
					
				end
			else
				begin 
						add_ram <= pixel_x - 64;
						if(pixel_y > 480-doutb)
							rgb <= ~sw;
						else 
							rgb <= sw;
				end

			else
				begin
					add_ram <= 0;
					rgb <= sw;
				end
end
else 
	rgb <= 6'b0;
end  

	
endmodule


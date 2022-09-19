`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/14/2022 06:13:32 PM
// Design Name:
// Module Name: MAYO_SHAKE_tb
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


module MAYO_SHAKE_tb;
reg clk;
reg rst;
reg en;
wire done;
wire dyn_done;
reg [31:0] mlen,olen;
reg [31:0] write_adr, read_adr;

wire [3:0] wea;
wire ena;
wire [13:0] addr;
wire [31:0] din,dout;

reg [3:0] wea_bram = 1'b0000;
reg en_bram = 1'b0;
reg [13:0] addr_bram = 0;
reg [31:0] din_bram = 0;
reg [31:0] dout_bram =0;

wire [3:0] shake_wea ;
wire shake_en;
wire [31:0] shake_adr;
wire [31:0] shake_din;
wire [31:0] shake_dout; 

reg bram_control = 0;

blk_mem_gen_0_1 BR (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addr),  // input wire [13 : 0] addra
  .dina(din),    // input wire [31 : 0] dina
  .douta(dout)  // output wire [31 : 0] douta
);

MAYO_SHAKE uut(
.rst(rst), .clk(clk), .en(en),
.mlen(mlen), .olen(olen),
.write_adr(write_adr), .read_adr(read_adr),
.dyn_done(dyn_done),
.done(done),
.BRAMA_we(shake_wea), .BRAMA_addr(shake_adr), .BRAMA_din(shake_din), .BRAMA_en(shake_en), .BRAMA_dout(dout));

assign wea = (bram_control)? wea_bram : shake_wea;
assign ena = (bram_control)? en_bram : shake_en;
assign addr = (bram_control)? addr_bram : shake_adr[13:0];
assign din = (bram_control)? din_bram : shake_din;

initial begin 
rst = 0;
en = 0;
clk = 0;
#10 rst = 1;
#10 rst = 0;

@(posedge clk); bram_control = 1;
#50;
@(posedge clk); addr_bram = 0; din_bram = 32'hD808EE98; en_bram = 1; wea_bram = 4'b1111; 
@(posedge clk); addr_bram = addr_bram +4 ; din_bram = 32'h38520EBA ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hA84F7D23 ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'h15A05FE0 ;
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hC871AABA ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hE8528969 ;
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hA84F7D23 ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'h15A05FE0 ;
@(posedge clk); wea_bram = 0; en_bram = 0; bram_control = 1;


@(posedge clk);
en_bram = 1;
addr_bram = 0;
#50;
@(posedge clk);
$display("BRAM : Read 0x%0h from 0x%0h!", dout, addr_bram); // debug output
addr_bram <= addr_bram +4;
@(posedge clk);
$display("BRAM : Read 0x%0h from 0x%0h!", dout, addr_bram); // debug output
addr_bram <= addr_bram +4;
@(posedge clk);
$display("BRAM : Read 0x%0h from 0x%0h!", dout, addr_bram); // debug output
@(posedge clk); wea_bram = 0; en_bram = 0; bram_control = 0;

$display("Start tb"); 

#50;
@(posedge clk)
en = 1;
mlen = 32'd28;
olen = 32'd32;
read_adr = 32'd0;
write_adr = 32'd32;

@(posedge clk)
en = 0;
mlen = 32'd0;
olen = 32'd0;
write_adr = 32'd0;
read_adr = 32'd0;

wait(done);
@(posedge clk);
end 

always #5 clk = ~clk;

endmodule
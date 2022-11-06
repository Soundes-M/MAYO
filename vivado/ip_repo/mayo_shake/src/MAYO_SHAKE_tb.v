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
wire control;
reg [31:0] mlen,olen;
reg [31:0] write_adr, read_adr;

wire [3:0] wea;
wire ena;
wire [13:0] addra;
wire [31:0] dina,douta;
wire [3:0] web;
wire enb;
wire [13:0] addrb;
wire [31:0] dinb,doutb;

reg [3:0] wea_bram = 1'b0000;
reg en_bram = 1'b0;
reg [13:0] addr_bram = 0;
reg [31:0] din_bram = 0;
reg [31:0] dout_bram =0;

reg bram_control = 0;

blk_mem_gen_0 BR (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [1 : 0] wea
  .addra(addra),  // input wire [13 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(douta),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(enb),      // input wire enb
  .web(web),      // input wire [1 : 0] web
  .addrb(addrb),  // input wire [13 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(doutb)  // output wire [31 : 0] doutb
);

MAYO_SHAKE #(.C_BRAMSIZE(13)) uut(
.rst(rst), .clk(clk), .en(en),
.mlen(mlen), .olen(olen),
.write_adr(write_adr), .read_adr(read_adr),
.dyn_done(dyn_done),
.done(done),
.o_control(control),
.BRAMA_we(web), .BRAMA_addr(addrb), .BRAMA_din(dinb), .BRAMA_en(enb), .BRAMA_dout(doutb));

assign wea = (bram_control)? wea_bram : 0;
assign ena = (bram_control)? en_bram : 0;
assign addra = (bram_control)? addr_bram : 0;
assign dina = (bram_control)? din_bram : 0;

initial begin 
rst = 0;
en = 0;
clk = 0;
#10 rst = 1;
#10 rst = 0;

#100;
@(posedge clk); bram_control = 1;
@(posedge clk); addr_bram = 0; din_bram = 32'hD808EE98; en_bram = 1; wea_bram = 4'b1111; 
@(posedge clk); addr_bram = addr_bram +4 ; din_bram = 32'h38520EBA ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hA84F7D23 ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'h15A05FE0 ;
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hC871AABA ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hE8528969 ;
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'hA84F7D23 ; 
@(posedge clk); addr_bram = addr_bram +4; din_bram = 32'h15A05FE0 ;
@(posedge clk); wea_bram = 0; en_bram = 0; bram_control = 1;
#100;
addr_bram = 0;
@(posedge clk);
$display("------ BRAM ------"); 
@(posedge clk);
en_bram = 1;
@(posedge clk);
$display("BRAM : Read 0x%0h from 0x%0h!", douta, addr_bram); // debug output
addr_bram <= addr_bram +4;
@(posedge clk);
$display("BRAM : Read 0x%0h from 0x%0h!", douta, addr_bram); // debug output
addr_bram <= addr_bram +4;
@(posedge clk);
$display("BRAM : Read 0x%0h from 0x%0h!", douta, addr_bram); // debug output
@(posedge clk); wea_bram = 0; en_bram = 0; bram_control = 0;
$display("------ BRAM ------"); 

$display("Starting tb..."); 
#100;
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
$display("Done tb!"); 
end 

always #5 clk = ~clk;

endmodule
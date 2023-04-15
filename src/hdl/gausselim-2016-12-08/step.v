
/*
 * This file is a sub module, step.v, the systolic line architecture.
 *
 * Copyright (C) 2016
 * Authors: Wen Wang <wen.wang.ww349@yale.edu>
 *          Ruben Niederhagen <ruben@polycephaly.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
*/

module step (
	input clk,
	input rst,
	input start,
	input [$clog2(K/N + 1) - 1 : 0] col_block,
	input functionA,
	output reg done,
	output [N-1 : 0] mem_data_out,
	output [3*N-1 : 0] mem_op_out
);

// N: size of the architecture
// L: row number of the matrix
// K: column number of the matrix
// DATA: memory initialization file (matrix)
	
parameter N = 4; 
parameter L = 8;
parameter K = 16;
parameter DATA = "data.in";

reg running = 1'b0;
always @(posedge clk) begin
  running <= start_data || (running && !(row_counter == end_counter));
end

reg [$clog2(L*K/N+2*N + 1) - 1 : 0] start_row   = 0;
reg [$clog2(L*K/N+2*N + 1) - 1 : 0] end_row     = 0;
reg [$clog2(L*K/N+2*N + 1) - 1 : 0] end_counter = 0;

reg [$clog2(L*K/N+2*N + 1) - 1 : 0] row_counter = 0;

reg [$clog2(L*K/N+2*N + 1) - 1 : 0] col_block_L = 0;

reg start_data = 1'b0;
reg start_comp = 1'b0;
reg have_col_block_L = 1'b0;

always @(posedge clk) begin
  col_block_L <= start ? col_block * L : col_block_L;

  start_row   <= have_col_block_L ? col_block_L                  : start_row;
  end_row     <= have_col_block_L ? col_block_L + L - 1   : end_row;
  end_counter <= have_col_block_L ? col_block_L + L + 2*N : end_counter;

  have_col_block_L <= start;
  start_data <= have_col_block_L;
  start_comp <= start_data;
end


// M20k interface
reg  [N - 1 : 0] din_data = 0;
wire [N - 1 : 0] dout_data;

reg [$clog2(L*K/N + 1) - 1 : 0] rd_addr_data;
reg [$clog2(L*K/N + 1) - 1 : 0] wr_addr_data;
reg rd_en_data;
reg wr_en_data;

// M20k for storing dout
mem mem_data (
  .clock (clk),
  .data (din_data),
  .rdaddress (rd_addr_data[$clog2(L*K/N) - 1 : 0]),
  .rden (rd_en_data),
  .wraddress (wr_addr_data[$clog2(L*K/N) - 1 : 0]),
  .wren (wr_en_data),
  .q (dout_data)
);
defparam mem_data.WIDTH = N;
defparam mem_data.DEPTH = L*K/N;
defparam mem_data.FILE  = DATA;

///////////////////////////////////////

reg  [2*N - 1 : 0] din_op;
wire [2*N - 1 : 0] dout_op;

reg [$clog2(L+2*N + 1) - 1 : 0] rd_addr_op;
reg [$clog2(L+2*N + 1) - 1 : 0] wr_addr_op;
reg rd_en_op;
reg wr_en_op;


// M20k for storing op_outs
mem mem_op (
  .clock (clk),
  .data (din_op),
  .rdaddress (rd_addr_op),
  .rden (rd_en_op),
  .wraddress (wr_addr_op),
  .wren (wr_en_op),
  .q (dout_op)
);
defparam mem_op.WIDTH = 2*N;
defparam mem_op.DEPTH = L+2*N + 1;


assign mem_data_out = dout_data;
assign mem_op_out = dout_op;

// com_SA module
reg SA_start;
reg SA_finish;

wire [  N-1 : 0] SA_dout;
reg  [2*N-1 : 0] SA_op_in;
wire [2*N-1 : 0] SA_op_out;
wire SA_r_A_and;

reg  [N-1 : 0] SA_din;

comb_SA comb_SA_inst (
  .functionA (functionA),
  .clk (clk),
  .rst (rst),
  .start (SA_start),
  .finish(SA_finish),
  .op_in (SA_op_in),
  .data (SA_din),
  .data_out(SA_dout),
  .op_out (SA_op_out),
  .r_A_and (SA_r_A_and)
);


reg SA_data_en = 1'b0;
reg SA_op_en   = 1'b0;

reg [$clog2(L     + 2*N + 1) - 1 : 0] rd_en_op_end;
reg [$clog2(L*K/N + 2*N + 1) - 1 : 0] wr_en_op_end;
reg [$clog2(L*K/N + 2*N + 1) - 1 : 0] wr_en_data_start;
reg [$clog2(L*K/N + 2*N + 1) - 1 : 0] wr_en_data_end;
reg [$clog2(L*K/N + 2*N + 1) - 1 : 0] SA_finish_end;

always @(posedge clk) begin
  SA_din       <= !SA_data_en ? 0 : dout_data;

  SA_op_in     <= functionA ? 0 : 
                  SA_op_en  ? dout_op : 0;


  done         <= (row_counter == end_counter) ? running : 0;

  row_counter  <= start_comp ? start_row : 
                  running    ? row_counter + 1 : 0;


  rd_addr_data <= start ? 0  :
                  start_data   ? start_row :
                  (rd_en_data) ? rd_addr_data + 1 : end_row;
  rd_en_data   <= start_data ? 1 : running  ? rd_addr_data < end_row : 0;

  SA_data_en   <= rd_en_data;

  rd_en_op_end <= start ? L+2*N : rd_en_op_end;

  rd_addr_op   <= start_data ? 0 :
                  (rd_en_op) ? rd_addr_op + 1 : 0;
  rd_en_op     <= (running || start_data) ? rd_addr_op < rd_en_op_end : 0;

  SA_op_en     <= rd_en_op;


  wr_en_op_end <= start_data ? (end_row + 2 +2*N) : wr_en_op_end;

  din_op       <= SA_op_out;
  wr_en_op     <= functionA ? (row_counter > start_row) && (row_counter <= wr_en_op_end)
                  : 0;
  wr_addr_op   <= wr_en_op ? wr_addr_op + 1 : 0;


  wr_en_data_start <= start_data ? (start_row + 2*N+1) : wr_en_data_start;
  wr_en_data_end   <= start_data ? (end_row + 2 + 2*N) : wr_en_data_end;


  din_data      <= SA_dout;

  wr_en_data    <= (row_counter >= wr_en_data_start) && (row_counter < wr_en_data_end);
  wr_addr_data  <= wr_en_data ? wr_addr_data + 1 : start_row;

  SA_start      <= (row_counter == start_row) && SA_data_en;


  SA_finish_end <= start_data ? end_row + 1 : SA_finish_end;

  SA_finish     <= functionA && (row_counter == SA_finish_end);
end

endmodule


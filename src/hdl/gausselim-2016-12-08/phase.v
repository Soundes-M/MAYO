
/*
 * This file is a sub module, step.v, which invokes the step module repeatedly.
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

module phase (
	input clk,
	input rst,
	input start,
	input [$clog2(K/N + 1) - 1 : 0] start_block,
	output reg done,
	output [N-1 : 0] mem_data_out,
	output [3*N-1 : 0] mem_op_out
);
parameter N = 4; 
parameter L = 8;
parameter K = 16;
parameter DATA = "";

reg running = 1'b0;
always @(posedge clk) begin
  running <= start || (running && !(last_step && step_done));
end

wire [$clog2(K/N + 1) - 1 : 0] step_counter_comp;
reg  [$clog2(K/N + 1) - 1 : 0] step_counter;
reg  [$clog2(K/N + 1) - 1 : 0] col_block;

reg start_step = 1'b0;
wire step_done;
reg last_step;

reg functionA = 1'b0;

assign step_counter_comp = start ? start_block :
                           !running ? 0 :
                           step_done ? (last_step ? 0 : step_counter + 1) :
                           step_counter;

always @(posedge clk) begin
  last_step    <= (step_counter == K/N-1);

  step_counter <= step_counter_comp;

  col_block    <= step_counter_comp;

  start_step   <= start    ? 1'b1 :
                  !running ? 1'b0 :
                 (step_done && !last_step);

  functionA    <= start || (functionA && !step_done);

  done         <= last_step && step_done;
end

step step_inst (
  .rst(rst),
  .clk(clk),
  .start(start_step),
  .col_block(col_block),
  .functionA(functionA),
  .done(step_done),
  .mem_data_out(mem_data_out),
  .mem_op_out(mem_op_out)
);
defparam step_inst.N = N;
defparam step_inst.L = L;
defparam step_inst.K = K;
defparam step_inst.DATA = DATA;

endmodule


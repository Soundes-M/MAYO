
/*
 * This file is a sub module, elim.v, which invokes the module phase iteratively.
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

module elim (
	input clk,
	input rst,
	input start,
        output reg done,
        output [N-1 : 0] mem_data_out,
        output [3*N-1 : 0] mem_op_out
);
parameter N = 20;
parameter L = 200;
parameter K = 400;
parameter DATA = "";

reg running = 1'b0;
always @(posedge clk) begin
  running <= start || (running && !(last_phase && phase_done));
end

reg [$clog2(K/N + 1) - 1 : 0] phase_counter;

reg  start_phase = 1'b0;
wire phase_done;
reg  last_phase;

always @(posedge clk) begin
  last_phase    <= (phase_counter == L/N-1);

  phase_counter <= start ? 0 : 
                   !running ? 0 :
                   phase_done ? (last_phase ? 0 : phase_counter + 1) :
                   phase_counter;

  start_phase   <= start    ? 1'b1 :
                   !running ? 1'b0 :
                   (phase_done && !last_phase); 

  done          <= last_phase && phase_done;
end

phase phase_inst (
  .rst(rst),
  .clk(clk),
  .start(start_phase),
  .start_block(phase_counter),
  .done(phase_done),
  .mem_data_out(mem_data_out),
  .mem_op_out(mem_op_out)
);
defparam phase_inst.N = N;
defparam phase_inst.L = L;
defparam phase_inst.K = K;
defparam phase_inst.DATA = DATA;

endmodule


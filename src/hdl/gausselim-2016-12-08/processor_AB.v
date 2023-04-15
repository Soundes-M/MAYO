
/*
 * This file is a sub module, processor_AB.
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

module processor_AB (
  input  wire       functionA,
  input  wire       clk,
  input  wire       rst,
  input  wire       data_in,
  input  wire       start_in,
  input  wire       finish_in,
  output wire       finish_out,
  input  wire [1:0] op_in,
  output wire [1:0] op_out,
  output wire       start_out,
  output wire       data_out,
  output reg        r
);

  wire r_reg;
 
  always @(posedge clk) begin
    if(rst) begin
      r <= 0;
    end
    else begin
      r <= r_reg;
    end
  end

  assign start_out  = start_in;
  assign finish_out = finish_in;

  assign data_out = finish_in      ? r :
                   (start_in       ? 1'b0 : 
                   (functionA      ? 1'b0 :
                   (op_in == 2'b01 ? r : 
                   (op_in == 2'b10 ? (data_in ^ r) : 
                   data_in))));

  assign r_reg = start_in       ? data_in :
                (functionA      ? ((data_in==0) ? r : 1'b1) :
                (op_in == 2'b01 ? data_in :
                 r));

  assign op_out =  (!functionA) ? op_in : 
                  (start_in     ? 2'b11 : 
                  (finish_in    ? 2'b01 :
                  ((data_in==0) ? 2'b00 : 
                  ((r==0)       ? 2'b01 : 2'b10))));

endmodule


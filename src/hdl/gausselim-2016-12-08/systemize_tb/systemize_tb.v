
/*
 * This file is the testbench file for elim.v.
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

`timescale 1ns / 1ps
module systemize_tb;

  //inputs
  reg clk;
  reg rst;
  reg start;

  //outputs
  wire done;
  
  elim DUT(
    .rst(rst),
    .clk(clk),
    .start(start),
    .done(done)
  );

  defparam DUT.N = `N;
  defparam DUT.L = `L;
  defparam DUT.K = `K;
  defparam DUT.DATA = "data.in";

  initial
    begin
       $dumpfile("systemize_tb.vcd");
       $dumpvars(0, systemize_tb);
    end
 
  integer i;

  integer start_time;

  initial
    begin
      rst = 1'b1;
      start = 1'b0;
      # 50;
      rst <= 1'b0;
      # 100;
      start <= 1'b1;
      start_time <= $time;
      # 10;
      start <= 1'b0;

      @(posedge done);
      $display("\nruntime: %0d cycles\n", ($time - start_time)/10);

      # 100;

      $writememb("data.out",DUT.phase_inst.step_inst.mem_data.mem);

      $finish;
    end

  always
    begin
      clk = 1'b1;
      #5;
      clk = 1'b0;
      #5;
    end
   
endmodule


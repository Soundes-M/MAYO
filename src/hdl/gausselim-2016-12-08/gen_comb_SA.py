'''
   This file is the code generation file for module comb_SA.v

   Copyright (C) 2016
   Authors: Wen Wang <wen.wang.ww349@yale.edu>
            Ruben Niederhagen <ruben@polycephaly.org>
  
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.
  
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
  
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

'''

 
import argparse

parser = argparse.ArgumentParser(description='Generate SQR_SA module.',
                formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('-n, --num', dest='n', type=int, required= True,
          help='number of columns')
args = parser.parse_args()

num = args.n

print """module comb_SA (
  input wire functionA,
  input wire clk,
  input wire rst,
  input start,
  input finish,
  input wire [{0}:0] op_in,
  input wire [{1}:0] data,
  output reg [{1}:0] data_out,
  output wire [{0}:0] op_out,
  output wire r_A_and
);""".format((num*2)-1, num-1)

print ""

print "  reg [{0} : 0] functionA_dup;\n".format(num-1)
print "  reg [{0} : 1] start_tmp;".format(num-1)
print "  reg [{0} : 1] start_row;".format(num-1)
print ""
print "  reg [{0} : 1] finish_tmp;".format(num-1)
print "  reg [{0} : 1] finish_in;".format(num-1)
print "  wire [{0} : 0] finish_out;".format(num-1)
print ""

print "  always @(posedge clk) begin"
for i in range(num):
  print "    functionA_dup[{0}] <= functionA;".format(i)

print ""

for i in range(1,num):
  if i == 1:
    print "    start_tmp[{0}] <= start;".format(i, i-1, num-1)
  else:
    print "    start_tmp[{0}] <= start_row[{1}];".format(i, i-1, num-1)
  print "    start_row[{0}] <= start_tmp[{0}];".format(i, i-1)

print ""

for i in range(1,num):
  print "    finish_tmp[{0}] <= finish_out[{1}];".format(i, i-1)
  print "    finish_in[{0}]  <= finish_tmp[{0}];".format(i)
print "  end"

print ""

for row in range(num):
  print "  /////////////////////////////////////"
  print "  // row {0}".format(row)

  for col in range(num):
    print "  // row {0}, col {1}".format(row, col)

    print """
  wire start_in_{0}_{1};
  wire start_out_{0}_{1};

  wire [1:0] op_in_{0}_{1};
  wire [1:0] op_out_{0}_{1};\n""".format(row, col)

    if row == (col):
      print "  wire r_{0}_{1};\n".format(row, col)

    if row > 0:
      print "  reg data_in_{0}_{1};".format(row, col)
      print "  wire data_out_{0}_{1};\n""".format(row, col)

      print "  always @(posedge clk) begin"
      print "    data_in_{0}_{1} <= data_out_{2}_{1};".format(row, col, row-1)
      print "  end"
    else:
      print "  wire data_in_{0}_{1};".format(row, col)
      print "  wire data_out_{0}_{1};\n".format(row, col)

      print "  assign data_in_0_{0} = data[{0}];".format(col)

    print ""

    if col > 0:
      print "  assign start_in_{0}_{1} = start_out_{0}_{2};""".format(row, col, col-1)
      print "  assign op_in_{0}_{1} = op_out_{0}_{2};".format(row, col, col-1)
    else:
      if row == 0:
        print "  assign start_in_0_0 = start;"
      else:
        print "  assign start_in_{0}_0 = start_row[{0}];".format(row)

      print "  assign op_in_{0}_0 = op_in[{1}:{2}];".format(row, 2*row+1, 2*row)

    print ""

    if row == (col):
      if row == 0:
         finish = "finish"
      else:
         finish = "finish_in[{0}]".format(row)

      print """  processor_AB AB_{0}_{1} (
    .functionA  (functionA_dup[{1}]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_{0}_{1}),
    .start_in   (start_in_{0}_{1}),
    .finish_in  ({2}),
    .finish_out (finish_out[{0}]),
    .op_in      (op_in_{0}_{1}),
    .op_out     (op_out_{0}_{1}),
    .start_out  (start_out_{0}_{1}),
    .data_out   (data_out_{0}_{1}),
    .r          (r_{0}_{1})
  );\n""".format(row, col, finish)

    else:
      print """  processor_B B_{0}_{1} (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_{0}_{1}),
    .start_in  (start_in_{0}_{1}),
    .op_in     (op_in_{0}_{1}),
    .op_out    (op_out_{0}_{1}),
    .start_out (start_out_{0}_{1}),
    .data_out  (data_out_{0}_{1})
  );\n""".format(row, col)

 
print ""

print "  /////////////////////////"
print "  // outputs \n"

print "  always @(posedge clk) begin"
for i in range(num):
  print "    data_out[{0}] <= data_out_{1}_{0};".format(i, num-1)
print "  end"

print ""

for i in range(num):
  print "  assign op_out[{0}:{1}] = op_out_{2}_{3};".format(2*i+1, 2*i, i, num-1)

print ""

print "  assign r_A_and = " + \
      " && ".join(["r_{0}_{0}".format(i) for i in range(num)]) + ";"

print ""

print "endmodule\n"


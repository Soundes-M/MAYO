

# This file was *autogenerated* from the file ./gen_test.sage
from sage.all_cmdline import *   # import sage library

_sage_const_1 = Integer(1); _sage_const_2 = Integer(2); _sage_const_3 = Integer(3); _sage_const_0 = Integer(0)#!/usr/bin/sage

#
# This file is part of the testbench, which generates a random input matrix file.
# 
# Copyright (C) 2016
# Authors: Wen Wang <wen.wang.ww349@yale.edu>
#          Ruben Niederhagen <ruben@polycephaly.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

import sys

N = int(sys.argv[_sage_const_1 ])
L = int(sys.argv[_sage_const_2 ])
K = int(sys.argv[_sage_const_3 ])

L = L - (L % N)
K = K - (K % N)

MS = MatrixSpace(GF(_sage_const_2 ), L, K)

run = True

while run:
  M = MS.random_element()

  E = M.echelon_form()

  run = False

  for i in range(len(E.rows())):
    if E[i,i] == _sage_const_0 :
       run = True

for s in range(_sage_const_0 , len(M[_sage_const_0 ]), N):
  for r in M.rows():
    for i in reversed(r[s:s+N]):
      sys.stdout.write("{0}".format(i))
  
    sys.stdout.write("\n")


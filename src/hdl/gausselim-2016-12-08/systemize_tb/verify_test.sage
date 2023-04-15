#!/usr/bin/sage

#
# This file is part of the testbench, which verifies the result by comparing
# with the theoretical sage result.
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

N = int(sys.argv[1])
L = int(sys.argv[2])
K = int(sys.argv[3])

L = L - (L % N)
K = K - (K % N)

rows = []

# read data_in file - row wise, LSB first
with open(sys.argv[4], "r") as f:
  for line in f:
    row = []

    for c in line[:-1]:
      row = [int(c)] + row

    rows.append(row)

A_rows = []

for i in range(L):
  r = []
  for j in range(K//N):
    r += rows[j*L+i]

  A_rows.append(r)

A = matrix(GF(2), A_rows)

print( "Input matrix:")
print( A)
print( "")

rows = []

# read data_out file - row wise, LSB first
print(os.getcwd())

with open(sys.argv[5], "r") as f:
  for line in f:
    if line.startswith("//"):
      continue

    row = []

    for c in line[:-1]:
      row = [int(c)] + row

    rows.append(row)

B_rows = []

for i in range(L):
  r = []
  for j in range(K//N):
    r += rows[j*L+i]

  B_rows.append(r)


B = matrix(GF(2), B_rows)

print( "Output matrix 'as is':")
print( B)
print( "")

for i in range(L):
  for j in range(L):
   if i == j:
     B_rows[i][j] = 1
   else:
     B_rows[i][j] = 0

B = matrix(GF(2), B_rows)

print( "Output matrix with corrected front diagonal block:")
print( B)
print( "")

print( "Expected output:")
print( A.echelon_form())
print( "")

if A.echelon_form() == B:
  print( "OK!\n")
else:
  print( "ERROR!\n")
  exit(-1)


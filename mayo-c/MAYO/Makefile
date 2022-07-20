CC=gcc-9
CFLAGS=-I ../XKCP/bin/Haswell/
LFLAGS=-L ../XKCP/bin/Haswell/ -lkeccak -lcrypto
ARCH=native

#To build for ARM (Use Vitis, only libkeccak is made in XKCP)

ANALYSISFLAGS= -fdump-tree-all-graph

IMPLEMENTATION_SOURCE = MAYO.c test.c ../common/simdxorshift128plus.c arithmetic.c 
IMPLEMENTATION_HEADERS= MAYO.h keccaklib params.h ../common/simdxorshift128plus.h arithmetic.h

test_native: $(IMPLEMENTATION_SOURCE) $(IMPLEMENTATION_HEADERS)
#-03 opt disabled
	$(CC) -o build/test $(IMPLEMENTATION_SOURCE) $(CFLAGS) $(LFLAGS) -std=c11  -g -march=$(ARCH) -funroll-loops -Wall -lm $(ANALYSISFLAGS) 

keccaklib: 
	(cd ../XKCP; make Haswell/libkeccak.a)

all: keccaklib test_native

.PHONY: clean
clean:
	rm -f PQCgenKAT_sign build/test debug test_offline intermediateValues.txt *.req *.rsp *.c.* >/dev/null

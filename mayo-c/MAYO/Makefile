CC=gcc-9
CFLAGS=-I ../XKCP/bin/Haswell/
LFLAGS=-L ../XKCP/bin/Haswell/ -lkeccak -lcrypto
ARCH=native

#CROSS_COMPILER:=arm-eabi-none-

IMPLEMENTATION_SOURCE = MAYO.c test.c ../common/simdxorshift128plus.c arithmetic.c 
IMPLEMENTATION_HEADERS= MAYO.h keccaklib params.h ../common/simdxorshift128plus.h arithmetic.h

test_native: $(IMPLEMENTATION_SOURCE) $(IMPLEMENTATION_HEADERS)
#-03 opt disabled
	$(CC) -o test $(IMPLEMENTATION_SOURCE) $(CFLAGS) $(LFLAGS) -std=c11  -g -march=$(ARCH) -funroll-loops -Wall -lm 

keccaklib: 
	(cd ../XKCP; make Haswell/libkeccak.a)

all: keccaklib test

.PHONY: clean
clean:
	rm -f PQCgenKAT_sign test debug test_offline intermediateValues.txt *.req *.rsp >/dev/null

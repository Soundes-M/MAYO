// Checking proof of concept of different mod (%) alternatives for FPGA Design
// OSMaxwell

#include <iostream>
#include <assert.h>

#define CHECK(f) \
assert(f); \
cout << "PASS\n"; \

using namespace std;

/**
 * return x mod 31 [Mersenne]
 * NO MULT OP !
 */
int mod_mersenne(int x){
    // 31 = 2^5 -1  --> S = 5
    int i = (x & 31) + (x >> 5);
  return (i >= 31) ? i - 31 : i;
}

/**
 * return x mod 31 [Barette]
 */
int mod_barrette(int x){
    int q = (x * 16) >> 9;
    x -= q * 31;
    if (31 <= x) {
        x -= 31;
    }
    return x;
}

int main()
{
    cout <<"Hello World\n";
    for (int i = 0 ; i < 2000 ; i++){
        cout << i;
    	CHECK(mod_barrette(i) == (i %31));
    	//CHECK(mod_mersenne(i) == (i %31));
    }
    return 0;
}


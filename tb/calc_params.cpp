#include <iostream>
#define M 60
#define N 62
#define O 6
#define K 10
#define KC2 (K * (K + 1) / 2)
#define MONOMIALS (N * (N + 1) / 2)
#define P1MONOMIALS ((N - O) * (N - O + 1) / 2 + (N - O) * O)
#define P2MONOMIALS (O * (O + 1) / 2)
#define P1_BYTES (M * P1MONOMIALS)
#define P2_BYTES (M * P2MONOMIALS)
#define OIL_SPACE_BYTES (O * (N - O))

using namespace std;
int main() {
  cout << "Values" << endl;
  cout << "----------" << endl;
  cout << "KC2 :" << KC2 << endl;
  cout << "MONOMIALS :" << MONOMIALS << endl;
  cout << "P1MONOMIALS :" << P1MONOMIALS << endl;
  cout << "P2MONOMIALS: " << P2MONOMIALS << endl;
  cout << "P1_BYTES: " << P1_BYTES << endl;
  cout << "P2_BYTES: " << P2_BYTES << endl;
  cout << "OIL_SPACE_BYTES: " << OIL_SPACE_BYTES << endl;
  return 0;
}
///
//
// Verifies if flipping linear_combination works
///

#include <cassert>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <string>
#include <tuple>
#include <vector>

#define M 60
#define O 6
#define K 10

std::tuple<uint8_t, uint8_t, uint8_t, uint8_t>
stringToNumber(const std::string &inString) {
  uint8_t x1, x2, x3, x4;
  auto str = inString.substr(0, 2);
  x1 = std::stoul(str, nullptr, 16);
  str = inString.substr(2, 2);
  x2 = std::stoul(str, nullptr, 16);
  str = inString.substr(4, 2);
  x3 = std::stoul(str, nullptr, 16);
  str = inString.substr(6, 2);
  x4 = std::stoul(str, nullptr, 16);
  return std::make_tuple(x1, x2, x3, x4);
}

// Text file to vector of unsigned ints
std::vector<uint8_t> getDataFromFile(const char *filename) {
  std::vector<uint8_t> resVec;
  std::ifstream file(filename);
  std::string readString;

  while (file >> readString) {
    auto [x1, x2, x3, x4] = stringToNumber(readString);
    resVec.push_back(x4);
    resVec.push_back(x3);
    resVec.push_back(x2);
    resVec.push_back(x1);
  }
  return resVec;
}

// Build with
// g++ linear_comb_flip_test.cpp -o linear_comb_flip_test -std=c++17
int main() {
  const auto vecs =
      getDataFromFile("/home/osm/Documents/SECT-MAYO/MAYO/tb/500linear.dat");

  const auto coeffs =
      getDataFromFile("/home/osm/Documents/SECT-MAYO/MAYO/tb/500solution.dat");

  std::vector<uint32_t> accumulators(M);
  auto len = K * O;

  std::cout << "Vecs size :" << vecs.size() << std::endl;
  std::cout << "Coefs size :" << coeffs.size() << std::endl;

  // Normal lin comb
  for (int i = 0; i < len; ++i) {
    for (int j = 0; j < M; j++) {
      accumulators[j] += (uint32_t)vecs[i * M + j] * (uint32_t)coeffs[i];
    }
  }

  for (auto i = 0; i < 4; i++) {
    std::cout << std::hex << (int)accumulators[i] % 31 << std::endl;
  }

  // Flipped hw lin_comb
  std::vector<uint32_t> accumulators2(M);
  for (int j = 0; j < M; j += 4) {
    for (int i = 0; i < len; i++) {
      accumulators2[j] += ((uint32_t)vecs[i * M + j]) * ((uint32_t)coeffs[i]);
      if (j == 0) {
        printf("%2d|%2d ||  0x%08x * 0x%08x => 0x%08x\n", j, i, vecs[i * M + j],
               coeffs[i], accumulators2[j]);
      }
      accumulators2[j + 1] +=
          ((uint32_t)vecs[i * M + j + 1]) * ((uint32_t)coeffs[i]);
      accumulators2[j + 2] +=
          ((uint32_t)vecs[i * M + j + 2]) * ((uint32_t)coeffs[i]);
      accumulators2[j + 3] +=
          ((uint32_t)vecs[i * M + j + 3]) * ((uint32_t)coeffs[i]);
    }
  }

  for (auto i = 0; i < 4; i++) {
    std::cout << std::hex << (int)accumulators2[i] % 31 << std::endl;
  }

  assert(accumulators2 == accumulators);
  std::cout << "PASS" << std::endl;
  return 0;
}

#include <iostream>
#include <string>
#define M 60
#define N 62
#define O 6

int main() {
  std::cout << "P1_Counter: ";
  int p1_counter = 0;
  for (int i = 0; i < N - O; ++i) {
    std::cout << p1_counter * M << ",";
    p1_counter += (N - O - i);
  }
  std::cout << std::endl;

  p1_counter = 0;
  std::cout << "\nLen: ";
  for (int i = 0; i < N - O; ++i) {
    std::cout << (N - O - i) << ",";
    p1_counter += (N - O - i);
  }
  std::cout << std::endl;
  p1_counter = 0;
  std::cout << "\nOil_space_index: ";
  for (int i = 0; i < N - O; ++i) {
    for (int j = 0; j < O; ++j)
      std::cout << (j * (N - O) + i) << ",";
    p1_counter += (N - O - i);
  }
  std::cout << std::endl;
  std::cout << "\n-----------LIN-COMB(len=56)-----------\n";

  std::string accum[60] = {""};

  for (int i = 0; i < 56; ++i) {
    // vectors with M entries are assumed
    for (int j = 0; j < M; j++) {
      accum[j] += "+" + std::to_string(i * M + j);
    }
  }
  std::cout << "Example: \n";
  std::cout << accum[2] << std::endl;

  std::cout << std::endl;
  std::cout << "\n-----------Inverse- UNROLL - LIN-COMB(len=56)-----------\n";
  std::string accum2[60] = {""};

  // vectors with M entries are assumed
  for (int j = 0; j < M; j += 4) {
    for (int i = 0; i < 56; i++) {
      accum2[j] += "+" + std::to_string(i * M + j);
      accum2[j + 1] += "+" + std::to_string(i * M + j + 1);
      accum2[j + 2] += "+" + std::to_string(i * M + j + 2);
      accum2[j + 3] += "+" + std::to_string(i * M + j + 3);
    }
  }

  for (int j = 0; j < M; j++) {
    if (accum2[j] != accum[j]) {
      std::cout << "FAILED" << std::endl;
      exit(1);
    }
  }
  std::cout << "PASS" << std::endl;

  std::cout << std::endl;
  std::cout << "\nAdd_vectors:";

  for (int i = 0; i < N - O; ++i) {
    // vectors with M entries are assumed
    for (int j = 0; j < O; j++) {
      std::cout << (i * O + j) * M << ",";
    }
  }

  std::cout << std::endl;

  return 0;
}

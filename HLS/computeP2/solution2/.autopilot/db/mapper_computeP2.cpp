#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void computeP2(char*, char*, char*);
extern "C" void apatb_computeP2_hw(volatile void * __xlx_apatb_param_oil_space, volatile void * __xlx_apatb_param_P1, volatile void * __xlx_apatb_param_P2) {
  // Collect __xlx_oil_space__tmp_vec
  vector<sc_bv<8> >__xlx_oil_space__tmp_vec;
  for (int j = 0, e = 336; j != e; ++j) {
    __xlx_oil_space__tmp_vec.push_back(((char*)__xlx_apatb_param_oil_space)[j]);
  }
  int __xlx_size_param_oil_space = 336;
  int __xlx_offset_param_oil_space = 0;
  int __xlx_offset_byte_param_oil_space = 0*1;
  char* __xlx_oil_space__input_buffer= new char[__xlx_oil_space__tmp_vec.size()];
  for (int i = 0; i < __xlx_oil_space__tmp_vec.size(); ++i) {
    __xlx_oil_space__input_buffer[i] = __xlx_oil_space__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_P1__tmp_vec
  vector<sc_bv<8> >__xlx_P1__tmp_vec;
  for (int j = 0, e = 115920; j != e; ++j) {
    __xlx_P1__tmp_vec.push_back(((char*)__xlx_apatb_param_P1)[j]);
  }
  int __xlx_size_param_P1 = 115920;
  int __xlx_offset_param_P1 = 0;
  int __xlx_offset_byte_param_P1 = 0*1;
  char* __xlx_P1__input_buffer= new char[__xlx_P1__tmp_vec.size()];
  for (int i = 0; i < __xlx_P1__tmp_vec.size(); ++i) {
    __xlx_P1__input_buffer[i] = __xlx_P1__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_P2__tmp_vec
  vector<sc_bv<8> >__xlx_P2__tmp_vec;
  for (int j = 0, e = 1260; j != e; ++j) {
    __xlx_P2__tmp_vec.push_back(((char*)__xlx_apatb_param_P2)[j]);
  }
  int __xlx_size_param_P2 = 1260;
  int __xlx_offset_param_P2 = 0;
  int __xlx_offset_byte_param_P2 = 0*1;
  char* __xlx_P2__input_buffer= new char[__xlx_P2__tmp_vec.size()];
  for (int i = 0; i < __xlx_P2__tmp_vec.size(); ++i) {
    __xlx_P2__input_buffer[i] = __xlx_P2__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  computeP2(__xlx_oil_space__input_buffer, __xlx_P1__input_buffer, __xlx_P2__input_buffer);
// print __xlx_apatb_param_oil_space
  sc_bv<8>*__xlx_oil_space_output_buffer = new sc_bv<8>[__xlx_size_param_oil_space];
  for (int i = 0; i < __xlx_size_param_oil_space; ++i) {
    __xlx_oil_space_output_buffer[i] = __xlx_oil_space__input_buffer[i+__xlx_offset_param_oil_space];
  }
  for (int i = 0; i < __xlx_size_param_oil_space; ++i) {
    ((char*)__xlx_apatb_param_oil_space)[i] = __xlx_oil_space_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_P1
  sc_bv<8>*__xlx_P1_output_buffer = new sc_bv<8>[__xlx_size_param_P1];
  for (int i = 0; i < __xlx_size_param_P1; ++i) {
    __xlx_P1_output_buffer[i] = __xlx_P1__input_buffer[i+__xlx_offset_param_P1];
  }
  for (int i = 0; i < __xlx_size_param_P1; ++i) {
    ((char*)__xlx_apatb_param_P1)[i] = __xlx_P1_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_P2
  sc_bv<8>*__xlx_P2_output_buffer = new sc_bv<8>[__xlx_size_param_P2];
  for (int i = 0; i < __xlx_size_param_P2; ++i) {
    __xlx_P2_output_buffer[i] = __xlx_P2__input_buffer[i+__xlx_offset_param_P2];
  }
  for (int i = 0; i < __xlx_size_param_P2; ++i) {
    ((char*)__xlx_apatb_param_P2)[i] = __xlx_P2_output_buffer[i].to_uint64();
  }
}

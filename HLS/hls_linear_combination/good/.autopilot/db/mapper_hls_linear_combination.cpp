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
unsigned int ap_apatb_vecs_V_cap_bc;
static AESL_RUNTIME_BC __xlx_vecs_V_size_Reader("../tv/stream_size/stream_size_in_vecs_V.dat");
unsigned int ap_apatb_coeffs_V_cap_bc;
static AESL_RUNTIME_BC __xlx_coeffs_V_size_Reader("../tv/stream_size/stream_size_in_coeffs_V.dat");
unsigned int ap_apatb_out_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_V_size_Reader("../tv/stream_size/stream_size_out_out_V.dat");
struct __cosim_s2__ { char data[2]; };
extern "C" void hls_linear_combination(__cosim_s2__*, __cosim_s2__*, int, __cosim_s2__*);
extern "C" void apatb_hls_linear_combination_hw(volatile void * __xlx_apatb_param_vecs, volatile void * __xlx_apatb_param_coeffs, int __xlx_apatb_param_len, volatile void * __xlx_apatb_param_out) {
  // collect __xlx_vecs_tmp_vec
  unsigned __xlx_vecs_V_tmp_Count = 0;
  unsigned __xlx_vecs_V_read_Size = __xlx_vecs_V_size_Reader.read_size();
  vector<__cosim_s2__> __xlx_vecs_tmp_vec;
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->empty() && __xlx_vecs_V_tmp_Count < __xlx_vecs_V_read_Size) {
    __xlx_vecs_tmp_vec.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->read());
    __xlx_vecs_V_tmp_Count++;
  }
  ap_apatb_vecs_V_cap_bc = __xlx_vecs_tmp_vec.size();
  // store input buffer
  __cosim_s2__* __xlx_vecs_input_buffer= new __cosim_s2__[__xlx_vecs_tmp_vec.size()];
  for (int i = 0; i < __xlx_vecs_tmp_vec.size(); ++i) {
    __xlx_vecs_input_buffer[i] = __xlx_vecs_tmp_vec[i];
  }
  // collect __xlx_coeffs_tmp_vec
  unsigned __xlx_coeffs_V_tmp_Count = 0;
  unsigned __xlx_coeffs_V_read_Size = __xlx_coeffs_V_size_Reader.read_size();
  vector<__cosim_s2__> __xlx_coeffs_tmp_vec;
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->empty() && __xlx_coeffs_V_tmp_Count < __xlx_coeffs_V_read_Size) {
    __xlx_coeffs_tmp_vec.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->read());
    __xlx_coeffs_V_tmp_Count++;
  }
  ap_apatb_coeffs_V_cap_bc = __xlx_coeffs_tmp_vec.size();
  // store input buffer
  __cosim_s2__* __xlx_coeffs_input_buffer= new __cosim_s2__[__xlx_coeffs_tmp_vec.size()];
  for (int i = 0; i < __xlx_coeffs_tmp_vec.size(); ++i) {
    __xlx_coeffs_input_buffer[i] = __xlx_coeffs_tmp_vec[i];
  }
  //Create input buffer for out
  ap_apatb_out_V_cap_bc = __xlx_out_V_size_Reader.read_size();
  __cosim_s2__* __xlx_out_input_buffer= new __cosim_s2__[ap_apatb_out_V_cap_bc];
  // DUT call
  hls_linear_combination(__xlx_vecs_input_buffer, __xlx_coeffs_input_buffer, __xlx_apatb_param_len, __xlx_out_input_buffer);
  for (unsigned i = 0; i <ap_apatb_out_V_cap_bc; ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->write(__xlx_out_input_buffer[i]);
}

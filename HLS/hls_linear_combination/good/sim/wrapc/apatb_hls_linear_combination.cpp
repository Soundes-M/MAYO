#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_vecs_V "../tv/cdatafile/c.hls_linear_combination.autotvin_vecs_V.dat"
#define AUTOTB_TVOUT_vecs_V "../tv/cdatafile/c.hls_linear_combination.autotvout_vecs_V.dat"
#define WRAPC_STREAM_SIZE_IN_vecs_V "../tv/stream_size/stream_size_in_vecs_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_vecs_V "../tv/stream_size/stream_ingress_status_vecs_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_coeffs_V "../tv/cdatafile/c.hls_linear_combination.autotvin_coeffs_V.dat"
#define AUTOTB_TVOUT_coeffs_V "../tv/cdatafile/c.hls_linear_combination.autotvout_coeffs_V.dat"
#define WRAPC_STREAM_SIZE_IN_coeffs_V "../tv/stream_size/stream_size_in_coeffs_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_coeffs_V "../tv/stream_size/stream_ingress_status_coeffs_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_len "../tv/cdatafile/c.hls_linear_combination.autotvin_len.dat"
#define AUTOTB_TVOUT_len "../tv/cdatafile/c.hls_linear_combination.autotvout_len.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_V "../tv/cdatafile/c.hls_linear_combination.autotvin_out_V.dat"
#define AUTOTB_TVOUT_out_V "../tv/cdatafile/c.hls_linear_combination.autotvout_out_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_V "../tv/stream_size/stream_size_out_out_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_V "../tv/stream_size/stream_egress_status_out_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_vecs_V "../tv/rtldatafile/rtl.hls_linear_combination.autotvout_vecs_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_coeffs_V "../tv/rtldatafile/rtl.hls_linear_combination.autotvout_coeffs_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_len "../tv/rtldatafile/rtl.hls_linear_combination.autotvout_len.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_V "../tv/rtldatafile/rtl.hls_linear_combination.autotvout_out_V.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  vecs_V_depth = 0;
  coeffs_V_depth = 0;
  len_depth = 0;
  out_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{vecs_V " << vecs_V_depth << "}\n";
  total_list << "{coeffs_V " << coeffs_V_depth << "}\n";
  total_list << "{len " << len_depth << "}\n";
  total_list << "{out_V " << out_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int vecs_V_depth;
    int coeffs_V_depth;
    int len_depth;
    int out_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s2__ { char data[2]; };
extern "C" void hls_linear_combination_hw_stub_wrapper(volatile void *, volatile void *, int, volatile void *);

extern "C" void apatb_hls_linear_combination_hw(volatile void * __xlx_apatb_param_vecs, volatile void * __xlx_apatb_param_coeffs, int __xlx_apatb_param_len, volatile void * __xlx_apatb_param_out) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_vecs_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_vecs_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_vecs_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_vecs_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->read();
long __xlx_apatb_param_coeffs_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_coeffs_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_coeffs_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_coeffs_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->read();
long __xlx_apatb_param_out_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_out_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_out_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > out_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "out_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;

            ((short*)&xlx_stream_elt)[0] = out_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//vecs_V
aesl_fh.touch(AUTOTB_TVIN_vecs_V);
aesl_fh.touch(AUTOTB_TVOUT_vecs_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_vecs_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_vecs_V);
//coeffs_V
aesl_fh.touch(AUTOTB_TVIN_coeffs_V);
aesl_fh.touch(AUTOTB_TVOUT_coeffs_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_coeffs_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_coeffs_V);
//len
aesl_fh.touch(AUTOTB_TVIN_len);
aesl_fh.touch(AUTOTB_TVOUT_len);
//out_V
aesl_fh.touch(AUTOTB_TVIN_out_V);
aesl_fh.touch(AUTOTB_TVOUT_out_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_V);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s2__> __xlx_apatb_param_vecs_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->empty())
    __xlx_apatb_param_vecs_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->read());
  for (int i = 0; i < __xlx_apatb_param_vecs_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->write(__xlx_apatb_param_vecs_stream_buf[i]);
  }
long __xlx_apatb_param_vecs_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_coeffs_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->empty())
    __xlx_apatb_param_coeffs_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->read());
  for (int i = 0; i < __xlx_apatb_param_coeffs_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->write(__xlx_apatb_param_coeffs_stream_buf[i]);
  }
long __xlx_apatb_param_coeffs_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->size();
// print len Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_len, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_len);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_len, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.len_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_len, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s2__> __xlx_apatb_param_out_stream_buf;
long __xlx_apatb_param_out_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->size();
CodeState = CALL_C_DUT;
hls_linear_combination_hw_stub_wrapper(__xlx_apatb_param_vecs, __xlx_apatb_param_coeffs, __xlx_apatb_param_len, __xlx_apatb_param_out);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_vecs_stream_buf_final_size = __xlx_apatb_param_vecs_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vecs)->size();
// print vecs_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_vecs_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_vecs_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_vecs_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_vecs_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_vecs_stream_buf_final_size, &tcl_file.vecs_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_vecs_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_vecs_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_vecs_stream_buf_final_size > 0) {
  long vecs_V_stream_ingress_size = __xlx_apatb_param_vecs_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", vecs_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_vecs_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_vecs_stream_buf_final_size; j != e; j++) {
    vecs_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", vecs_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_vecs_V, __xlx_sprintf_buffer.data());
  }
} else {
  long vecs_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", vecs_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_vecs_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_vecs_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_vecs_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_vecs_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_vecs_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_vecs_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_coeffs_stream_buf_final_size = __xlx_apatb_param_coeffs_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_coeffs)->size();
// print coeffs_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_coeffs_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_coeffs_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_coeffs_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_coeffs_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_coeffs_stream_buf_final_size, &tcl_file.coeffs_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_coeffs_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_coeffs_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_coeffs_stream_buf_final_size > 0) {
  long coeffs_V_stream_ingress_size = __xlx_apatb_param_coeffs_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", coeffs_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_coeffs_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_coeffs_stream_buf_final_size; j != e; j++) {
    coeffs_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", coeffs_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_coeffs_V, __xlx_sprintf_buffer.data());
  }
} else {
  long coeffs_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", coeffs_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_coeffs_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_coeffs_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_coeffs_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_coeffs_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_coeffs_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_coeffs_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_out_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->size() - __xlx_apatb_param_out_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->empty())
    __xlx_apatb_param_out_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->read());
  for (int i = 0; i < __xlx_apatb_param_out_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_out)->write(__xlx_apatb_param_out_stream_buf[i]);
  }
// print out_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_out_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_out_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_out_stream_buf[__xlx_apatb_param_out_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_out_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_out_stream_buf_final_size, &tcl_file.out_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_out_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

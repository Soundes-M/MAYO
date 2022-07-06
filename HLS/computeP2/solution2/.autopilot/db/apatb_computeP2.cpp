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
#define AUTOTB_TVIN_oil_space "../tv/cdatafile/c.computeP2.autotvin_oil_space.dat"
#define AUTOTB_TVOUT_oil_space "../tv/cdatafile/c.computeP2.autotvout_oil_space.dat"
// wrapc file define:
#define AUTOTB_TVIN_P1 "../tv/cdatafile/c.computeP2.autotvin_P1.dat"
#define AUTOTB_TVOUT_P1 "../tv/cdatafile/c.computeP2.autotvout_P1.dat"
// wrapc file define:
#define AUTOTB_TVIN_P2 "../tv/cdatafile/c.computeP2.autotvin_P2.dat"
#define AUTOTB_TVOUT_P2 "../tv/cdatafile/c.computeP2.autotvout_P2.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_oil_space "../tv/rtldatafile/rtl.computeP2.autotvout_oil_space.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P1 "../tv/rtldatafile/rtl.computeP2.autotvout_P1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P2 "../tv/rtldatafile/rtl.computeP2.autotvout_P2.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  oil_space_depth = 0;
  P1_depth = 0;
  P2_depth = 0;
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
  total_list << "{oil_space " << oil_space_depth << "}\n";
  total_list << "{P1 " << P1_depth << "}\n";
  total_list << "{P2 " << P2_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int oil_space_depth;
    int P1_depth;
    int P2_depth;
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
extern "C" void computeP2_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_computeP2_hw(volatile void * __xlx_apatb_param_oil_space, volatile void * __xlx_apatb_param_P1, volatile void * __xlx_apatb_param_P2) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_P2);
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
          std::vector<sc_bv<8> > P2_pc_buffer(1260);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "P2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              P2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1260; j < e; j += 1, ++i) {
            ((char*)__xlx_apatb_param_P2)[j] = P2_pc_buffer[i].to_int64();
          }}}
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
//oil_space
aesl_fh.touch(AUTOTB_TVIN_oil_space);
aesl_fh.touch(AUTOTB_TVOUT_oil_space);
//P1
aesl_fh.touch(AUTOTB_TVIN_P1);
aesl_fh.touch(AUTOTB_TVOUT_P1);
//P2
aesl_fh.touch(AUTOTB_TVIN_P2);
aesl_fh.touch(AUTOTB_TVOUT_P2);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_oil_space = 0;
// print oil_space Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_oil_space, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_oil_space = 0*1;
  if (__xlx_apatb_param_oil_space) {
    for (int j = 0  - 0, e = 336 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_oil_space)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_oil_space, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(336, &tcl_file.oil_space_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_oil_space, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P1 = 0;
// print P1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P1 = 0*1;
  if (__xlx_apatb_param_P1) {
    for (int j = 0  - 0, e = 115920 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_P1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_P1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(115920, &tcl_file.P1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P2 = 0;
// print P2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P2 = 0*1;
  if (__xlx_apatb_param_P2) {
    for (int j = 0  - 0, e = 1260 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_P2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_P2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1260, &tcl_file.P2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P2, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
computeP2_hw_stub_wrapper(__xlx_apatb_param_oil_space, __xlx_apatb_param_P1, __xlx_apatb_param_P2);
CodeState = DUMP_OUTPUTS;
// print P2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_P2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P2 = 0*1;
  if (__xlx_apatb_param_P2) {
    for (int j = 0  - 0, e = 1260 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_P2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_P2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1260, &tcl_file.P2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_P2, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

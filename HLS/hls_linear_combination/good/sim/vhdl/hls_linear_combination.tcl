
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_group [add_wave_group out(axis) -into $coutputgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/out_V_TREADY -into $out_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/out_V_TVALID -into $out_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/out_V_TDATA -into $out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set len_group [add_wave_group len(wire) -into $cinputgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/len -into $len_group -radix hex
set coeffs_group [add_wave_group coeffs(axis) -into $cinputgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/coeffs_V_TREADY -into $coeffs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/coeffs_V_TVALID -into $coeffs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/coeffs_V_TDATA -into $coeffs_group -radix hex
set vecs_group [add_wave_group vecs(axis) -into $cinputgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/vecs_V_TREADY -into $vecs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/vecs_V_TVALID -into $vecs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/vecs_V_TDATA -into $vecs_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/ap_start -into $blocksiggroup
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/ap_done -into $blocksiggroup
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/ap_idle -into $blocksiggroup
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_hls_linear_combination_top/AESL_inst_hls_linear_combination/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_hls_linear_combination_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_hls_linear_combination_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_hls_linear_combination_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_hls_linear_combination_top/LENGTH_vecs_V -into $tb_portdepth_group -radix hex
add_wave /apatb_hls_linear_combination_top/LENGTH_coeffs_V -into $tb_portdepth_group -radix hex
add_wave /apatb_hls_linear_combination_top/LENGTH_len -into $tb_portdepth_group -radix hex
add_wave /apatb_hls_linear_combination_top/LENGTH_out_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_group [add_wave_group out(axis) -into $tbcoutputgroup]
add_wave /apatb_hls_linear_combination_top/out_V_TREADY -into $tb_out_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/out_V_TVALID -into $tb_out_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/out_V_TDATA -into $tb_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_len_group [add_wave_group len(wire) -into $tbcinputgroup]
add_wave /apatb_hls_linear_combination_top/len -into $tb_len_group -radix hex
set tb_coeffs_group [add_wave_group coeffs(axis) -into $tbcinputgroup]
add_wave /apatb_hls_linear_combination_top/coeffs_V_TREADY -into $tb_coeffs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/coeffs_V_TVALID -into $tb_coeffs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/coeffs_V_TDATA -into $tb_coeffs_group -radix hex
set tb_vecs_group [add_wave_group vecs(axis) -into $tbcinputgroup]
add_wave /apatb_hls_linear_combination_top/vecs_V_TREADY -into $tb_vecs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/vecs_V_TVALID -into $tb_vecs_group -color #ffff00 -radix hex
add_wave /apatb_hls_linear_combination_top/vecs_V_TDATA -into $tb_vecs_group -radix hex
save_wave_config hls_linear_combination.wcfg
run all
quit


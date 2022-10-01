vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_4
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/processing_system7_vip_v1_0_10
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_22
vlib modelsim_lib/msim/fifo_generator_v13_2_5

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_bram_ctrl_v4_1_4 modelsim_lib/msim/axi_bram_ctrl_v4_1_4
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 modelsim_lib/msim/processing_system7_vip_v1_0_10
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_22 modelsim_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_4 -64 -93 \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_7 -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_8 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_22 -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_2_1/sim/design_1_blk_mem_gen_2_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/keccak_settings.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/keccak_rc.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/keccak_round.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/keccak_counter.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/keccak_controller.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/keccak.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/params.vhd" \
"../../../bd/design_1/ipshared/2972/imports/mayo-shake128/shake128.vhd" \
"../../../bd/design_1/ipshared/2972/new/mayo_shake128.vhd" \
"../../../bd/design_1/ip/design_1_mayo_shake128_0_0/sim/design_1_mayo_shake128_0_0.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ip/design_1_TRNG_0_0/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ip/design_1_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../mayo_keygen.gen/sources_1/bd/design_1/ip/design_1_TRNG_0_0/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../mayo_keygen.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_TRNG_0_0/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/9e6c/sources_1/imports/rtl/neoTRNG.vhd" \
"../../../bd/design_1/ipshared/9e6c/sources_1/new/TRNG.vhd" \
"../../../bd/design_1/ip/design_1_TRNG_0_0/sim/design_1_TRNG_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


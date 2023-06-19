
################################################################
# This is a generated script based on design: Mayo_sign_with_zynq
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Mayo_sign_with_zynq_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# MAYO_P1P1T, MAYO_SIGNING_FSM, mayo_add_oil, mayo_negate, mayo_reduce, mayo_reduce_extension, mayo_sample_oil, mayo_sample_oil_space, mayo_sample_vinegar, memcpy, memcpy, mayo_bram_arbiter2, mayo_bram_arbiter2, mayo_bram_arbiter2, mayo_lin_comb_arbiter, mayo_linear_combination, mayo_bram_arbiter2, mayo_bram_arbiter2, mayo_trng_arbiter, mayo_add_vectors, mayo_add_vectors_arbiter, mayo_hash_bram_arbiter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Mayo_sign_with_zynq

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: hash
proc create_hier_cell_hash { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_hash() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall


  # Create pins
  create_bd_pin -dir I bram_sel
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I i_key_en
  create_bd_pin -dir I -from 31 -to 0 i_key_mlen
  create_bd_pin -dir I -from 31 -to 0 i_key_olen
  create_bd_pin -dir I -from 31 -to 0 i_key_read_adr
  create_bd_pin -dir I -from 31 -to 0 i_key_write_adr
  create_bd_pin -dir O o_key_done
  create_bd_pin -dir O o_key_dyn_done
  create_bd_pin -dir I -type rst rst

  # Create instance: MAYO_SHAKE_1, and set properties
  set MAYO_SHAKE_1 [ create_bd_cell -type ip -vlnv user.org:user:MAYO_SHAKE:3.0 MAYO_SHAKE_1 ]

  # Create instance: mayo_hash_bram_arbit_0, and set properties
  set block_name mayo_hash_bram_arbiter
  set block_cell_name mayo_hash_bram_arbit_0
  if { [catch {set mayo_hash_bram_arbit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_hash_bram_arbit_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net mayo_hash_bram_arbit_0_BRAM_HashBig [get_bd_intf_pins BRAM_HashBig] [get_bd_intf_pins mayo_hash_bram_arbit_0/BRAM_HashBig]
  connect_bd_intf_net -intf_net mayo_hash_bram_arbit_0_BRAM_HashSmall [get_bd_intf_pins BRAM_HashSmall] [get_bd_intf_pins mayo_hash_bram_arbit_0/BRAM_HashSmall]

  # Create port connections
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_addr [get_bd_pins MAYO_SHAKE_1/BRAMA_addr] [get_bd_pins mayo_hash_bram_arbit_0/hash_addr]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_din [get_bd_pins MAYO_SHAKE_1/BRAMA_din] [get_bd_pins mayo_hash_bram_arbit_0/hash_din]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_en [get_bd_pins MAYO_SHAKE_1/BRAMA_en] [get_bd_pins mayo_hash_bram_arbit_0/hash_en]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_we [get_bd_pins MAYO_SHAKE_1/BRAMA_we] [get_bd_pins mayo_hash_bram_arbit_0/hash_we]
  connect_bd_net -net MAYO_SHAKE_1_done [get_bd_pins o_key_done] [get_bd_pins MAYO_SHAKE_1/done]
  connect_bd_net -net MAYO_SHAKE_1_dyn_done [get_bd_pins o_key_dyn_done] [get_bd_pins MAYO_SHAKE_1/dyn_done]
  connect_bd_net -net MAYO_SHAKE_1_o_control [get_bd_pins MAYO_SHAKE_1/o_control] [get_bd_pins mayo_hash_bram_arbit_0/hash_control]
  connect_bd_net -net bram_sel_1 [get_bd_pins bram_sel] [get_bd_pins mayo_hash_bram_arbit_0/bram_sel]
  connect_bd_net -net i_key_en_1 [get_bd_pins i_key_en] [get_bd_pins MAYO_SHAKE_1/en]
  connect_bd_net -net i_key_mlen_1 [get_bd_pins i_key_mlen] [get_bd_pins MAYO_SHAKE_1/mlen]
  connect_bd_net -net i_key_olen_1 [get_bd_pins i_key_olen] [get_bd_pins MAYO_SHAKE_1/olen]
  connect_bd_net -net i_key_read_adr_1 [get_bd_pins i_key_read_adr] [get_bd_pins MAYO_SHAKE_1/read_adr]
  connect_bd_net -net i_key_write_adr_1 [get_bd_pins i_key_write_adr] [get_bd_pins MAYO_SHAKE_1/write_adr]
  connect_bd_net -net mayo_hash_bram_arbit_0_hash_dout [get_bd_pins MAYO_SHAKE_1/BRAMA_dout] [get_bd_pins mayo_hash_bram_arbit_0/hash_dout]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins clk] [get_bd_pins MAYO_SHAKE_1/clk]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins rst] [get_bd_pins MAYO_SHAKE_1/rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: add_vectors
proc create_hier_cell_add_vectors { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_add_vectors() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B


  # Create pins
  create_bd_pin -dir I -from 4 -to 0 bram_sel
  create_bd_pin -dir I -type clk clk_0
  create_bd_pin -dir I -from 1 -to 0 i_bram_sel
  create_bd_pin -dir I i_enable
  create_bd_pin -dir I -from 31 -to 0 i_out_addr
  create_bd_pin -dir I -from 31 -to 0 i_v1_addr
  create_bd_pin -dir I -from 31 -to 0 i_v2_addr
  create_bd_pin -dir O o_done
  create_bd_pin -dir I -type rst rst_0

  # Create instance: mayo_add_vectors_0, and set properties
  set block_name mayo_add_vectors
  set block_cell_name mayo_add_vectors_0
  if { [catch {set mayo_add_vectors_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_add_vectors_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_add_vectors_arb_0, and set properties
  set block_name mayo_add_vectors_arbiter
  set block_cell_name mayo_add_vectors_arb_0
  if { [catch {set mayo_add_vectors_arb_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_add_vectors_arb_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_O_Add0A] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_O_Add0A]
  connect_bd_intf_net -intf_net mayo_add_vectors_0_BRAM_Add_VecA [get_bd_intf_pins mayo_add_vectors_0/BRAM_Add_VecA] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_I_AddA]
  connect_bd_intf_net -intf_net mayo_add_vectors_0_BRAM_Add_VecB [get_bd_intf_pins mayo_add_vectors_0/BRAM_Add_VecB] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_I_AddB]
  connect_bd_intf_net -intf_net mayo_add_vectors_0_BRAM_Add_VecC [get_bd_intf_pins mayo_add_vectors_0/BRAM_Add_VecC] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_I_AddC]
  connect_bd_intf_net -intf_net mayo_add_vectors_arb_0_BRAM_O_Add1A [get_bd_intf_pins BRAM_O_Add1A] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_O_Add1A]
  connect_bd_intf_net -intf_net mayo_add_vectors_arb_0_BRAM_O_Add2A [get_bd_intf_pins BRAM_O_Add2A] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_O_Add2A]
  connect_bd_intf_net -intf_net mayo_add_vectors_arb_0_BRAM_O_Add2B [get_bd_intf_pins BRAM_O_Add2B] [get_bd_intf_pins mayo_add_vectors_arb_0/BRAM_O_Add2B]

  # Create port connections
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_bram_sel [get_bd_pins i_bram_sel] [get_bd_pins mayo_add_vectors_0/i_bram_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_enable [get_bd_pins i_enable] [get_bd_pins mayo_add_vectors_0/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_out_addr [get_bd_pins i_out_addr] [get_bd_pins mayo_add_vectors_0/i_out_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_v1_addr [get_bd_pins i_v1_addr] [get_bd_pins mayo_add_vectors_0/i_v1_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_v2_addr [get_bd_pins i_v2_addr] [get_bd_pins mayo_add_vectors_0/i_v2_addr]
  connect_bd_net -net bram_sel_1 [get_bd_pins bram_sel] [get_bd_pins mayo_add_vectors_arb_0/bram_sel]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins mayo_add_vectors_0/i_clk]
  connect_bd_net -net mayo_add_vectors_0_o_done [get_bd_pins o_done] [get_bd_pins mayo_add_vectors_0/o_done]
  connect_bd_net -net rst_0_1 [get_bd_pins rst_0] [get_bd_pins mayo_add_vectors_0/rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRNG
proc create_hier_cell_TRNG { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRNG() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In1
  create_bd_pin -dir I clk
  create_bd_pin -dir I -from 31 -to 0 i_trng0_data
  create_bd_pin -dir I i_trng0_r
  create_bd_pin -dir I i_trng0_w
  create_bd_pin -dir I -from 31 -to 0 i_trng1_data1
  create_bd_pin -dir I i_trng1_r
  create_bd_pin -dir I i_trng1_w
  create_bd_pin -dir I -from 31 -to 0 i_trng2_data
  create_bd_pin -dir I i_trng2_r
  create_bd_pin -dir I i_trng2_w
  create_bd_pin -dir I i_trng_sel
  create_bd_pin -dir O -from 31 -to 0 o_trng0_data
  create_bd_pin -dir O o_trng0_done
  create_bd_pin -dir O o_trng0_valid
  create_bd_pin -dir O -from 31 -to 0 o_trng1_data
  create_bd_pin -dir O o_trng1_done
  create_bd_pin -dir O o_trng1_valid
  create_bd_pin -dir O -from 31 -to 0 o_trng2_data
  create_bd_pin -dir O o_trng2_done
  create_bd_pin -dir O o_trng2_valid
  create_bd_pin -dir I rst

  # Create instance: TRNG_0, and set properties
  set TRNG_0 [ create_bd_cell -type ip -vlnv user.org:user:TRNG:1.6 TRNG_0 ]
  set_property -dict [ list \
   CONFIG.IS_SIM {true} \
 ] $TRNG_0

  # Create instance: mayo_trng_arbiter_0, and set properties
  set block_name mayo_trng_arbiter
  set block_cell_name mayo_trng_arbiter_0
  if { [catch {set mayo_trng_arbiter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_trng_arbiter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net In1_1 [get_bd_pins In1] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net TRNG_0_TRNG_DATA_O [get_bd_pins TRNG_0/TRNG_DATA_O] [get_bd_pins mayo_trng_arbiter_0/i_trng_data]
  connect_bd_net -net TRNG_0_TRNG_DONE_O [get_bd_pins TRNG_0/TRNG_DONE_O] [get_bd_pins mayo_trng_arbiter_0/i_trng_done]
  connect_bd_net -net TRNG_0_TRNG_VALID_O [get_bd_pins TRNG_0/TRNG_VALID_O] [get_bd_pins mayo_trng_arbiter_0/i_trng_valid]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins TRNG_0/CLK_I]
  connect_bd_net -net i_trng0_data_1 [get_bd_pins i_trng0_data] [get_bd_pins mayo_trng_arbiter_0/i_trng0_data]
  connect_bd_net -net i_trng0_r_1 [get_bd_pins i_trng0_r] [get_bd_pins mayo_trng_arbiter_0/i_trng0_r]
  connect_bd_net -net i_trng0_w_1 [get_bd_pins i_trng0_w] [get_bd_pins mayo_trng_arbiter_0/i_trng0_w]
  connect_bd_net -net i_trng1_data1_1 [get_bd_pins i_trng1_data1] [get_bd_pins mayo_trng_arbiter_0/i_trng1_data]
  connect_bd_net -net i_trng1_r_1 [get_bd_pins i_trng1_r] [get_bd_pins mayo_trng_arbiter_0/i_trng1_r]
  connect_bd_net -net i_trng1_w_1 [get_bd_pins i_trng1_w] [get_bd_pins mayo_trng_arbiter_0/i_trng1_w]
  connect_bd_net -net i_trng2_data_1 [get_bd_pins i_trng2_data] [get_bd_pins mayo_trng_arbiter_0/i_trng2_data]
  connect_bd_net -net i_trng2_r_1 [get_bd_pins i_trng2_r] [get_bd_pins mayo_trng_arbiter_0/i_trng2_r]
  connect_bd_net -net i_trng2_w_1 [get_bd_pins i_trng2_w] [get_bd_pins mayo_trng_arbiter_0/i_trng2_w]
  connect_bd_net -net i_trng_sel_1 [get_bd_pins i_trng_sel] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng0_data [get_bd_pins o_trng0_data] [get_bd_pins mayo_trng_arbiter_0/o_trng0_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng0_done [get_bd_pins o_trng0_done] [get_bd_pins mayo_trng_arbiter_0/o_trng0_done]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng0_valid [get_bd_pins o_trng0_valid] [get_bd_pins mayo_trng_arbiter_0/o_trng0_valid]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng1_data [get_bd_pins o_trng1_data] [get_bd_pins mayo_trng_arbiter_0/o_trng1_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng1_done [get_bd_pins o_trng1_done] [get_bd_pins mayo_trng_arbiter_0/o_trng1_done]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng1_valid [get_bd_pins o_trng1_valid] [get_bd_pins mayo_trng_arbiter_0/o_trng1_valid]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng2_data [get_bd_pins o_trng2_data] [get_bd_pins mayo_trng_arbiter_0/o_trng2_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng2_done [get_bd_pins o_trng2_done] [get_bd_pins mayo_trng_arbiter_0/o_trng2_done]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng2_valid [get_bd_pins o_trng2_valid] [get_bd_pins mayo_trng_arbiter_0/o_trng2_valid]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng_data [get_bd_pins TRNG_0/TRNG_DATA_I] [get_bd_pins mayo_trng_arbiter_0/o_trng_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng_r [get_bd_pins TRNG_0/R_I] [get_bd_pins mayo_trng_arbiter_0/o_trng_r]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng_w [get_bd_pins TRNG_0/W_I] [get_bd_pins mayo_trng_arbiter_0/o_trng_w]
  connect_bd_net -net rst_1 [get_bd_pins rst] [get_bd_pins TRNG_0/RST]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins mayo_trng_arbiter_0/i_trng_sel] [get_bd_pins xlconcat_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SmallBRAM
proc create_hier_cell_SmallBRAM { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_SmallBRAM() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1


  # Create pins
  create_bd_pin -dir I -type clk clk_0
  create_bd_pin -dir I -from 31 -to 0 zero
  create_bd_pin -dir I zero0
  create_bd_pin -dir I -from 3 -to 0 zero4

  # Create instance: SmallBRAM_1_8K, and set properties
  set SmallBRAM_1_8K [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 SmallBRAM_1_8K ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {8192} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $SmallBRAM_1_8K

  # Create instance: mayo_bram_arbiter2_a, and set properties
  set block_name mayo_bram_arbiter2
  set block_cell_name mayo_bram_arbiter2_a
  if { [catch {set mayo_bram_arbiter2_a [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_bram_arbiter2_a eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_bram_arbiter2_b, and set properties
  set block_name mayo_bram_arbiter2
  set block_cell_name mayo_bram_arbiter2_b
  if { [catch {set mayo_bram_arbiter2_b [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_bram_arbiter2_b eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net BRAM_Add_oil1_1 [get_bd_intf_pins BRAM_Add_oil1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Add_oil]
  connect_bd_intf_net -intf_net BRAM_Add_oil_1 [get_bd_intf_pins BRAM_Add_oil] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_oil]
  connect_bd_intf_net -intf_net BRAM_Hash_1 [get_bd_intf_pins BRAM_Hash] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Hash]
  connect_bd_intf_net -intf_net BRAM_Red_ext_1 [get_bd_intf_pins BRAM_Red_ext] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Red_ext]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_Lin] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Lin]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins BRAM_Lin1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Lin]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins BRAM_P1P1T] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_P1P1T]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins BRAM_Sam_oil] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sam_oil]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins BRAM_Sam_oil1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Sam_oil]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins BRAM_Sam_vin] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sam_vin]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins BRAM_Red] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Red]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins BRAM_Sam] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sam]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins BRAM_Red_ext1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Red_ext]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign0a [get_bd_intf_pins BRAM_Sign] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sign]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign0b [get_bd_intf_pins BRAM_Sign1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Sign]
  connect_bd_intf_net -intf_net mayo_add_vectors_0_BRAM_Add_VecA [get_bd_intf_pins BRAM_Add_vec] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_vec]

  # Create port connections
  connect_bd_net -net BRAM_add_vec_din1_1 [get_bd_pins zero] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_din]
  connect_bd_net -net BRAM_add_vec_en1_1 [get_bd_pins zero0] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_rst]
  connect_bd_net -net BRAM_neg_we_1 [get_bd_pins zero4] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_we]
  connect_bd_net -net SmallBRAM_1_8K_douta [get_bd_pins SmallBRAM_1_8K/douta] [get_bd_pins mayo_bram_arbiter2_a/BRAM_dout]
  connect_bd_net -net SmallBRAM_1_8K_doutb [get_bd_pins SmallBRAM_1_8K/doutb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_dout]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins SmallBRAM_1_8K/clka] [get_bd_pins SmallBRAM_1_8K/clkb]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_addr [get_bd_pins SmallBRAM_1_8K/addra] [get_bd_pins mayo_bram_arbiter2_a/BRAM_addr]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_din [get_bd_pins SmallBRAM_1_8K/dina] [get_bd_pins mayo_bram_arbiter2_a/BRAM_din]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_en [get_bd_pins SmallBRAM_1_8K/ena] [get_bd_pins mayo_bram_arbiter2_a/BRAM_en]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_rst [get_bd_pins SmallBRAM_1_8K/rsta] [get_bd_pins mayo_bram_arbiter2_a/BRAM_rst]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_we [get_bd_pins SmallBRAM_1_8K/wea] [get_bd_pins mayo_bram_arbiter2_a/BRAM_we]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_addr [get_bd_pins SmallBRAM_1_8K/addrb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_addr]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_din [get_bd_pins SmallBRAM_1_8K/dinb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_din]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_en [get_bd_pins SmallBRAM_1_8K/enb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_en]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_rst [get_bd_pins SmallBRAM_1_8K/rstb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_rst]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_we [get_bd_pins SmallBRAM_1_8K/web] [get_bd_pins mayo_bram_arbiter2_b/BRAM_we]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: LInear_Combination
proc create_hier_cell_LInear_Combination { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_LInear_Combination() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a

  create_bd_intf_pin -mode Master -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b


  # Create pins
  create_bd_pin -dir I -from 4 -to 0 bram_sel
  create_bd_pin -dir I -type clk clk_0
  create_bd_pin -dir I i_bram_halt
  create_bd_pin -dir I -from 31 -to 0 i_coeffs_addr
  create_bd_pin -dir I i_enable
  create_bd_pin -dir I -from 31 -to 0 i_len
  create_bd_pin -dir I -from 31 -to 0 i_out_addr
  create_bd_pin -dir I -from 31 -to 0 i_vec_addr
  create_bd_pin -dir O o_done
  create_bd_pin -dir I -type rst rst_0

  # Create instance: mayo_lin_comb_arbiter_0, and set properties
  set block_name mayo_lin_comb_arbiter
  set block_cell_name mayo_lin_comb_arbiter_0
  if { [catch {set mayo_lin_comb_arbiter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_lin_comb_arbiter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_linear_combinat_0, and set properties
  set block_name mayo_linear_combination
  set block_cell_name mayo_linear_combinat_0
  if { [catch {set mayo_linear_combinat_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_linear_combinat_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_O_LinArb0a] [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_O_LinArb0a]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins BRAM_O_LinArb0b] [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_O_LinArb0b]
  connect_bd_intf_net -intf_net mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a [get_bd_intf_pins BRAM_O_LinArb1a] [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_O_LinArb1a]
  connect_bd_intf_net -intf_net mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a [get_bd_intf_pins BRAM_O_LinArb2a] [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_O_LinArb2a]
  connect_bd_intf_net -intf_net mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b [get_bd_intf_pins BRAM_O_LinArb2b] [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_O_LinArb2b]
  connect_bd_intf_net -intf_net mayo_linear_combinat_0_BRAM_Lin0a [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_I_LinArb0a] [get_bd_intf_pins mayo_linear_combinat_0/BRAM_Lin0a]
  connect_bd_intf_net -intf_net mayo_linear_combinat_0_BRAM_Lin0b [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_I_LinArb0b] [get_bd_intf_pins mayo_linear_combinat_0/BRAM_Lin0b]
  connect_bd_intf_net -intf_net mayo_linear_combinat_0_BRAM_Lin1a [get_bd_intf_pins mayo_lin_comb_arbiter_0/BRAM_I_LinArb1a] [get_bd_intf_pins mayo_linear_combinat_0/BRAM_Lin1a]

  # Create port connections
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_bram_halt [get_bd_pins i_bram_halt] [get_bd_pins mayo_linear_combinat_0/i_bram_halt]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_coeffs_addr [get_bd_pins i_coeffs_addr] [get_bd_pins mayo_linear_combinat_0/i_coeffs_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_enable [get_bd_pins i_enable] [get_bd_pins mayo_linear_combinat_0/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_len [get_bd_pins i_len] [get_bd_pins mayo_linear_combinat_0/i_len]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_out_addr [get_bd_pins i_out_addr] [get_bd_pins mayo_linear_combinat_0/i_out_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_vec_addr [get_bd_pins i_vec_addr] [get_bd_pins mayo_linear_combinat_0/i_vec_addr]
  connect_bd_net -net bram_sel_1 [get_bd_pins bram_sel] [get_bd_pins mayo_lin_comb_arbiter_0/bram_sel]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins mayo_linear_combinat_0/i_clk]
  connect_bd_net -net mayo_linear_combinat_0_o_done [get_bd_pins o_done] [get_bd_pins mayo_linear_combinat_0/o_done]
  connect_bd_net -net rst_0_1 [get_bd_pins rst_0] [get_bd_pins mayo_linear_combinat_0/rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: BigBRAM2
proc create_hier_cell_BigBRAM2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BigBRAM2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1


  # Create pins
  create_bd_pin -dir I Zero0
  create_bd_pin -dir I -from 3 -to 0 Zero4
  create_bd_pin -dir I -from 31 -to 0 Zero32
  create_bd_pin -dir I -type clk clk

  # Create instance: BigBRAM_3_256K, and set properties
  set BigBRAM_3_256K [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 BigBRAM_3_256K ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {65536} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $BigBRAM_3_256K

  # Create instance: mayo_bram_arbiter2_a, and set properties
  set block_name mayo_bram_arbiter2
  set block_cell_name mayo_bram_arbiter2_a
  if { [catch {set mayo_bram_arbiter2_a [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_bram_arbiter2_a eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_bram_arbiter2_b, and set properties
  set block_name mayo_bram_arbiter2
  set block_cell_name mayo_bram_arbiter2_b
  if { [catch {set mayo_bram_arbiter2_b [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_bram_arbiter2_b eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net BRAM_Add_vec1_1 [get_bd_intf_pins BRAM_Add_vec1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Add_vec]
  connect_bd_intf_net -intf_net BRAM_Add_vec_1 [get_bd_intf_pins BRAM_Add_vec] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_vec]
  connect_bd_intf_net -intf_net BRAM_Lin1_1 [get_bd_intf_pins BRAM_Lin1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Lin]
  connect_bd_intf_net -intf_net BRAM_Lin_1 [get_bd_intf_pins BRAM_Lin] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Lin]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_Sign] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sign]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins BRAM_Sign1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Sign]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins BRAM_Neg] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Neg]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins BRAM_Memcpy0] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Memcpy0]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins BRAM_Red_ext1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Red_ext]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins BRAM_P1P1T] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_P1P1T]

  # Create port connections
  connect_bd_net -net BRAM_neg_din1_1 [get_bd_pins Zero32] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_din]
  connect_bd_net -net BRAM_neg_en1_1 [get_bd_pins Zero0] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_rst]
  connect_bd_net -net BRAM_neg_we1_1 [get_bd_pins Zero4] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_we]
  connect_bd_net -net BigBRAM_3_256K_douta [get_bd_pins BigBRAM_3_256K/douta] [get_bd_pins mayo_bram_arbiter2_a/BRAM_dout]
  connect_bd_net -net BigBRAM_3_256K_doutb [get_bd_pins BigBRAM_3_256K/doutb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_dout]
  connect_bd_net -net clka_0_1 [get_bd_pins clk] [get_bd_pins BigBRAM_3_256K/clka] [get_bd_pins BigBRAM_3_256K/clkb]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_addr [get_bd_pins BigBRAM_3_256K/addrb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_addr]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_din [get_bd_pins BigBRAM_3_256K/dinb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_din]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_en [get_bd_pins BigBRAM_3_256K/enb] [get_bd_pins mayo_bram_arbiter2_b/BRAM_en]
  connect_bd_net -net mayo_bram_arbiter2_0_BRAM_we [get_bd_pins BigBRAM_3_256K/web] [get_bd_pins mayo_bram_arbiter2_b/BRAM_we]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_addr [get_bd_pins BigBRAM_3_256K/addra] [get_bd_pins mayo_bram_arbiter2_a/BRAM_addr]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_din [get_bd_pins BigBRAM_3_256K/dina] [get_bd_pins mayo_bram_arbiter2_a/BRAM_din]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_en [get_bd_pins BigBRAM_3_256K/ena] [get_bd_pins mayo_bram_arbiter2_a/BRAM_en]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_we [get_bd_pins BigBRAM_3_256K/wea] [get_bd_pins mayo_bram_arbiter2_a/BRAM_we]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: BigBRAM1
proc create_hier_cell_BigBRAM1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BigBRAM1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil

  create_bd_intf_pin -mode Slave -vlnv MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk clk_0
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I zero0
  create_bd_pin -dir I -from 3 -to 0 zero4
  create_bd_pin -dir I -from 31 -to 0 zero32

  # Create instance: BigBRAM_2_256K, and set properties
  set BigBRAM_2_256K [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 BigBRAM_2_256K ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $BigBRAM_2_256K

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: mayo_bram_arbiter2_a, and set properties
  set block_name mayo_bram_arbiter2
  set block_cell_name mayo_bram_arbiter2_a
  if { [catch {set mayo_bram_arbiter2_a [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_bram_arbiter2_a eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net BRAM_Add_vec_1 [get_bd_intf_pins BRAM_Add_vec] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_vec]
  connect_bd_intf_net -intf_net BRAM_Hash_1 [get_bd_intf_pins BRAM_Hash] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Hash]
  connect_bd_intf_net -intf_net BRAM_Lin_1 [get_bd_intf_pins BRAM_Lin] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Lin]
  connect_bd_intf_net -intf_net BRAM_Memcpy0_1 [get_bd_intf_pins BRAM_Memcpy0] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Memcpy0]
  connect_bd_intf_net -intf_net BRAM_Memcpy1_1 [get_bd_intf_pins BRAM_Memcpy1] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Memcpy1]
  connect_bd_intf_net -intf_net BRAM_P1P1T_1 [get_bd_intf_pins BRAM_P1P1T] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_P1P1T]
  connect_bd_intf_net -intf_net BRAM_Red_1 [get_bd_intf_pins BRAM_Red] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Red]
  connect_bd_intf_net -intf_net BRAM_Sam_1 [get_bd_intf_pins BRAM_Sam] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sam]
  connect_bd_intf_net -intf_net BRAM_Sam_oil_1 [get_bd_intf_pins BRAM_Sam_oil] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sam_oil]
  connect_bd_intf_net -intf_net BRAM_Sign_1 [get_bd_intf_pins BRAM_Sign] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sign]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_Add_oil] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_oil]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins BigBRAM_2_256K/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]

  # Create port connections
  connect_bd_net -net BRAM_memcpy0_din1_1 [get_bd_pins zero32] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_din]
  connect_bd_net -net BRAM_memcpy0_en1_1 [get_bd_pins zero0] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_rst]
  connect_bd_net -net BRAM_memcpy0_we1_1 [get_bd_pins zero4] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_we]
  connect_bd_net -net BigBRAM_2_256K_douta [get_bd_pins BigBRAM_2_256K/douta] [get_bd_pins mayo_bram_arbiter2_a/BRAM_dout]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins BigBRAM_2_256K/clka]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_addr [get_bd_pins BigBRAM_2_256K/addra] [get_bd_pins mayo_bram_arbiter2_a/BRAM_addr]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_din [get_bd_pins BigBRAM_2_256K/dina] [get_bd_pins mayo_bram_arbiter2_a/BRAM_din]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_en [get_bd_pins BigBRAM_2_256K/ena] [get_bd_pins mayo_bram_arbiter2_a/BRAM_en]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_rst [get_bd_pins BigBRAM_2_256K/rsta] [get_bd_pins mayo_bram_arbiter2_a/BRAM_rst]
  connect_bd_net -net mayo_bram_arbiter2_1_BRAM_we [get_bd_pins BigBRAM_2_256K/wea] [get_bd_pins mayo_bram_arbiter2_a/BRAM_we]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports
  set rst [ create_bd_port -dir I -type rst rst ]

  # Create instance: BigBRAM1
  create_hier_cell_BigBRAM1 [current_bd_instance .] BigBRAM1

  # Create instance: BigBRAM2
  create_hier_cell_BigBRAM2 [current_bd_instance .] BigBRAM2

  # Create instance: Ground0, and set properties
  set Ground0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $Ground0

  # Create instance: Ground4, and set properties
  set Ground4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground4 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0000} \
   CONFIG.CONST_WIDTH {4} \
 ] $Ground4

  # Create instance: Ground32, and set properties
  set Ground32 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground32 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x00000000} \
   CONFIG.CONST_WIDTH {32} \
 ] $Ground32

  # Create instance: LInear_Combination
  create_hier_cell_LInear_Combination [current_bd_instance .] LInear_Combination

  # Create instance: MAYO_P1P1T_0, and set properties
  set block_name MAYO_P1P1T
  set block_cell_name MAYO_P1P1T_0
  if { [catch {set MAYO_P1P1T_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MAYO_P1P1T_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MAYO_SIGNING_FSM_0, and set properties
  set block_name MAYO_SIGNING_FSM
  set block_cell_name MAYO_SIGNING_FSM_0
  if { [catch {set MAYO_SIGNING_FSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MAYO_SIGNING_FSM_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SmallBRAM
  create_hier_cell_SmallBRAM [current_bd_instance .] SmallBRAM

  # Create instance: TRNG
  create_hier_cell_TRNG [current_bd_instance .] TRNG

  # Create instance: add_vectors
  create_hier_cell_add_vectors [current_bd_instance .] add_vectors

  # Create instance: hash
  create_hier_cell_hash [current_bd_instance .] hash

  # Create instance: mayo_add_oil_0, and set properties
  set block_name mayo_add_oil
  set block_cell_name mayo_add_oil_0
  if { [catch {set mayo_add_oil_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_add_oil_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_axi_litev3_0, and set properties
  set mayo_axi_litev3_0 [ create_bd_cell -type ip -vlnv user.org:user:mayo_axi_litev3:3 mayo_axi_litev3_0 ]

  # Create instance: mayo_negate_0, and set properties
  set block_name mayo_negate
  set block_cell_name mayo_negate_0
  if { [catch {set mayo_negate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_negate_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_reduce_0, and set properties
  set block_name mayo_reduce
  set block_cell_name mayo_reduce_0
  if { [catch {set mayo_reduce_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_reduce_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_reduce_extension_0, and set properties
  set block_name mayo_reduce_extension
  set block_cell_name mayo_reduce_extension_0
  if { [catch {set mayo_reduce_extension_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_reduce_extension_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_sample_oil_0, and set properties
  set block_name mayo_sample_oil
  set block_cell_name mayo_sample_oil_0
  if { [catch {set mayo_sample_oil_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_sample_oil_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_sample_oil_space_0, and set properties
  set block_name mayo_sample_oil_space
  set block_cell_name mayo_sample_oil_space_0
  if { [catch {set mayo_sample_oil_space_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_sample_oil_space_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mayo_sample_vinegar_0, and set properties
  set block_name mayo_sample_vinegar
  set block_cell_name mayo_sample_vinegar_0
  if { [catch {set mayo_sample_vinegar_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mayo_sample_vinegar_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: memcpy_0, and set properties
  set block_name memcpy
  set block_cell_name memcpy_0
  if { [catch {set memcpy_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $memcpy_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: memcpy_1, and set properties
  set block_name memcpy
  set block_cell_name memcpy_1
  if { [catch {set memcpy_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $memcpy_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666667} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_EMIO_TTC0 {1} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_TTC0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150.000000} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {disabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {disabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {disabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {disabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {disabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {disabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {fast} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {fast} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {fast} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {fast} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {disabled} \
   CONFIG.PCW_MIO_1_SLEW {fast} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {fast} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {fast} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {fast} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {fast} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {fast} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {fast} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {fast} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {fast} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {disabled} \
   CONFIG.PCW_MIO_28_SLEW {fast} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {disabled} \
   CONFIG.PCW_MIO_29_SLEW {fast} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {fast} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {disabled} \
   CONFIG.PCW_MIO_30_SLEW {fast} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {disabled} \
   CONFIG.PCW_MIO_31_SLEW {fast} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {disabled} \
   CONFIG.PCW_MIO_32_SLEW {fast} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {disabled} \
   CONFIG.PCW_MIO_33_SLEW {fast} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {disabled} \
   CONFIG.PCW_MIO_34_SLEW {fast} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {disabled} \
   CONFIG.PCW_MIO_35_SLEW {fast} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {disabled} \
   CONFIG.PCW_MIO_36_SLEW {fast} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {disabled} \
   CONFIG.PCW_MIO_37_SLEW {fast} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {disabled} \
   CONFIG.PCW_MIO_38_SLEW {fast} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {disabled} \
   CONFIG.PCW_MIO_39_SLEW {fast} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {fast} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {fast} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {fast} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {fast} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {fast} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {fast} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {fast} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {in} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {disabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {disabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {fast} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {disabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {disabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {fast} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {fast} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {fast} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#wp#cd#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.41} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.411} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.341} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.358} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.028} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.001} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.001} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333313} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-15E} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {45.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {36.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {49.5} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {2} \
   CONFIG.IN1_WIDTH {6} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {6} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net BRAM_Add_vec_1 [get_bd_intf_pins SmallBRAM/BRAM_Add_vec] [get_bd_intf_pins add_vectors/BRAM_O_Add0A]
  connect_bd_intf_net -intf_net BRAM_Lin1_1 [get_bd_intf_pins LInear_Combination/BRAM_O_LinArb0b] [get_bd_intf_pins SmallBRAM/BRAM_Lin1]
  connect_bd_intf_net -intf_net BRAM_Lin_1 [get_bd_intf_pins LInear_Combination/BRAM_O_LinArb0a] [get_bd_intf_pins SmallBRAM/BRAM_Lin]
  connect_bd_intf_net -intf_net LInear_Combination_BRAM_O_LinArb1a [get_bd_intf_pins BigBRAM1/BRAM_Lin] [get_bd_intf_pins LInear_Combination/BRAM_O_LinArb1a]
  connect_bd_intf_net -intf_net LInear_Combination_BRAM_O_LinArb2a [get_bd_intf_pins BigBRAM2/BRAM_Lin] [get_bd_intf_pins LInear_Combination/BRAM_O_LinArb2a]
  connect_bd_intf_net -intf_net LInear_Combination_BRAM_O_LinArb2b [get_bd_intf_pins BigBRAM2/BRAM_Lin1] [get_bd_intf_pins LInear_Combination/BRAM_O_LinArb2b]
  connect_bd_intf_net -intf_net MAYO_P1P1T_0_BRAM_P1P1T1a [get_bd_intf_pins BigBRAM1/BRAM_P1P1T] [get_bd_intf_pins MAYO_P1P1T_0/BRAM_P1P1T1b]
  connect_bd_intf_net -intf_net MAYO_P1P1T_0_BRAM_P1P1T2a [get_bd_intf_pins BigBRAM2/BRAM_P1P1T] [get_bd_intf_pins MAYO_P1P1T_0/BRAM_P1P1T2a]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign0a [get_bd_intf_pins MAYO_SIGNING_FSM_0/BRAM_Sign0a] [get_bd_intf_pins SmallBRAM/BRAM_Sign]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign0b [get_bd_intf_pins MAYO_SIGNING_FSM_0/BRAM_Sign0b] [get_bd_intf_pins SmallBRAM/BRAM_Sign1]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign1a [get_bd_intf_pins BigBRAM1/BRAM_Sign] [get_bd_intf_pins MAYO_SIGNING_FSM_0/BRAM_Sign1a]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign2a [get_bd_intf_pins BigBRAM2/BRAM_Sign] [get_bd_intf_pins MAYO_SIGNING_FSM_0/BRAM_Sign2a]
  connect_bd_intf_net -intf_net MAYO_SIGNING_FSM_0_BRAM_Sign2b [get_bd_intf_pins BigBRAM2/BRAM_Sign1] [get_bd_intf_pins MAYO_SIGNING_FSM_0/BRAM_Sign2b]
  connect_bd_intf_net -intf_net add_vectors_BRAM_O_Add1A [get_bd_intf_pins BigBRAM1/BRAM_Add_vec] [get_bd_intf_pins add_vectors/BRAM_O_Add1A]
  connect_bd_intf_net -intf_net add_vectors_BRAM_O_Add2A [get_bd_intf_pins BigBRAM2/BRAM_Add_vec] [get_bd_intf_pins add_vectors/BRAM_O_Add2A]
  connect_bd_intf_net -intf_net add_vectors_BRAM_O_Add2B [get_bd_intf_pins BigBRAM2/BRAM_Add_vec1] [get_bd_intf_pins add_vectors/BRAM_O_Add2B]
  connect_bd_intf_net -intf_net hash_BRAM_HashBig [get_bd_intf_pins BigBRAM1/BRAM_Hash] [get_bd_intf_pins hash/BRAM_HashBig]
  connect_bd_intf_net -intf_net hash_BRAM_HashSmall [get_bd_intf_pins SmallBRAM/BRAM_Hash] [get_bd_intf_pins hash/BRAM_HashSmall]
  connect_bd_intf_net -intf_net mayo_add_oil_0_BRAM_Add_oil0a [get_bd_intf_pins SmallBRAM/BRAM_Add_oil] [get_bd_intf_pins mayo_add_oil_0/BRAM_Add_oil0a]
  connect_bd_intf_net -intf_net mayo_add_oil_0_BRAM_Add_oil0b [get_bd_intf_pins SmallBRAM/BRAM_Add_oil1] [get_bd_intf_pins mayo_add_oil_0/BRAM_Add_oil0b]
  connect_bd_intf_net -intf_net mayo_add_oil_0_BRAM_Add_oil1a [get_bd_intf_pins BigBRAM1/BRAM_Add_oil] [get_bd_intf_pins mayo_add_oil_0/BRAM_Add_oil1a]
  connect_bd_intf_net -intf_net mayo_negate_0_BRAM_Negate [get_bd_intf_pins BigBRAM2/BRAM_Neg] [get_bd_intf_pins mayo_negate_0/BRAM_Negate]
  connect_bd_intf_net -intf_net mayo_reduce_0_BRAM_Red0 [get_bd_intf_pins SmallBRAM/BRAM_Red] [get_bd_intf_pins mayo_reduce_0/BRAM_Red0]
  connect_bd_intf_net -intf_net mayo_reduce_0_BRAM_Red1 [get_bd_intf_pins BigBRAM1/BRAM_Red] [get_bd_intf_pins mayo_reduce_0/BRAM_Red1]
  connect_bd_intf_net -intf_net mayo_reduce_extension_0_BRAM_Red_Exta [get_bd_intf_pins SmallBRAM/BRAM_Red_ext] [get_bd_intf_pins mayo_reduce_extension_0/BRAM_Red_Exta]
  connect_bd_intf_net -intf_net mayo_reduce_extension_0_BRAM_Red_Extb [get_bd_intf_pins SmallBRAM/BRAM_Red_ext1] [get_bd_intf_pins mayo_reduce_extension_0/BRAM_Red_Extb]
  connect_bd_intf_net -intf_net mayo_reduce_extension_0_BRAM_Red_Extc [get_bd_intf_pins BigBRAM2/BRAM_Red_ext1] [get_bd_intf_pins mayo_reduce_extension_0/BRAM_Red_Extc]
  connect_bd_intf_net -intf_net mayo_sample_oil_0_BRAM_Sample_oil0a [get_bd_intf_pins SmallBRAM/BRAM_Sam_oil] [get_bd_intf_pins mayo_sample_oil_0/BRAM_Sample_oil0a]
  connect_bd_intf_net -intf_net mayo_sample_oil_0_BRAM_Sample_oil0b [get_bd_intf_pins SmallBRAM/BRAM_Sam_oil1] [get_bd_intf_pins mayo_sample_oil_0/BRAM_Sample_oil0b]
  connect_bd_intf_net -intf_net mayo_sample_oil_0_BRAM_Sample_oil1a [get_bd_intf_pins BigBRAM1/BRAM_Sam_oil] [get_bd_intf_pins mayo_sample_oil_0/BRAM_Sample_oil1a]
  connect_bd_intf_net -intf_net mayo_sample_oil_space_0_BRAM_Sama [get_bd_intf_pins SmallBRAM/BRAM_Sam] [get_bd_intf_pins mayo_sample_oil_space_0/BRAM_Sama]
  connect_bd_intf_net -intf_net mayo_sample_oil_space_0_BRAM_Samb [get_bd_intf_pins BigBRAM1/BRAM_Sam] [get_bd_intf_pins mayo_sample_oil_space_0/BRAM_Samb]
  connect_bd_intf_net -intf_net mayo_sample_vinegar_0_BRAM_Sam_vin0a [get_bd_intf_pins SmallBRAM/BRAM_Sam_vin] [get_bd_intf_pins mayo_sample_vinegar_0/BRAM_Sam_vin0a]
  connect_bd_intf_net -intf_net memcpy_0_BRAM_Dest_PORTB [get_bd_intf_pins BigBRAM1/BRAM_Memcpy0] [get_bd_intf_pins memcpy_0/BRAM_Dest_PORTB]
  connect_bd_intf_net -intf_net memcpy_0_BRAM_Src_PORTA [get_bd_intf_pins BigBRAM2/BRAM_Memcpy0] [get_bd_intf_pins memcpy_0/BRAM_Src_PORTA]
  connect_bd_intf_net -intf_net memcpy_1_BRAM_Src_PORTA [get_bd_intf_pins BigBRAM1/BRAM_Memcpy1] [get_bd_intf_pins memcpy_1/BRAM_Src_PORTA]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins mayo_axi_litev3_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins BigBRAM1/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]

  # Create port connections
  connect_bd_net -net Ground0_dout [get_bd_pins BigBRAM1/zero0] [get_bd_pins BigBRAM2/Zero0] [get_bd_pins Ground0/dout] [get_bd_pins SmallBRAM/zero0] [get_bd_pins mayo_axi_litev3_0/i_Keygen_busy] [get_bd_pins mayo_axi_litev3_0/i_Keygen_done] [get_bd_pins mayo_axi_litev3_0/i_Verification_busy] [get_bd_pins mayo_axi_litev3_0/i_Verification_done]
  connect_bd_net -net Ground32_dout [get_bd_pins BigBRAM1/zero32] [get_bd_pins BigBRAM2/Zero32] [get_bd_pins Ground32/dout] [get_bd_pins SmallBRAM/zero]
  connect_bd_net -net Ground4_dout [get_bd_pins BigBRAM1/zero4] [get_bd_pins BigBRAM2/Zero4] [get_bd_pins Ground4/dout] [get_bd_pins SmallBRAM/zero4]
  connect_bd_net -net MAYO_P1P1T_0_o_done [get_bd_pins MAYO_P1P1T_0/o_done] [get_bd_pins MAYO_SIGNING_FSM_0/i_p1p1t_done]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_bram_sel [get_bd_pins MAYO_SIGNING_FSM_0/o_add_bram_sel] [get_bd_pins add_vectors/i_bram_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_demux_bram_sel [get_bd_pins MAYO_SIGNING_FSM_0/o_add_demux_bram_sel] [get_bd_pins add_vectors/bram_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_enable [get_bd_pins MAYO_SIGNING_FSM_0/o_add_enable] [get_bd_pins add_vectors/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_oil_enable [get_bd_pins MAYO_SIGNING_FSM_0/o_add_oil_enable] [get_bd_pins mayo_add_oil_0/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_out_addr [get_bd_pins MAYO_SIGNING_FSM_0/o_add_out_addr] [get_bd_pins add_vectors/i_out_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_v1_addr [get_bd_pins MAYO_SIGNING_FSM_0/o_add_v1_addr] [get_bd_pins add_vectors/i_v1_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_add_v2_addr [get_bd_pins MAYO_SIGNING_FSM_0/o_add_v2_addr] [get_bd_pins add_vectors/i_v2_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_busy [get_bd_pins MAYO_SIGNING_FSM_0/o_busy] [get_bd_pins mayo_axi_litev3_0/i_Signing_busy]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/o_done] [get_bd_pins mayo_axi_litev3_0/i_Signing_done]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_err [get_bd_pins MAYO_SIGNING_FSM_0/o_err] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_hash_en [get_bd_pins MAYO_SIGNING_FSM_0/o_hash_en] [get_bd_pins hash/i_key_en]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_hash_memsel [get_bd_pins MAYO_SIGNING_FSM_0/o_hash_memsel] [get_bd_pins hash/bram_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_hash_mlen [get_bd_pins MAYO_SIGNING_FSM_0/o_hash_mlen] [get_bd_pins hash/i_key_mlen]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_hash_olen [get_bd_pins MAYO_SIGNING_FSM_0/o_hash_olen] [get_bd_pins hash/i_key_olen]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_hash_read_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_hash_read_adr] [get_bd_pins hash/i_key_read_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_hash_write_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_hash_write_adr] [get_bd_pins hash/i_key_write_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_bram_halt [get_bd_pins LInear_Combination/i_bram_halt] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_bram_halt]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_coeffs_addr [get_bd_pins LInear_Combination/i_coeffs_addr] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_coeffs_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel [get_bd_pins LInear_Combination/bram_sel] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_demux_bram_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_enable [get_bd_pins LInear_Combination/i_enable] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_len [get_bd_pins LInear_Combination/i_len] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_len]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_out_addr [get_bd_pins LInear_Combination/i_out_addr] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_out_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_lin_vec_addr [get_bd_pins LInear_Combination/i_vec_addr] [get_bd_pins MAYO_SIGNING_FSM_0/o_lin_vec_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy1_dst_adr] [get_bd_pins memcpy_1/i_dst_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy1_len [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy1_len] [get_bd_pins memcpy_1/i_len]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy1_mem_port_sel] [get_bd_pins memcpy_1/i_mem_port_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy1_src_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy1_src_adr] [get_bd_pins memcpy_1/i_src_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy1_start [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy1_start] [get_bd_pins memcpy_1/start]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy_dst_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy_dst_adr] [get_bd_pins memcpy_0/i_dst_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy_len [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy_len] [get_bd_pins memcpy_0/i_len]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy_mem_port_sel] [get_bd_pins memcpy_0/i_mem_port_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy_src_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy_src_adr] [get_bd_pins memcpy_0/i_src_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_memcpy_start [get_bd_pins MAYO_SIGNING_FSM_0/o_memcpy_start] [get_bd_pins memcpy_0/start]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_neg_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_neg_adr] [get_bd_pins mayo_negate_0/i_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_neg_enable [get_bd_pins MAYO_SIGNING_FSM_0/o_neg_enable] [get_bd_pins mayo_negate_0/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_neg_len [get_bd_pins MAYO_SIGNING_FSM_0/o_neg_len] [get_bd_pins mayo_negate_0/i_len]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr [get_bd_pins MAYO_P1P1T_0/i_dsta_adr] [get_bd_pins MAYO_SIGNING_FSM_0/o_p1p1t_dsta_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr [get_bd_pins MAYO_P1P1T_0/i_dstb_adr] [get_bd_pins MAYO_SIGNING_FSM_0/o_p1p1t_dstb_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_p1p1t_enable [get_bd_pins MAYO_P1P1T_0/enable] [get_bd_pins MAYO_SIGNING_FSM_0/o_p1p1t_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal [get_bd_pins MAYO_P1P1T_0/i_ji_equal] [get_bd_pins MAYO_SIGNING_FSM_0/o_p1p1t_ji_equal]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_p1p1t_src_adr [get_bd_pins MAYO_P1P1T_0/i_src_adr] [get_bd_pins MAYO_SIGNING_FSM_0/o_p1p1t_src_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_red_adr] [get_bd_pins mayo_reduce_0/i_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_bram_sel [get_bd_pins MAYO_SIGNING_FSM_0/o_red_bram_sel] [get_bd_pins mayo_reduce_0/i_bram_sel]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_enable [get_bd_pins MAYO_SIGNING_FSM_0/o_red_enable] [get_bd_pins mayo_reduce_0/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_ext_en [get_bd_pins MAYO_SIGNING_FSM_0/o_red_ext_en] [get_bd_pins mayo_reduce_extension_0/en]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_ext_input_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_red_ext_input_adr] [get_bd_pins mayo_reduce_extension_0/i_input_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_ext_output_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_red_ext_output_adr] [get_bd_pins mayo_reduce_extension_0/i_output_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_red_len [get_bd_pins MAYO_SIGNING_FSM_0/o_red_len] [get_bd_pins mayo_reduce_0/i_len]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_sam_enable [get_bd_pins MAYO_SIGNING_FSM_0/o_sam_enable] [get_bd_pins mayo_sample_oil_space_0/i_enable]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_sam_mode [get_bd_pins MAYO_SIGNING_FSM_0/o_sam_mode] [get_bd_pins mayo_sample_oil_space_0/i_mode]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_sam_oil_addr [get_bd_pins MAYO_SIGNING_FSM_0/o_sam_oil_addr] [get_bd_pins mayo_sample_oil_space_0/i_oil_addr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_sam_oil_en [get_bd_pins MAYO_SIGNING_FSM_0/o_sam_oil_en] [get_bd_pins mayo_sample_oil_0/en]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_sam_vin_en [get_bd_pins MAYO_SIGNING_FSM_0/o_sam_vin_en] [get_bd_pins mayo_sample_vinegar_0/en]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_sam_vin_input_adr [get_bd_pins MAYO_SIGNING_FSM_0/o_sam_vin_input_adr] [get_bd_pins mayo_sample_vinegar_0/i_input_adr]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_trng_data [get_bd_pins MAYO_SIGNING_FSM_0/o_trng_data] [get_bd_pins TRNG/i_trng0_data]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_trng_r [get_bd_pins MAYO_SIGNING_FSM_0/o_trng_r] [get_bd_pins TRNG/i_trng0_r]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_trng_w [get_bd_pins MAYO_SIGNING_FSM_0/o_trng_w] [get_bd_pins TRNG/i_trng0_w]
  connect_bd_net -net TRNG_o_trng0_data [get_bd_pins MAYO_SIGNING_FSM_0/i_trng_data] [get_bd_pins TRNG/o_trng0_data]
  connect_bd_net -net TRNG_o_trng0_done [get_bd_pins MAYO_SIGNING_FSM_0/i_trng_done] [get_bd_pins TRNG/o_trng0_done]
  connect_bd_net -net TRNG_o_trng0_valid [get_bd_pins MAYO_SIGNING_FSM_0/i_trng_valid] [get_bd_pins TRNG/o_trng0_valid]
  connect_bd_net -net TRNG_o_trng1_data [get_bd_pins TRNG/o_trng1_data] [get_bd_pins mayo_sample_oil_space_0/i_trng_data]
  connect_bd_net -net TRNG_o_trng1_done [get_bd_pins TRNG/o_trng1_done] [get_bd_pins mayo_sample_oil_space_0/i_trng_done]
  connect_bd_net -net TRNG_o_trng1_valid [get_bd_pins TRNG/o_trng1_valid] [get_bd_pins mayo_sample_oil_space_0/i_trng_valid]
  connect_bd_net -net TRNG_o_trng2_data [get_bd_pins TRNG/o_trng2_data] [get_bd_pins mayo_sample_vinegar_0/i_trng_data]
  connect_bd_net -net TRNG_o_trng2_done [get_bd_pins TRNG/o_trng2_done] [get_bd_pins mayo_sample_vinegar_0/i_trng_done]
  connect_bd_net -net TRNG_o_trng2_valid [get_bd_pins TRNG/o_trng2_valid] [get_bd_pins mayo_sample_vinegar_0/i_trng_valid]
  connect_bd_net -net hash_o_key_done [get_bd_pins MAYO_SIGNING_FSM_0/i_hash_done] [get_bd_pins hash/o_key_done]
  connect_bd_net -net hash_o_key_dyn_done [get_bd_pins MAYO_SIGNING_FSM_0/i_hash_dyn_done] [get_bd_pins hash/o_key_dyn_done]
  connect_bd_net -net i_trng1_data1_1 [get_bd_pins TRNG/i_trng1_data1] [get_bd_pins mayo_sample_oil_space_0/o_trng_data]
  connect_bd_net -net i_trng1_r_1 [get_bd_pins TRNG/i_trng1_r] [get_bd_pins mayo_sample_oil_space_0/o_trng_r]
  connect_bd_net -net mayo_add_oil_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_add_oil_done] [get_bd_pins mayo_add_oil_0/o_done]
  connect_bd_net -net mayo_add_vectors_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_add_done] [get_bd_pins add_vectors/o_done]
  connect_bd_net -net mayo_axi_litev3_0_o_Expose [get_bd_pins MAYO_SIGNING_FSM_0/i_secret] [get_bd_pins mayo_axi_litev3_0/o_Expose]
  connect_bd_net -net mayo_axi_litev3_0_o_Signing_en [get_bd_pins MAYO_SIGNING_FSM_0/i_enable] [get_bd_pins mayo_axi_litev3_0/o_Signing_en]
  connect_bd_net -net mayo_axi_litev3_0_o_interrupt [get_bd_pins mayo_axi_litev3_0/o_interrupt] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net mayo_linear_combinat_0_o_done [get_bd_pins LInear_Combination/o_done] [get_bd_pins MAYO_SIGNING_FSM_0/i_lin_done]
  connect_bd_net -net mayo_negate_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_neg_done] [get_bd_pins mayo_negate_0/o_done]
  connect_bd_net -net mayo_reduce_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_red_done] [get_bd_pins mayo_reduce_0/o_done]
  connect_bd_net -net mayo_reduce_extension_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_red_ext_done] [get_bd_pins mayo_reduce_extension_0/o_done]
  connect_bd_net -net mayo_sample_oil_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_sam_oil_done] [get_bd_pins mayo_sample_oil_0/o_done]
  connect_bd_net -net mayo_sample_oil_0_o_ret [get_bd_pins MAYO_SIGNING_FSM_0/i_sam_oil_ret] [get_bd_pins mayo_sample_oil_0/o_ret]
  connect_bd_net -net mayo_sample_oil_space_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_sam_done] [get_bd_pins mayo_sample_oil_space_0/o_done]
  connect_bd_net -net mayo_sample_oil_space_0_o_trng_sel [get_bd_pins TRNG/i_trng_sel] [get_bd_pins mayo_sample_oil_space_0/o_trng_sel]
  connect_bd_net -net mayo_sample_oil_space_0_o_trng_w [get_bd_pins TRNG/i_trng1_w] [get_bd_pins mayo_sample_oil_space_0/o_trng_w]
  connect_bd_net -net mayo_sample_vinegar_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_sam_vin_done] [get_bd_pins mayo_sample_vinegar_0/o_done]
  connect_bd_net -net mayo_sample_vinegar_0_o_trng_data [get_bd_pins TRNG/i_trng2_data] [get_bd_pins mayo_sample_vinegar_0/o_trng_data]
  connect_bd_net -net mayo_sample_vinegar_0_o_trng_r [get_bd_pins TRNG/i_trng2_r] [get_bd_pins mayo_sample_vinegar_0/o_trng_r]
  connect_bd_net -net mayo_sample_vinegar_0_o_trng_sel [get_bd_pins TRNG/In1] [get_bd_pins mayo_sample_vinegar_0/o_trng_sel]
  connect_bd_net -net mayo_sample_vinegar_0_o_trng_w [get_bd_pins TRNG/i_trng2_w] [get_bd_pins mayo_sample_vinegar_0/o_trng_w]
  connect_bd_net -net memcpy_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_memcpy_done] [get_bd_pins memcpy_0/o_done]
  connect_bd_net -net memcpy_1_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_memcpy1_done] [get_bd_pins memcpy_1/o_done]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins BigBRAM1/clk_0] [get_bd_pins BigBRAM1/s_axi_aclk] [get_bd_pins BigBRAM2/clk] [get_bd_pins LInear_Combination/clk_0] [get_bd_pins MAYO_P1P1T_0/clk] [get_bd_pins MAYO_SIGNING_FSM_0/clk] [get_bd_pins SmallBRAM/clk_0] [get_bd_pins TRNG/clk] [get_bd_pins add_vectors/clk_0] [get_bd_pins hash/clk] [get_bd_pins mayo_add_oil_0/clk] [get_bd_pins mayo_axi_litev3_0/s00_axi_aclk] [get_bd_pins mayo_negate_0/i_clk] [get_bd_pins mayo_reduce_0/i_clk] [get_bd_pins mayo_reduce_extension_0/clk] [get_bd_pins mayo_sample_oil_0/clk] [get_bd_pins mayo_sample_oil_space_0/i_clk] [get_bd_pins mayo_sample_vinegar_0/clk] [get_bd_pins memcpy_0/clk] [get_bd_pins memcpy_1/clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins BigBRAM1/s_axi_aresetn] [get_bd_pins mayo_axi_litev3_0/s00_axi_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
  connect_bd_net -net rst_ps7_0_100M_peripheral_reset [get_bd_pins LInear_Combination/rst_0] [get_bd_pins MAYO_P1P1T_0/rst] [get_bd_pins MAYO_SIGNING_FSM_0/rst] [get_bd_pins TRNG/rst] [get_bd_pins add_vectors/rst_0] [get_bd_pins hash/rst] [get_bd_pins mayo_add_oil_0/rst] [get_bd_pins mayo_negate_0/rst] [get_bd_pins mayo_reduce_0/rst] [get_bd_pins mayo_reduce_extension_0/rst] [get_bd_pins mayo_sample_oil_0/rst] [get_bd_pins mayo_sample_oil_space_0/rst] [get_bd_pins mayo_sample_vinegar_0/rst] [get_bd_pins memcpy_0/rst] [get_bd_pins memcpy_1/rst] [get_bd_pins rst_ps7_0_100M/peripheral_reset]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins mayo_axi_litev3_0/i_error] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  assign_bd_address -offset 0x40000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs BigBRAM1/axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x43C00000 -range 0x00002000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mayo_axi_litev3_0/S00_AXI/S00_AXI_reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



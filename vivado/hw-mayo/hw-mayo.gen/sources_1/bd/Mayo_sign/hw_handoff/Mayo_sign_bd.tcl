
################################################################
# This is a generated script based on design: Mayo_sign
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
# source Mayo_sign_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# MAYO_P1P1T, MAYO_SIGNING_FSM, mayo_add_oil, mayo_negate, mayo_reduce, mayo_reduce_extension, mayo_sample_oil, mayo_sample_oil_space, mayo_sample_vinegar, memcpy, memcpy, mayo_bram_arbiter2, mayo_bram_arbiter2, tdp_BigBRAM_2, mayo_bram_arbiter2, mayo_bram_arbiter2, tdp_BigBRAM_2, mayo_lin_comb_arbiter, mayo_linear_combination, mayo_bram_arbiter2, mayo_bram_arbiter2, tdp_SmallBRAM_1, mayo_trng_arbiter, mayo_add_vectors, mayo_add_vectors_arbiter, mayo_hash_bram_arbiter

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
set design_name Mayo_sign

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
  
  # Create instance: tdp_SmallBRAM_1_0, and set properties
  set block_name tdp_SmallBRAM_1
  set block_cell_name tdp_SmallBRAM_1_0
  if { [catch {set tdp_SmallBRAM_1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tdp_SmallBRAM_1_0 eq "" } {
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
  connect_bd_net -net BRAM_add_vec_en1_1 [get_bd_pins zero0] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_rst] [get_bd_pins tdp_SmallBRAM_1_0/regcea] [get_bd_pins tdp_SmallBRAM_1_0/regceb]
  connect_bd_net -net BRAM_neg_we_1 [get_bd_pins zero4] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_we]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins tdp_SmallBRAM_1_0/clka] [get_bd_pins tdp_SmallBRAM_1_0/clkb]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_addr [get_bd_pins mayo_bram_arbiter2_a/BRAM_addr] [get_bd_pins tdp_SmallBRAM_1_0/addra]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_din [get_bd_pins mayo_bram_arbiter2_a/BRAM_din] [get_bd_pins tdp_SmallBRAM_1_0/dina]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_en [get_bd_pins mayo_bram_arbiter2_a/BRAM_en] [get_bd_pins tdp_SmallBRAM_1_0/ena]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_rst [get_bd_pins mayo_bram_arbiter2_a/BRAM_rst] [get_bd_pins tdp_SmallBRAM_1_0/rsta]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_we [get_bd_pins mayo_bram_arbiter2_a/BRAM_we] [get_bd_pins tdp_SmallBRAM_1_0/wea]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_addr [get_bd_pins mayo_bram_arbiter2_b/BRAM_addr] [get_bd_pins tdp_SmallBRAM_1_0/addrb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_din [get_bd_pins mayo_bram_arbiter2_b/BRAM_din] [get_bd_pins tdp_SmallBRAM_1_0/dinb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_en [get_bd_pins mayo_bram_arbiter2_b/BRAM_en] [get_bd_pins tdp_SmallBRAM_1_0/enb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_rst [get_bd_pins mayo_bram_arbiter2_b/BRAM_rst] [get_bd_pins tdp_SmallBRAM_1_0/rstb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_we [get_bd_pins mayo_bram_arbiter2_b/BRAM_we] [get_bd_pins tdp_SmallBRAM_1_0/web]
  connect_bd_net -net tdp_SmallBRAM_1_0_douta [get_bd_pins mayo_bram_arbiter2_a/BRAM_dout] [get_bd_pins tdp_SmallBRAM_1_0/douta]
  connect_bd_net -net tdp_SmallBRAM_1_0_doutb [get_bd_pins mayo_bram_arbiter2_b/BRAM_dout] [get_bd_pins tdp_SmallBRAM_1_0/doutb]

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
  
  # Create instance: tdp_BigBRAM_2_0, and set properties
  set block_name tdp_BigBRAM_2
  set block_cell_name tdp_BigBRAM_2_0
  if { [catch {set tdp_BigBRAM_2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tdp_BigBRAM_2_0 eq "" } {
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
  connect_bd_net -net BRAM_neg_en1_1 [get_bd_pins Zero0] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_rst] [get_bd_pins tdp_BigBRAM_2_0/regcea] [get_bd_pins tdp_BigBRAM_2_0/regceb]
  connect_bd_net -net BRAM_neg_we1_1 [get_bd_pins Zero4] [get_bd_pins mayo_bram_arbiter2_a/BRAM_add_oil_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_oil_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_we]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins tdp_BigBRAM_2_0/clka] [get_bd_pins tdp_BigBRAM_2_0/clkb]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_addr [get_bd_pins mayo_bram_arbiter2_a/BRAM_addr] [get_bd_pins tdp_BigBRAM_2_0/addra]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_din [get_bd_pins mayo_bram_arbiter2_a/BRAM_din] [get_bd_pins tdp_BigBRAM_2_0/dina]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_en [get_bd_pins mayo_bram_arbiter2_a/BRAM_en] [get_bd_pins tdp_BigBRAM_2_0/ena]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_rst [get_bd_pins mayo_bram_arbiter2_a/BRAM_rst] [get_bd_pins tdp_BigBRAM_2_0/rsta]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_we [get_bd_pins mayo_bram_arbiter2_a/BRAM_we] [get_bd_pins tdp_BigBRAM_2_0/wea]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_addr [get_bd_pins mayo_bram_arbiter2_b/BRAM_addr] [get_bd_pins tdp_BigBRAM_2_0/addrb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_din [get_bd_pins mayo_bram_arbiter2_b/BRAM_din] [get_bd_pins tdp_BigBRAM_2_0/dinb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_en [get_bd_pins mayo_bram_arbiter2_b/BRAM_en] [get_bd_pins tdp_BigBRAM_2_0/enb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_rst [get_bd_pins mayo_bram_arbiter2_b/BRAM_rst] [get_bd_pins tdp_BigBRAM_2_0/rstb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_we [get_bd_pins mayo_bram_arbiter2_b/BRAM_we] [get_bd_pins tdp_BigBRAM_2_0/web]
  connect_bd_net -net tdp_BigBRAM_2_0_douta [get_bd_pins mayo_bram_arbiter2_a/BRAM_dout] [get_bd_pins tdp_BigBRAM_2_0/douta]
  connect_bd_net -net tdp_BigBRAM_2_0_doutb [get_bd_pins mayo_bram_arbiter2_b/BRAM_dout] [get_bd_pins tdp_BigBRAM_2_0/doutb]

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


  # Create pins
  create_bd_pin -dir I -type clk clk_0
  create_bd_pin -dir I zero0
  create_bd_pin -dir I -from 3 -to 0 zero4
  create_bd_pin -dir I -from 31 -to 0 zero32

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
  
  # Create instance: tdp_BigBRAM_2_0, and set properties
  set block_name tdp_BigBRAM_2
  set block_cell_name tdp_BigBRAM_2_0
  if { [catch {set tdp_BigBRAM_2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tdp_BigBRAM_2_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net BRAM_Add_vec_1 [get_bd_intf_pins BRAM_Add_vec] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_vec]
  connect_bd_intf_net -intf_net BRAM_Hash_1 [get_bd_intf_pins BRAM_Hash] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Hash]
  connect_bd_intf_net -intf_net BRAM_Lin_1 [get_bd_intf_pins BRAM_Lin] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Lin]
  connect_bd_intf_net -intf_net BRAM_Sign_1 [get_bd_intf_pins BRAM_Sign] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Sign]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_Add_oil] [get_bd_intf_pins mayo_bram_arbiter2_a/BRAM_Add_oil]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins BRAM_P1P1T] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_P1P1T]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins BRAM_Sam_oil] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Sam_oil]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins BRAM_Red] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Red]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins BRAM_Sam] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Sam]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins BRAM_Memcpy0] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Memcpy0]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins BRAM_Memcpy1] [get_bd_intf_pins mayo_bram_arbiter2_b/BRAM_Memcpy1]

  # Create port connections
  connect_bd_net -net BRAM_memcpy0_din1_1 [get_bd_pins zero32] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_din] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_addr] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_lin_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_lin_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_ext_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_ext_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_din] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sign_addr] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sign_din]
  connect_bd_net -net BRAM_memcpy0_en1_1 [get_bd_pins zero0] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_rst] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_lin_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_lin_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_lin_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_ext_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_ext_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_ext_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_rst] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sign_control] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sign_en] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sign_rst] [get_bd_pins tdp_BigBRAM_2_0/regcea] [get_bd_pins tdp_BigBRAM_2_0/regceb]
  connect_bd_net -net BRAM_memcpy0_we1_1 [get_bd_pins zero4] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy0_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_memcpy1_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_p1p1t_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_ext_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_red_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_oil_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_a/BRAM_sam_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_oil_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_add_vec_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_hash_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_lin_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_neg_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_red_ext_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sam_vin_we] [get_bd_pins mayo_bram_arbiter2_b/BRAM_sign_we]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins tdp_BigBRAM_2_0/clka] [get_bd_pins tdp_BigBRAM_2_0/clkb]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_addr [get_bd_pins mayo_bram_arbiter2_a/BRAM_addr] [get_bd_pins tdp_BigBRAM_2_0/addra]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_din [get_bd_pins mayo_bram_arbiter2_a/BRAM_din] [get_bd_pins tdp_BigBRAM_2_0/dina]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_en [get_bd_pins mayo_bram_arbiter2_a/BRAM_en] [get_bd_pins tdp_BigBRAM_2_0/ena]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_rst [get_bd_pins mayo_bram_arbiter2_a/BRAM_rst] [get_bd_pins tdp_BigBRAM_2_0/rsta]
  connect_bd_net -net mayo_bram_arbiter2_a_BRAM_we [get_bd_pins mayo_bram_arbiter2_a/BRAM_we] [get_bd_pins tdp_BigBRAM_2_0/wea]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_addr [get_bd_pins mayo_bram_arbiter2_b/BRAM_addr] [get_bd_pins tdp_BigBRAM_2_0/addrb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_din [get_bd_pins mayo_bram_arbiter2_b/BRAM_din] [get_bd_pins tdp_BigBRAM_2_0/dinb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_en [get_bd_pins mayo_bram_arbiter2_b/BRAM_en] [get_bd_pins tdp_BigBRAM_2_0/enb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_rst [get_bd_pins mayo_bram_arbiter2_b/BRAM_rst] [get_bd_pins tdp_BigBRAM_2_0/rstb]
  connect_bd_net -net mayo_bram_arbiter2_b_BRAM_we [get_bd_pins mayo_bram_arbiter2_b/BRAM_we] [get_bd_pins tdp_BigBRAM_2_0/web]
  connect_bd_net -net tdp_BigBRAM_2_0_douta [get_bd_pins mayo_bram_arbiter2_a/BRAM_dout] [get_bd_pins tdp_BigBRAM_2_0/douta]
  connect_bd_net -net tdp_BigBRAM_2_0_doutb [get_bd_pins mayo_bram_arbiter2_b/BRAM_dout] [get_bd_pins tdp_BigBRAM_2_0/doutb]

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

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {rst} \
 ] $clk
  set done [ create_bd_port -dir O done ]
  set i_enable [ create_bd_port -dir I i_enable ]
  set i_secret [ create_bd_port -dir I i_secret ]
  set o_err [ create_bd_port -dir O -from 1 -to 0 o_err ]
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

  # Create port connections
  connect_bd_net -net Ground0_dout [get_bd_pins BigBRAM1/zero0] [get_bd_pins BigBRAM2/Zero0] [get_bd_pins Ground0/dout] [get_bd_pins SmallBRAM/zero0]
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
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_done [get_bd_ports done] [get_bd_pins MAYO_SIGNING_FSM_0/o_done]
  connect_bd_net -net MAYO_SIGNING_FSM_0_o_err [get_bd_ports o_err] [get_bd_pins MAYO_SIGNING_FSM_0/o_err]
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
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins BigBRAM1/clk_0] [get_bd_pins BigBRAM2/clk] [get_bd_pins LInear_Combination/clk_0] [get_bd_pins MAYO_P1P1T_0/clk] [get_bd_pins MAYO_SIGNING_FSM_0/clk] [get_bd_pins SmallBRAM/clk_0] [get_bd_pins TRNG/clk] [get_bd_pins add_vectors/clk_0] [get_bd_pins hash/clk] [get_bd_pins mayo_add_oil_0/clk] [get_bd_pins mayo_negate_0/i_clk] [get_bd_pins mayo_reduce_0/i_clk] [get_bd_pins mayo_reduce_extension_0/clk] [get_bd_pins mayo_sample_oil_0/clk] [get_bd_pins mayo_sample_oil_space_0/i_clk] [get_bd_pins mayo_sample_vinegar_0/clk] [get_bd_pins memcpy_0/clk] [get_bd_pins memcpy_1/clk]
  connect_bd_net -net hash_o_key_done [get_bd_pins MAYO_SIGNING_FSM_0/i_hash_done] [get_bd_pins hash/o_key_done]
  connect_bd_net -net hash_o_key_dyn_done [get_bd_pins MAYO_SIGNING_FSM_0/i_hash_dyn_done] [get_bd_pins hash/o_key_dyn_done]
  connect_bd_net -net i_enable_0_1 [get_bd_ports i_enable] [get_bd_pins MAYO_SIGNING_FSM_0/i_enable]
  connect_bd_net -net i_secret_0_1 [get_bd_ports i_secret] [get_bd_pins MAYO_SIGNING_FSM_0/i_secret]
  connect_bd_net -net i_trng1_data1_1 [get_bd_pins TRNG/i_trng1_data1] [get_bd_pins mayo_sample_oil_space_0/o_trng_data]
  connect_bd_net -net i_trng1_r_1 [get_bd_pins TRNG/i_trng1_r] [get_bd_pins mayo_sample_oil_space_0/o_trng_r]
  connect_bd_net -net mayo_add_oil_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_add_oil_done] [get_bd_pins mayo_add_oil_0/o_done]
  connect_bd_net -net mayo_add_vectors_0_o_done [get_bd_pins MAYO_SIGNING_FSM_0/i_add_done] [get_bd_pins add_vectors/o_done]
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
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins LInear_Combination/rst_0] [get_bd_pins MAYO_P1P1T_0/rst] [get_bd_pins MAYO_SIGNING_FSM_0/rst] [get_bd_pins TRNG/rst] [get_bd_pins add_vectors/rst_0] [get_bd_pins hash/rst] [get_bd_pins mayo_add_oil_0/rst] [get_bd_pins mayo_negate_0/rst] [get_bd_pins mayo_reduce_0/rst] [get_bd_pins mayo_reduce_extension_0/rst] [get_bd_pins mayo_sample_oil_0/rst] [get_bd_pins mayo_sample_oil_space_0/rst] [get_bd_pins mayo_sample_vinegar_0/rst] [get_bd_pins memcpy_0/rst] [get_bd_pins memcpy_1/rst]

  # Create address segments


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



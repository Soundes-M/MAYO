
################################################################
# This is a generated script based on design: Mayo_keygen_no_zynq
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
# source Mayo_keygen_no_zynq_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# MAYO_KEYGEN_FSM, mayo_add_vectors, mayo_linear_combination, mayo_negate, mayo_reduce, mayo_sample_oil_space, mayo_bram_arbiter, mayo_bram_arbiter, mayo_bram_arbiter, mayo_trng_arbiter, mayo_hash_bram_arbiter

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
set design_name Mayo_keygen_no_zynq

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

  # Create pins
  create_bd_pin -dir O -from 31 -to 0 BRAM0_addr
  create_bd_pin -dir O BRAM0_control
  create_bd_pin -dir O -from 31 -to 0 BRAM0_din
  create_bd_pin -dir I -from 31 -to 0 BRAM0_dout
  create_bd_pin -dir O BRAM0_en
  create_bd_pin -dir O -from 3 -to 0 BRAM0_we
  create_bd_pin -dir O BRAM1_control
  create_bd_pin -dir O -from 31 -to 0 BRAMA_addr
  create_bd_pin -dir O -from 31 -to 0 BRAMA_din
  create_bd_pin -dir I -from 31 -to 0 BRAMA_dout
  create_bd_pin -dir O BRAMA_en
  create_bd_pin -dir O -from 3 -to 0 BRAMA_we
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
  
  # Create port connections
  connect_bd_net -net BRAM0_dout_1 [get_bd_pins BRAM0_dout] [get_bd_pins mayo_hash_bram_arbit_0/BRAM0_dout]
  connect_bd_net -net BRAMA_dout_1 [get_bd_pins BRAMA_dout] [get_bd_pins mayo_hash_bram_arbit_0/BRAM1_dout]
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
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM0_addr [get_bd_pins BRAM0_addr] [get_bd_pins mayo_hash_bram_arbit_0/BRAM0_addr]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM0_control [get_bd_pins BRAM0_control] [get_bd_pins mayo_hash_bram_arbit_0/BRAM0_control]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM0_din [get_bd_pins BRAM0_din] [get_bd_pins mayo_hash_bram_arbit_0/BRAM0_din]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM0_en [get_bd_pins BRAM0_en] [get_bd_pins mayo_hash_bram_arbit_0/BRAM0_en]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM0_we [get_bd_pins BRAM0_we] [get_bd_pins mayo_hash_bram_arbit_0/BRAM0_we]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM1_addr [get_bd_pins BRAMA_addr] [get_bd_pins mayo_hash_bram_arbit_0/BRAM1_addr]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM1_control [get_bd_pins BRAM1_control] [get_bd_pins mayo_hash_bram_arbit_0/BRAM1_control]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM1_din [get_bd_pins BRAMA_din] [get_bd_pins mayo_hash_bram_arbit_0/BRAM1_din]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM1_en [get_bd_pins BRAMA_en] [get_bd_pins mayo_hash_bram_arbit_0/BRAM1_en]
  connect_bd_net -net mayo_hash_bram_arbit_0_BRAM1_we [get_bd_pins BRAMA_we] [get_bd_pins mayo_hash_bram_arbit_0/BRAM1_we]
  connect_bd_net -net mayo_hash_bram_arbit_0_hash_dout [get_bd_pins MAYO_SHAKE_1/BRAMA_dout] [get_bd_pins mayo_hash_bram_arbit_0/hash_dout]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins clk] [get_bd_pins MAYO_SHAKE_1/clk]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins rst] [get_bd_pins MAYO_SHAKE_1/rst]

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
  create_bd_pin -dir I clk
  create_bd_pin -dir I -from 31 -to 0 i_trng0_data
  create_bd_pin -dir I i_trng0_r
  create_bd_pin -dir I i_trng0_w
  create_bd_pin -dir I -from 31 -to 0 i_trng1_data1
  create_bd_pin -dir I i_trng1_r
  create_bd_pin -dir I i_trng1_w
  create_bd_pin -dir I i_trng_sel
  create_bd_pin -dir O -from 31 -to 0 o_trng0_data
  create_bd_pin -dir O o_trng0_done
  create_bd_pin -dir O o_trng0_valid
  create_bd_pin -dir O -from 31 -to 0 o_trng1_data
  create_bd_pin -dir O o_trng1_done
  create_bd_pin -dir O o_trng1_valid
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
  
  # Create port connections
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
  connect_bd_net -net i_trng_sel_1 [get_bd_pins i_trng_sel] [get_bd_pins mayo_trng_arbiter_0/i_trng_sel]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng0_data [get_bd_pins o_trng0_data] [get_bd_pins mayo_trng_arbiter_0/o_trng0_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng0_done [get_bd_pins o_trng0_done] [get_bd_pins mayo_trng_arbiter_0/o_trng0_done]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng0_valid [get_bd_pins o_trng0_valid] [get_bd_pins mayo_trng_arbiter_0/o_trng0_valid]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng1_data [get_bd_pins o_trng1_data] [get_bd_pins mayo_trng_arbiter_0/o_trng1_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng1_done [get_bd_pins o_trng1_done] [get_bd_pins mayo_trng_arbiter_0/o_trng1_done]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng1_valid [get_bd_pins o_trng1_valid] [get_bd_pins mayo_trng_arbiter_0/o_trng1_valid]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng_data [get_bd_pins TRNG_0/TRNG_DATA_I] [get_bd_pins mayo_trng_arbiter_0/o_trng_data]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng_r [get_bd_pins TRNG_0/R_I] [get_bd_pins mayo_trng_arbiter_0/o_trng_r]
  connect_bd_net -net mayo_trng_arbiter_0_o_trng_w [get_bd_pins TRNG_0/W_I] [get_bd_pins mayo_trng_arbiter_0/o_trng_w]
  connect_bd_net -net rst_1 [get_bd_pins rst] [get_bd_pins TRNG_0/RST]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: BRAM_small
proc create_hier_cell_BRAM_small { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BRAM_small() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 BRAM_add_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_add_addr1
  create_bd_pin -dir I -from 31 -to 0 BRAM_add_din
  create_bd_pin -dir I -from 31 -to 0 BRAM_add_din1
  create_bd_pin -dir O -from 31 -to 0 BRAM_add_dout
  create_bd_pin -dir O -from 31 -to 0 BRAM_add_dout1
  create_bd_pin -dir I BRAM_add_en
  create_bd_pin -dir I BRAM_add_en1
  create_bd_pin -dir I -type rst BRAM_add_rst
  create_bd_pin -dir I -type rst BRAM_add_rst1
  create_bd_pin -dir I -from 3 -to 0 BRAM_add_we
  create_bd_pin -dir I -from 3 -to 0 BRAM_add_we1
  create_bd_pin -dir I -from 31 -to 0 BRAM_hash_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_hash_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_hash_dout
  create_bd_pin -dir I BRAM_hash_en
  create_bd_pin -dir I -from 3 -to 0 BRAM_hash_we1
  create_bd_pin -dir I -from 31 -to 0 BRAM_key_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_key_addr1
  create_bd_pin -dir I -from 31 -to 0 BRAM_key_din
  create_bd_pin -dir I -from 31 -to 0 BRAM_key_din1
  create_bd_pin -dir O -from 31 -to 0 BRAM_key_dout
  create_bd_pin -dir O -from 31 -to 0 BRAM_key_dout1
  create_bd_pin -dir I BRAM_key_en
  create_bd_pin -dir I BRAM_key_en1
  create_bd_pin -dir I -type rst BRAM_key_rst
  create_bd_pin -dir I -type rst BRAM_key_rst1
  create_bd_pin -dir I -from 3 -to 0 BRAM_key_we
  create_bd_pin -dir I -from 3 -to 0 BRAM_key_we1
  create_bd_pin -dir I -from 31 -to 0 BRAM_lin_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_lin_addr1
  create_bd_pin -dir I -from 31 -to 0 BRAM_lin_din
  create_bd_pin -dir I -from 31 -to 0 BRAM_lin_din1
  create_bd_pin -dir O -from 31 -to 0 BRAM_lin_dout
  create_bd_pin -dir O -from 31 -to 0 BRAM_lin_dout1
  create_bd_pin -dir I BRAM_lin_en
  create_bd_pin -dir I BRAM_lin_en1
  create_bd_pin -dir I -type rst BRAM_lin_rst
  create_bd_pin -dir I -type rst BRAM_lin_rst1
  create_bd_pin -dir I -from 3 -to 0 BRAM_lin_we
  create_bd_pin -dir I -from 3 -to 0 BRAM_lin_we1
  create_bd_pin -dir I -from 31 -to 0 BRAM_neg_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_neg_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_neg_dout
  create_bd_pin -dir I BRAM_neg_en
  create_bd_pin -dir I -type rst BRAM_neg_rst
  create_bd_pin -dir I -from 3 -to 0 BRAM_neg_we
  create_bd_pin -dir I -from 31 -to 0 BRAM_red_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_red_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_red_dout
  create_bd_pin -dir I BRAM_red_en
  create_bd_pin -dir I -type rst BRAM_red_rst
  create_bd_pin -dir I -from 3 -to 0 BRAM_red_we
  create_bd_pin -dir I -from 31 -to 0 BRAM_sam_addr1
  create_bd_pin -dir I -from 31 -to 0 BRAM_sam_din1
  create_bd_pin -dir O -from 31 -to 0 BRAM_sam_dout1
  create_bd_pin -dir I BRAM_sam_en1
  create_bd_pin -dir I -type rst BRAM_sam_rst1
  create_bd_pin -dir I -from 3 -to 0 BRAM_sam_we1
  create_bd_pin -dir I -type rst Zero0
  create_bd_pin -dir I -from 3 -to 0 Zero_4
  create_bd_pin -dir I -from 31 -to 0 Zero_32
  create_bd_pin -dir I add_control
  create_bd_pin -dir I add_control1
  create_bd_pin -dir I bram_control
  create_bd_pin -dir I bram_control1
  create_bd_pin -dir I -type clk clkb
  create_bd_pin -dir I hash_control
  create_bd_pin -dir I lin_control
  create_bd_pin -dir I lin_control1
  create_bd_pin -dir I neg_control
  create_bd_pin -dir I red_control
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I sam_control1

  # Create instance: Small_BRAM8k, and set properties
  set Small_BRAM8k [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 Small_BRAM8k ]
  set_property -dict [ list \
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
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $Small_BRAM8k

  # Create instance: arbit_brama0, and set properties
  set block_name mayo_bram_arbiter
  set block_cell_name arbit_brama0
  if { [catch {set arbit_brama0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $arbit_brama0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: arbit_bramb0, and set properties
  set block_name mayo_bram_arbiter
  set block_cell_name arbit_bramb0
  if { [catch {set arbit_bramb0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $arbit_bramb0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net AXI_LITE_Mayo_Keygen_0_o_mem0a_addr [get_bd_pins BRAM_key_addr] [get_bd_pins arbit_brama0/BRAM_key_addr]
  connect_bd_net -net AXI_LITE_Mayo_Keygen_0_o_mem0a_control [get_bd_pins bram_control] [get_bd_pins arbit_brama0/bram_control]
  connect_bd_net -net AXI_LITE_Mayo_Keygen_0_o_mem0a_din [get_bd_pins BRAM_key_din] [get_bd_pins arbit_brama0/BRAM_key_din]
  connect_bd_net -net AXI_LITE_Mayo_Keygen_0_o_mem0a_en [get_bd_pins BRAM_key_en] [get_bd_pins arbit_brama0/BRAM_key_en]
  connect_bd_net -net AXI_LITE_Mayo_Keygen_0_o_mem0a_rst [get_bd_pins BRAM_key_rst] [get_bd_pins arbit_brama0/BRAM_key_rst]
  connect_bd_net -net AXI_LITE_Mayo_Keygen_0_o_mem0a_we [get_bd_pins BRAM_key_we] [get_bd_pins arbit_brama0/BRAM_key_we]
  connect_bd_net -net BRAM_add_addr1_1 [get_bd_pins BRAM_add_addr1] [get_bd_pins arbit_bramb0/BRAM_add_addr]
  connect_bd_net -net BRAM_add_din1_1 [get_bd_pins BRAM_add_din1] [get_bd_pins arbit_bramb0/BRAM_add_din]
  connect_bd_net -net BRAM_add_en1_1 [get_bd_pins BRAM_add_en1] [get_bd_pins arbit_bramb0/BRAM_add_en]
  connect_bd_net -net BRAM_add_rst1_1 [get_bd_pins BRAM_add_rst1] [get_bd_pins arbit_bramb0/BRAM_add_rst]
  connect_bd_net -net BRAM_add_we1_1 [get_bd_pins BRAM_add_we1] [get_bd_pins arbit_bramb0/BRAM_add_we]
  connect_bd_net -net BRAM_hash_addr_1 [get_bd_pins BRAM_hash_addr] [get_bd_pins arbit_brama0/BRAM_hash_addr]
  connect_bd_net -net BRAM_hash_din_1 [get_bd_pins BRAM_hash_din] [get_bd_pins arbit_brama0/BRAM_hash_din]
  connect_bd_net -net BRAM_hash_en_1 [get_bd_pins BRAM_hash_en] [get_bd_pins arbit_brama0/BRAM_hash_en]
  connect_bd_net -net BRAM_hash_we1_1 [get_bd_pins BRAM_hash_we1] [get_bd_pins arbit_brama0/BRAM_hash_we]
  connect_bd_net -net BRAM_key_addr1_1 [get_bd_pins BRAM_key_addr1] [get_bd_pins arbit_bramb0/BRAM_key_addr]
  connect_bd_net -net BRAM_key_din1_1 [get_bd_pins BRAM_key_din1] [get_bd_pins arbit_bramb0/BRAM_key_din]
  connect_bd_net -net BRAM_key_en1_1 [get_bd_pins BRAM_key_en1] [get_bd_pins arbit_bramb0/BRAM_key_en]
  connect_bd_net -net BRAM_key_rst1_1 [get_bd_pins BRAM_key_rst1] [get_bd_pins arbit_bramb0/BRAM_key_rst]
  connect_bd_net -net BRAM_key_we1_1 [get_bd_pins BRAM_key_we1] [get_bd_pins arbit_bramb0/BRAM_key_we]
  connect_bd_net -net Small_BRAM8k_douta [get_bd_pins Small_BRAM8k/douta] [get_bd_pins arbit_brama0/BRAM_dout]
  connect_bd_net -net Small_BRAM8k_doutb [get_bd_pins Small_BRAM8k/doutb] [get_bd_pins arbit_bramb0/BRAM_dout]
  connect_bd_net -net Zero0_1 [get_bd_pins Zero0] [get_bd_pins arbit_brama0/BRAM_hash_rst] [get_bd_pins arbit_brama0/BRAM_sam_en] [get_bd_pins arbit_brama0/BRAM_sam_rst] [get_bd_pins arbit_brama0/sam_control] [get_bd_pins arbit_bramb0/BRAM_hash_en] [get_bd_pins arbit_bramb0/BRAM_hash_rst] [get_bd_pins arbit_bramb0/BRAM_neg_en] [get_bd_pins arbit_bramb0/BRAM_neg_rst] [get_bd_pins arbit_bramb0/BRAM_red_en] [get_bd_pins arbit_bramb0/BRAM_red_rst] [get_bd_pins arbit_bramb0/hash_control] [get_bd_pins arbit_bramb0/neg_control] [get_bd_pins arbit_bramb0/red_control]
  connect_bd_net -net Zero_32_1 [get_bd_pins Zero_32] [get_bd_pins arbit_brama0/BRAM_sam_addr] [get_bd_pins arbit_brama0/BRAM_sam_din] [get_bd_pins arbit_bramb0/BRAM_hash_addr] [get_bd_pins arbit_bramb0/BRAM_hash_din] [get_bd_pins arbit_bramb0/BRAM_neg_addr] [get_bd_pins arbit_bramb0/BRAM_neg_din] [get_bd_pins arbit_bramb0/BRAM_red_addr] [get_bd_pins arbit_bramb0/BRAM_red_din]
  connect_bd_net -net Zero_4_1 [get_bd_pins Zero_4] [get_bd_pins arbit_brama0/BRAM_sam_we] [get_bd_pins arbit_bramb0/BRAM_hash_we] [get_bd_pins arbit_bramb0/BRAM_neg_we] [get_bd_pins arbit_bramb0/BRAM_red_we]
  connect_bd_net -net add_control1_1 [get_bd_pins add_control1] [get_bd_pins arbit_bramb0/add_control]
  connect_bd_net -net arbit_brama0_BRAM_add_dout [get_bd_pins BRAM_add_dout] [get_bd_pins arbit_brama0/BRAM_add_dout]
  connect_bd_net -net arbit_brama0_BRAM_addr [get_bd_pins Small_BRAM8k/addra] [get_bd_pins arbit_brama0/BRAM_addr]
  connect_bd_net -net arbit_brama0_BRAM_din [get_bd_pins Small_BRAM8k/dina] [get_bd_pins arbit_brama0/BRAM_din]
  connect_bd_net -net arbit_brama0_BRAM_en [get_bd_pins Small_BRAM8k/ena] [get_bd_pins arbit_brama0/BRAM_en]
  connect_bd_net -net arbit_brama0_BRAM_hash_dout [get_bd_pins BRAM_hash_dout] [get_bd_pins arbit_brama0/BRAM_hash_dout]
  connect_bd_net -net arbit_brama0_BRAM_key_dout [get_bd_pins BRAM_key_dout] [get_bd_pins arbit_brama0/BRAM_key_dout]
  connect_bd_net -net arbit_brama0_BRAM_lin_dout [get_bd_pins BRAM_lin_dout] [get_bd_pins arbit_brama0/BRAM_lin_dout]
  connect_bd_net -net arbit_brama0_BRAM_neg_dout [get_bd_pins BRAM_neg_dout] [get_bd_pins arbit_brama0/BRAM_neg_dout]
  connect_bd_net -net arbit_brama0_BRAM_red_dout [get_bd_pins BRAM_red_dout] [get_bd_pins arbit_brama0/BRAM_red_dout]
  connect_bd_net -net arbit_brama0_BRAM_rst [get_bd_pins Small_BRAM8k/rsta] [get_bd_pins arbit_brama0/BRAM_rst]
  connect_bd_net -net arbit_brama0_BRAM_we [get_bd_pins Small_BRAM8k/wea] [get_bd_pins arbit_brama0/BRAM_we]
  connect_bd_net -net arbit_bramb0_BRAM_add_dout [get_bd_pins BRAM_add_dout1] [get_bd_pins arbit_bramb0/BRAM_add_dout]
  connect_bd_net -net arbit_bramb0_BRAM_addr [get_bd_pins Small_BRAM8k/addrb] [get_bd_pins arbit_bramb0/BRAM_addr]
  connect_bd_net -net arbit_bramb0_BRAM_din [get_bd_pins Small_BRAM8k/dinb] [get_bd_pins arbit_bramb0/BRAM_din]
  connect_bd_net -net arbit_bramb0_BRAM_en [get_bd_pins Small_BRAM8k/enb] [get_bd_pins arbit_bramb0/BRAM_en]
  connect_bd_net -net arbit_bramb0_BRAM_key_dout [get_bd_pins BRAM_key_dout1] [get_bd_pins arbit_bramb0/BRAM_key_dout]
  connect_bd_net -net arbit_bramb0_BRAM_rst [get_bd_pins Small_BRAM8k/rstb] [get_bd_pins arbit_bramb0/BRAM_rst]
  connect_bd_net -net arbit_bramb0_BRAM_sam_dout [get_bd_pins BRAM_sam_dout1] [get_bd_pins arbit_bramb0/BRAM_sam_dout]
  connect_bd_net -net arbit_bramb0_BRAM_we [get_bd_pins Small_BRAM8k/web] [get_bd_pins arbit_bramb0/BRAM_we]
  connect_bd_net -net bram_control1_1 [get_bd_pins bram_control1] [get_bd_pins arbit_bramb0/bram_control]
  connect_bd_net -net hash_control_1 [get_bd_pins hash_control] [get_bd_pins arbit_brama0/hash_control]
  connect_bd_net -net mayo_add_vectors_0_o_controla [get_bd_pins add_control] [get_bd_pins arbit_brama0/add_control]
  connect_bd_net -net mayo_add_vectors_0_o_mema_addr [get_bd_pins BRAM_add_addr] [get_bd_pins arbit_brama0/BRAM_add_addr]
  connect_bd_net -net mayo_add_vectors_0_o_mema_din [get_bd_pins BRAM_add_din] [get_bd_pins arbit_brama0/BRAM_add_din]
  connect_bd_net -net mayo_add_vectors_0_o_mema_en [get_bd_pins BRAM_add_en] [get_bd_pins arbit_brama0/BRAM_add_en]
  connect_bd_net -net mayo_add_vectors_0_o_mema_rst [get_bd_pins BRAM_add_rst] [get_bd_pins arbit_brama0/BRAM_add_rst]
  connect_bd_net -net mayo_add_vectors_0_o_mema_we [get_bd_pins BRAM_add_we] [get_bd_pins arbit_brama0/BRAM_add_we]
  connect_bd_net -net mayo_bram_arbiter_1_BRAM_lin_dout [get_bd_pins BRAM_lin_dout1] [get_bd_pins arbit_bramb0/BRAM_lin_dout]
  connect_bd_net -net mayo_linear_combinat_0_o_control0a [get_bd_pins lin_control] [get_bd_pins arbit_brama0/lin_control]
  connect_bd_net -net mayo_linear_combinat_0_o_control0b [get_bd_pins lin_control1] [get_bd_pins arbit_bramb0/lin_control]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_addr [get_bd_pins BRAM_lin_addr] [get_bd_pins arbit_brama0/BRAM_lin_addr]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_din [get_bd_pins BRAM_lin_din] [get_bd_pins arbit_brama0/BRAM_lin_din]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_en [get_bd_pins BRAM_lin_en] [get_bd_pins arbit_brama0/BRAM_lin_en]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_rst [get_bd_pins BRAM_lin_rst] [get_bd_pins arbit_brama0/BRAM_lin_rst]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_we [get_bd_pins BRAM_lin_we] [get_bd_pins arbit_brama0/BRAM_lin_we]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_addr [get_bd_pins BRAM_lin_addr1] [get_bd_pins arbit_bramb0/BRAM_lin_addr]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_din [get_bd_pins BRAM_lin_din1] [get_bd_pins arbit_bramb0/BRAM_lin_din]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_en [get_bd_pins BRAM_lin_en1] [get_bd_pins arbit_bramb0/BRAM_lin_en]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_rst [get_bd_pins BRAM_lin_rst1] [get_bd_pins arbit_bramb0/BRAM_lin_rst]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_we [get_bd_pins BRAM_lin_we1] [get_bd_pins arbit_bramb0/BRAM_lin_we]
  connect_bd_net -net mayo_negate_0_o_addrb [get_bd_pins BRAM_neg_addr] [get_bd_pins arbit_brama0/BRAM_neg_addr]
  connect_bd_net -net mayo_negate_0_o_control [get_bd_pins neg_control] [get_bd_pins arbit_brama0/neg_control]
  connect_bd_net -net mayo_negate_0_o_dinb [get_bd_pins BRAM_neg_din] [get_bd_pins arbit_brama0/BRAM_neg_din]
  connect_bd_net -net mayo_negate_0_o_enb [get_bd_pins BRAM_neg_en] [get_bd_pins arbit_brama0/BRAM_neg_en]
  connect_bd_net -net mayo_negate_0_o_rstb [get_bd_pins BRAM_neg_rst] [get_bd_pins arbit_brama0/BRAM_neg_rst]
  connect_bd_net -net mayo_negate_0_o_web [get_bd_pins BRAM_neg_we] [get_bd_pins arbit_brama0/BRAM_neg_we]
  connect_bd_net -net mayo_reduce_0_o_addrb [get_bd_pins BRAM_red_addr] [get_bd_pins arbit_brama0/BRAM_red_addr]
  connect_bd_net -net mayo_reduce_0_o_control [get_bd_pins red_control] [get_bd_pins arbit_brama0/red_control]
  connect_bd_net -net mayo_reduce_0_o_dinb [get_bd_pins BRAM_red_din] [get_bd_pins arbit_brama0/BRAM_red_din]
  connect_bd_net -net mayo_reduce_0_o_enb [get_bd_pins BRAM_red_en] [get_bd_pins arbit_brama0/BRAM_red_en]
  connect_bd_net -net mayo_reduce_0_o_rstb [get_bd_pins BRAM_red_rst] [get_bd_pins arbit_brama0/BRAM_red_rst]
  connect_bd_net -net mayo_reduce_0_o_web [get_bd_pins BRAM_red_we] [get_bd_pins arbit_brama0/BRAM_red_we]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_addr [get_bd_pins BRAM_sam_addr1] [get_bd_pins arbit_bramb0/BRAM_sam_addr]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_din [get_bd_pins BRAM_sam_din1] [get_bd_pins arbit_bramb0/BRAM_sam_din]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_en [get_bd_pins BRAM_sam_en1] [get_bd_pins arbit_bramb0/BRAM_sam_en]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_rst [get_bd_pins BRAM_sam_rst1] [get_bd_pins arbit_bramb0/BRAM_sam_rst]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_we [get_bd_pins BRAM_sam_we1] [get_bd_pins arbit_bramb0/BRAM_sam_we]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins clkb] [get_bd_pins Small_BRAM8k/clka] [get_bd_pins Small_BRAM8k/clkb]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn -boundary_type lower [get_bd_pins rst]
  connect_bd_net -net sam_control1_1 [get_bd_pins sam_control1] [get_bd_pins arbit_bramb0/sam_control]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: BRAM_big
proc create_hier_cell_BRAM_big { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BRAM_big() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 BRAM_add_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_add_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_add_dout
  create_bd_pin -dir I BRAM_add_en
  create_bd_pin -dir I -type rst BRAM_add_rst
  create_bd_pin -dir I -type rst BRAM_add_rst1
  create_bd_pin -dir I -from 3 -to 0 BRAM_add_we
  create_bd_pin -dir I -from 3 -to 0 BRAM_add_we1
  create_bd_pin -dir I -from 31 -to 0 BRAM_hash_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_hash_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_hash_dout
  create_bd_pin -dir I BRAM_hash_en
  create_bd_pin -dir I -from 3 -to 0 BRAM_hash_we
  create_bd_pin -dir I -from 31 -to 0 BRAM_key_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_key_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_key_dout
  create_bd_pin -dir I BRAM_key_en
  create_bd_pin -dir I -type rst BRAM_key_rst
  create_bd_pin -dir I -from 3 -to 0 BRAM_key_we
  create_bd_pin -dir I -from 31 -to 0 BRAM_lin_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_lin_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_lin_dout
  create_bd_pin -dir I BRAM_lin_en
  create_bd_pin -dir I -type rst BRAM_lin_rst
  create_bd_pin -dir I -from 3 -to 0 BRAM_lin_we
  create_bd_pin -dir I -from 31 -to 0 BRAM_neg_din
  create_bd_pin -dir I -from 31 -to 0 BRAM_red_addr
  create_bd_pin -dir I -from 31 -to 0 BRAM_red_din
  create_bd_pin -dir O -from 31 -to 0 BRAM_red_dout
  create_bd_pin -dir I BRAM_red_en
  create_bd_pin -dir I -type rst BRAM_red_rst
  create_bd_pin -dir I -from 3 -to 0 BRAM_red_we
  create_bd_pin -dir I add_control
  create_bd_pin -dir I bram_control
  create_bd_pin -dir I -type clk clka
  create_bd_pin -dir I hash_control
  create_bd_pin -dir I lin_control
  create_bd_pin -dir I red_control

  # Create instance: BIG_BRAM512K, and set properties
  set BIG_BRAM512K [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 BIG_BRAM512K ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Single_Port_RAM} \
   CONFIG.Port_B_Clock {0} \
   CONFIG.Port_B_Enable_Rate {0} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Core {false} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {65536} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $BIG_BRAM512K

  # Create instance: arbit_brama1, and set properties
  set block_name mayo_bram_arbiter
  set block_cell_name arbit_brama1
  if { [catch {set arbit_brama1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $arbit_brama1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net BIG_BRAM512K_douta [get_bd_pins BIG_BRAM512K/douta] [get_bd_pins arbit_brama1/BRAM_dout]
  connect_bd_net -net BRAM_add_addr_1 [get_bd_pins BRAM_add_addr] [get_bd_pins arbit_brama1/BRAM_add_addr]
  connect_bd_net -net BRAM_add_din_1 [get_bd_pins BRAM_add_din] [get_bd_pins arbit_brama1/BRAM_add_din]
  connect_bd_net -net BRAM_add_en_1 [get_bd_pins BRAM_add_en] [get_bd_pins arbit_brama1/BRAM_add_en]
  connect_bd_net -net BRAM_add_rst1_1 [get_bd_pins BRAM_add_rst1] [get_bd_pins arbit_brama1/BRAM_add_rst]
  connect_bd_net -net BRAM_add_rst_1 [get_bd_pins BRAM_add_rst] [get_bd_pins arbit_brama1/BRAM_hash_rst] [get_bd_pins arbit_brama1/BRAM_neg_en] [get_bd_pins arbit_brama1/BRAM_neg_rst] [get_bd_pins arbit_brama1/BRAM_sam_en] [get_bd_pins arbit_brama1/BRAM_sam_rst] [get_bd_pins arbit_brama1/neg_control] [get_bd_pins arbit_brama1/sam_control]
  connect_bd_net -net BRAM_add_we1_1 [get_bd_pins BRAM_add_we1] [get_bd_pins arbit_brama1/BRAM_add_we]
  connect_bd_net -net BRAM_add_we_1 [get_bd_pins BRAM_add_we] [get_bd_pins arbit_brama1/BRAM_neg_we] [get_bd_pins arbit_brama1/BRAM_sam_we]
  connect_bd_net -net BRAM_key_addr_1 [get_bd_pins BRAM_key_addr] [get_bd_pins arbit_brama1/BRAM_key_addr]
  connect_bd_net -net BRAM_key_din_1 [get_bd_pins BRAM_key_din] [get_bd_pins arbit_brama1/BRAM_key_din]
  connect_bd_net -net BRAM_key_en_1 [get_bd_pins BRAM_key_en] [get_bd_pins arbit_brama1/BRAM_key_en]
  connect_bd_net -net BRAM_key_rst_1 [get_bd_pins BRAM_key_rst] [get_bd_pins arbit_brama1/BRAM_key_rst]
  connect_bd_net -net BRAM_key_we_1 [get_bd_pins BRAM_key_we] [get_bd_pins arbit_brama1/BRAM_key_we]
  connect_bd_net -net BRAM_neg_din_1 [get_bd_pins BRAM_neg_din] [get_bd_pins arbit_brama1/BRAM_neg_addr] [get_bd_pins arbit_brama1/BRAM_neg_din] [get_bd_pins arbit_brama1/BRAM_sam_addr] [get_bd_pins arbit_brama1/BRAM_sam_din]
  connect_bd_net -net BRAM_red_addr_1 [get_bd_pins BRAM_red_addr] [get_bd_pins arbit_brama1/BRAM_red_addr]
  connect_bd_net -net BRAM_red_din_1 [get_bd_pins BRAM_red_din] [get_bd_pins arbit_brama1/BRAM_red_din]
  connect_bd_net -net BRAM_red_en_1 [get_bd_pins BRAM_red_en] [get_bd_pins arbit_brama1/BRAM_red_en]
  connect_bd_net -net BRAM_red_rst_1 [get_bd_pins BRAM_red_rst] [get_bd_pins arbit_brama1/BRAM_red_rst]
  connect_bd_net -net BRAM_red_we_1 [get_bd_pins BRAM_red_we] [get_bd_pins arbit_brama1/BRAM_red_we]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_addr [get_bd_pins BRAM_hash_addr] [get_bd_pins arbit_brama1/BRAM_hash_addr]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_din [get_bd_pins BRAM_hash_din] [get_bd_pins arbit_brama1/BRAM_hash_din]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_en [get_bd_pins BRAM_hash_en] [get_bd_pins arbit_brama1/BRAM_hash_en]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_we [get_bd_pins BRAM_hash_we] [get_bd_pins arbit_brama1/BRAM_hash_we]
  connect_bd_net -net MAYO_SHAKE_1_o_control [get_bd_pins hash_control] [get_bd_pins arbit_brama1/hash_control]
  connect_bd_net -net add_control_1 [get_bd_pins add_control] [get_bd_pins arbit_brama1/add_control]
  connect_bd_net -net arbit_brama1_BRAM_add_dout [get_bd_pins BRAM_add_dout] [get_bd_pins arbit_brama1/BRAM_add_dout]
  connect_bd_net -net arbit_brama1_BRAM_addr [get_bd_pins BIG_BRAM512K/addra] [get_bd_pins arbit_brama1/BRAM_addr]
  connect_bd_net -net arbit_brama1_BRAM_din [get_bd_pins BIG_BRAM512K/dina] [get_bd_pins arbit_brama1/BRAM_din]
  connect_bd_net -net arbit_brama1_BRAM_en [get_bd_pins BIG_BRAM512K/ena] [get_bd_pins arbit_brama1/BRAM_en]
  connect_bd_net -net arbit_brama1_BRAM_hash_dout [get_bd_pins BRAM_hash_dout] [get_bd_pins arbit_brama1/BRAM_hash_dout]
  connect_bd_net -net arbit_brama1_BRAM_key_dout [get_bd_pins BRAM_key_dout] [get_bd_pins arbit_brama1/BRAM_key_dout]
  connect_bd_net -net arbit_brama1_BRAM_lin_dout [get_bd_pins BRAM_lin_dout] [get_bd_pins arbit_brama1/BRAM_lin_dout]
  connect_bd_net -net arbit_brama1_BRAM_red_dout [get_bd_pins BRAM_red_dout] [get_bd_pins arbit_brama1/BRAM_red_dout]
  connect_bd_net -net arbit_brama1_BRAM_we [get_bd_pins BIG_BRAM512K/wea] [get_bd_pins arbit_brama1/BRAM_we]
  connect_bd_net -net bram_control_1 [get_bd_pins bram_control] [get_bd_pins arbit_brama1/bram_control]
  connect_bd_net -net mayo_linear_combinat_0_o_control1a [get_bd_pins lin_control] [get_bd_pins arbit_brama1/lin_control]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_addr [get_bd_pins BRAM_lin_addr] [get_bd_pins arbit_brama1/BRAM_lin_addr]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_din [get_bd_pins BRAM_lin_din] [get_bd_pins arbit_brama1/BRAM_lin_din]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_en [get_bd_pins BRAM_lin_en] [get_bd_pins arbit_brama1/BRAM_lin_en]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_rst [get_bd_pins BRAM_lin_rst] [get_bd_pins arbit_brama1/BRAM_lin_rst]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_we [get_bd_pins BRAM_lin_we] [get_bd_pins arbit_brama1/BRAM_lin_we]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins clka] [get_bd_pins BIG_BRAM512K/clka]
  connect_bd_net -net red_control_1 [get_bd_pins red_control] [get_bd_pins arbit_brama1/red_control]

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
  set clk [ create_bd_port -dir I clk ]
  set done [ create_bd_port -dir O done ]
  set enable [ create_bd_port -dir I enable ]
  set rst [ create_bd_port -dir I rst ]

  # Create instance: BRAM_big
  create_hier_cell_BRAM_big [current_bd_instance .] BRAM_big

  # Create instance: BRAM_small
  create_hier_cell_BRAM_small [current_bd_instance .] BRAM_small

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

  # Create instance: MAYO_KEYGEN_FSM_0, and set properties
  set block_name MAYO_KEYGEN_FSM
  set block_cell_name MAYO_KEYGEN_FSM_0
  if { [catch {set MAYO_KEYGEN_FSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MAYO_KEYGEN_FSM_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: TRNG
  create_hier_cell_TRNG [current_bd_instance .] TRNG

  # Create instance: hash
  create_hier_cell_hash [current_bd_instance .] hash

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
    set_property -dict [ list \
   CONFIG.BRAM_SIZE {32} \
 ] $mayo_negate_0

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
  
  # Create port connections
  connect_bd_net -net BRAM0_dout_1 [get_bd_pins BRAM_small/BRAM_hash_dout] [get_bd_pins hash/BRAM0_dout]
  connect_bd_net -net BRAM_big_BRAM_add_dout [get_bd_pins BRAM_big/BRAM_add_dout] [get_bd_pins mayo_add_vectors_0/i_memc_dout]
  connect_bd_net -net BRAM_big_BRAM_red_dout [get_bd_pins BRAM_big/BRAM_red_dout] [get_bd_pins mayo_reduce_0/i_dout1]
  connect_bd_net -net BRAM_key_addr1_1 [get_bd_pins BRAM_small/BRAM_key_addr1] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0b_addr]
  connect_bd_net -net BRAM_key_addr_1 [get_bd_pins BRAM_big/BRAM_key_addr] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem1a_addr]
  connect_bd_net -net BRAM_key_rst1_1 [get_bd_pins BRAM_small/BRAM_key_rst1] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0b_rst]
  connect_bd_net -net BRAM_key_rst_1 [get_bd_pins BRAM_big/BRAM_key_rst] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem1a_rst]
  connect_bd_net -net BRAM_key_we_1 [get_bd_pins BRAM_small/BRAM_key_we] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0a_we]
  connect_bd_net -net BRAM_small_BRAM_add_dout [get_bd_pins BRAM_small/BRAM_add_dout] [get_bd_pins mayo_add_vectors_0/i_mema_dout]
  connect_bd_net -net BRAM_small_BRAM_add_dout1 [get_bd_pins BRAM_small/BRAM_add_dout1] [get_bd_pins mayo_add_vectors_0/i_memb_dout]
  connect_bd_net -net Ground0_dout [get_bd_pins BRAM_big/BRAM_add_rst] [get_bd_pins BRAM_small/Zero0] [get_bd_pins Ground0/dout] [get_bd_pins MAYO_KEYGEN_FSM_0/i_debug] [get_bd_pins MAYO_KEYGEN_FSM_0/i_expose]
  connect_bd_net -net Ground32_dout [get_bd_pins BRAM_big/BRAM_neg_din] [get_bd_pins BRAM_small/Zero_32] [get_bd_pins Ground32/dout] [get_bd_pins MAYO_KEYGEN_FSM_0/PUBLIC_KEY_ADDR_I] [get_bd_pins MAYO_KEYGEN_FSM_0/SECRET_KEY_ADDR_I]
  connect_bd_net -net Ground4_dout [get_bd_pins BRAM_big/BRAM_add_we] [get_bd_pins BRAM_small/Zero_4] [get_bd_pins Ground4/dout]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_add_bram_sel [get_bd_pins MAYO_KEYGEN_FSM_0/o_add_bram_sel] [get_bd_pins mayo_add_vectors_0/i_bram_sel]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_add_enable [get_bd_pins MAYO_KEYGEN_FSM_0/o_add_enable] [get_bd_pins mayo_add_vectors_0/i_enable]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_add_out_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_add_out_addr] [get_bd_pins mayo_add_vectors_0/i_out_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_add_v1_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_add_v1_addr] [get_bd_pins mayo_add_vectors_0/i_v1_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_add_v2_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_add_v2_addr] [get_bd_pins mayo_add_vectors_0/i_v2_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_done [get_bd_ports done] [get_bd_pins MAYO_KEYGEN_FSM_0/o_done]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_hash_en [get_bd_pins MAYO_KEYGEN_FSM_0/o_hash_en] [get_bd_pins hash/i_key_en]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_hash_memsel [get_bd_pins MAYO_KEYGEN_FSM_0/o_hash_memsel] [get_bd_pins hash/bram_sel]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_hash_mlen [get_bd_pins MAYO_KEYGEN_FSM_0/o_hash_mlen] [get_bd_pins hash/i_key_mlen]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_hash_olen [get_bd_pins MAYO_KEYGEN_FSM_0/o_hash_olen] [get_bd_pins hash/i_key_olen]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_hash_read_adr [get_bd_pins MAYO_KEYGEN_FSM_0/o_hash_read_adr] [get_bd_pins hash/i_key_read_adr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_hash_write_adr [get_bd_pins MAYO_KEYGEN_FSM_0/o_hash_write_adr] [get_bd_pins hash/i_key_write_adr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_lin_bram_halt [get_bd_pins MAYO_KEYGEN_FSM_0/o_lin_bram_halt] [get_bd_pins mayo_linear_combinat_0/i_bram_halt]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_lin_coeffs_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_lin_coeffs_addr] [get_bd_pins mayo_linear_combinat_0/i_coeffs_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_lin_enable [get_bd_pins MAYO_KEYGEN_FSM_0/o_lin_enable] [get_bd_pins mayo_linear_combinat_0/i_enable]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_lin_len [get_bd_pins MAYO_KEYGEN_FSM_0/o_lin_len] [get_bd_pins mayo_linear_combinat_0/i_len]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_lin_out_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_lin_out_addr] [get_bd_pins mayo_linear_combinat_0/i_out_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_lin_vec_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_lin_vec_addr] [get_bd_pins mayo_linear_combinat_0/i_vec_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0a_addr [get_bd_pins BRAM_small/BRAM_key_addr] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0a_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0a_din [get_bd_pins BRAM_small/BRAM_key_din] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0a_din]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0a_en [get_bd_pins BRAM_small/BRAM_key_en] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0a_en]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0a_rst [get_bd_pins BRAM_small/BRAM_key_rst] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0a_rst]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0b_control [get_bd_pins BRAM_small/bram_control1] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0b_control]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0b_din [get_bd_pins BRAM_small/BRAM_key_din1] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0b_din]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0b_en [get_bd_pins BRAM_small/BRAM_key_en1] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0b_en]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem0b_we [get_bd_pins BRAM_small/BRAM_key_we1] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0b_we]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem1a_din [get_bd_pins BRAM_big/BRAM_key_din] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem1a_din]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem1a_en [get_bd_pins BRAM_big/BRAM_key_en] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem1a_en]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_mem1a_we [get_bd_pins BRAM_big/BRAM_key_we] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem1a_we]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_neg_adr [get_bd_pins MAYO_KEYGEN_FSM_0/o_neg_adr] [get_bd_pins mayo_negate_0/i_adr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_neg_enable [get_bd_pins MAYO_KEYGEN_FSM_0/o_neg_enable] [get_bd_pins mayo_negate_0/i_enable]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_neg_len [get_bd_pins MAYO_KEYGEN_FSM_0/o_neg_len] [get_bd_pins mayo_negate_0/i_len]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_red_adr [get_bd_pins MAYO_KEYGEN_FSM_0/o_red_adr] [get_bd_pins mayo_reduce_0/i_adr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_red_bram_sel [get_bd_pins MAYO_KEYGEN_FSM_0/o_red_bram_sel] [get_bd_pins mayo_reduce_0/i_bram_sel]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_red_enable [get_bd_pins MAYO_KEYGEN_FSM_0/o_red_enable] [get_bd_pins mayo_reduce_0/i_enable]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_red_len [get_bd_pins MAYO_KEYGEN_FSM_0/o_red_len] [get_bd_pins mayo_reduce_0/i_len]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_sam_enable [get_bd_pins MAYO_KEYGEN_FSM_0/o_sam_enable] [get_bd_pins mayo_sample_oil_space_0/i_enable]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_sam_oil_addr [get_bd_pins MAYO_KEYGEN_FSM_0/o_sam_oil_addr] [get_bd_pins mayo_sample_oil_space_0/i_oil_addr]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_trng_data [get_bd_pins MAYO_KEYGEN_FSM_0/o_trng_data] [get_bd_pins TRNG/i_trng0_data]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_trng_r [get_bd_pins MAYO_KEYGEN_FSM_0/o_trng_r] [get_bd_pins TRNG/i_trng0_r]
  connect_bd_net -net MAYO_KEYGEN_FSM_0_o_trng_w [get_bd_pins MAYO_KEYGEN_FSM_0/o_trng_w] [get_bd_pins TRNG/i_trng0_w]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_addr [get_bd_pins BRAM_big/BRAM_hash_addr] [get_bd_pins hash/BRAMA_addr]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_din [get_bd_pins BRAM_big/BRAM_hash_din] [get_bd_pins hash/BRAMA_din]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_en [get_bd_pins BRAM_big/BRAM_hash_en] [get_bd_pins hash/BRAMA_en]
  connect_bd_net -net MAYO_SHAKE_1_BRAMA_we [get_bd_pins BRAM_big/BRAM_hash_we] [get_bd_pins hash/BRAMA_we]
  connect_bd_net -net TRNG_o_trng0_data [get_bd_pins MAYO_KEYGEN_FSM_0/i_trng_data] [get_bd_pins TRNG/o_trng0_data]
  connect_bd_net -net TRNG_o_trng0_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_trng_done] [get_bd_pins TRNG/o_trng0_done]
  connect_bd_net -net TRNG_o_trng0_valid [get_bd_pins MAYO_KEYGEN_FSM_0/i_trng_valid] [get_bd_pins TRNG/o_trng0_valid]
  connect_bd_net -net TRNG_o_trng1_data [get_bd_pins TRNG/o_trng1_data] [get_bd_pins mayo_sample_oil_space_0/i_trng_data]
  connect_bd_net -net TRNG_o_trng1_done [get_bd_pins TRNG/o_trng1_done] [get_bd_pins mayo_sample_oil_space_0/i_trng_done]
  connect_bd_net -net TRNG_o_trng1_valid [get_bd_pins TRNG/o_trng1_valid] [get_bd_pins mayo_sample_oil_space_0/i_trng_valid]
  connect_bd_net -net add_control_1 [get_bd_pins BRAM_big/add_control] [get_bd_pins mayo_add_vectors_0/o_controlc]
  connect_bd_net -net arbit_brama0_BRAM_key_dout [get_bd_pins BRAM_small/BRAM_key_dout] [get_bd_pins MAYO_KEYGEN_FSM_0/i_mem0a_dout]
  connect_bd_net -net arbit_brama0_BRAM_lin_dout [get_bd_pins BRAM_small/BRAM_lin_dout] [get_bd_pins mayo_linear_combinat_0/i_mem0a_dout]
  connect_bd_net -net arbit_brama0_BRAM_neg_dout [get_bd_pins BRAM_small/BRAM_neg_dout] [get_bd_pins mayo_negate_0/i_doutb]
  connect_bd_net -net arbit_brama0_BRAM_red_dout [get_bd_pins BRAM_small/BRAM_red_dout] [get_bd_pins mayo_reduce_0/i_dout0]
  connect_bd_net -net arbit_brama1_BRAM_hash_dout [get_bd_pins BRAM_big/BRAM_hash_dout] [get_bd_pins hash/BRAMA_dout]
  connect_bd_net -net arbit_brama1_BRAM_key_dout [get_bd_pins BRAM_big/BRAM_key_dout] [get_bd_pins MAYO_KEYGEN_FSM_0/i_mem1a_dout]
  connect_bd_net -net arbit_brama1_BRAM_lin_dout [get_bd_pins BRAM_big/BRAM_lin_dout] [get_bd_pins mayo_linear_combinat_0/i_mem1a_dout]
  connect_bd_net -net arbit_bramb0_BRAM_key_dout [get_bd_pins BRAM_small/BRAM_key_dout1] [get_bd_pins MAYO_KEYGEN_FSM_0/i_mem0b_dout]
  connect_bd_net -net arbit_bramb0_BRAM_sam_dout [get_bd_pins BRAM_small/BRAM_sam_dout1] [get_bd_pins mayo_sample_oil_space_0/i_memb_dout]
  connect_bd_net -net bram_control_1 [get_bd_pins BRAM_big/bram_control] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem1a_control]
  connect_bd_net -net bram_control_2 [get_bd_pins BRAM_small/bram_control] [get_bd_pins MAYO_KEYGEN_FSM_0/o_mem0a_control]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins BRAM_big/clka] [get_bd_pins BRAM_small/clkb] [get_bd_pins MAYO_KEYGEN_FSM_0/CLK] [get_bd_pins TRNG/clk] [get_bd_pins hash/clk] [get_bd_pins mayo_add_vectors_0/i_clk] [get_bd_pins mayo_linear_combinat_0/i_clk] [get_bd_pins mayo_negate_0/i_clk] [get_bd_pins mayo_reduce_0/i_clk] [get_bd_pins mayo_sample_oil_space_0/i_clk]
  connect_bd_net -net enable_1 [get_bd_ports enable] [get_bd_pins MAYO_KEYGEN_FSM_0/ENABLE]
  connect_bd_net -net hash_BRAM0_addr [get_bd_pins BRAM_small/BRAM_hash_addr] [get_bd_pins hash/BRAM0_addr]
  connect_bd_net -net hash_BRAM0_control [get_bd_pins BRAM_small/hash_control] [get_bd_pins hash/BRAM0_control]
  connect_bd_net -net hash_BRAM0_din [get_bd_pins BRAM_small/BRAM_hash_din] [get_bd_pins hash/BRAM0_din]
  connect_bd_net -net hash_BRAM0_en [get_bd_pins BRAM_small/BRAM_hash_en] [get_bd_pins hash/BRAM0_en]
  connect_bd_net -net hash_BRAM0_we [get_bd_pins BRAM_small/BRAM_hash_we1] [get_bd_pins hash/BRAM0_we]
  connect_bd_net -net hash_control_1 [get_bd_pins BRAM_big/hash_control] [get_bd_pins hash/BRAM1_control]
  connect_bd_net -net mayo_add_vectors_0_o_controla [get_bd_pins BRAM_small/add_control] [get_bd_pins mayo_add_vectors_0/o_controla]
  connect_bd_net -net mayo_add_vectors_0_o_controlb [get_bd_pins BRAM_small/add_control1] [get_bd_pins mayo_add_vectors_0/o_controlb]
  connect_bd_net -net mayo_add_vectors_0_o_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_add_done] [get_bd_pins mayo_add_vectors_0/o_done]
  connect_bd_net -net mayo_add_vectors_0_o_mema_addr [get_bd_pins BRAM_small/BRAM_add_addr] [get_bd_pins mayo_add_vectors_0/o_mema_addr]
  connect_bd_net -net mayo_add_vectors_0_o_mema_din [get_bd_pins BRAM_small/BRAM_add_din] [get_bd_pins mayo_add_vectors_0/o_mema_din]
  connect_bd_net -net mayo_add_vectors_0_o_mema_en [get_bd_pins BRAM_small/BRAM_add_en] [get_bd_pins mayo_add_vectors_0/o_mema_en]
  connect_bd_net -net mayo_add_vectors_0_o_mema_rst [get_bd_pins BRAM_small/BRAM_add_rst] [get_bd_pins mayo_add_vectors_0/o_mema_rst]
  connect_bd_net -net mayo_add_vectors_0_o_mema_we [get_bd_pins BRAM_small/BRAM_add_we] [get_bd_pins mayo_add_vectors_0/o_mema_we]
  connect_bd_net -net mayo_add_vectors_0_o_memb_addr [get_bd_pins BRAM_small/BRAM_add_addr1] [get_bd_pins mayo_add_vectors_0/o_memb_addr]
  connect_bd_net -net mayo_add_vectors_0_o_memb_din [get_bd_pins BRAM_small/BRAM_add_din1] [get_bd_pins mayo_add_vectors_0/o_memb_din]
  connect_bd_net -net mayo_add_vectors_0_o_memb_en [get_bd_pins BRAM_small/BRAM_add_en1] [get_bd_pins mayo_add_vectors_0/o_memb_en]
  connect_bd_net -net mayo_add_vectors_0_o_memb_rst [get_bd_pins BRAM_small/BRAM_add_rst1] [get_bd_pins mayo_add_vectors_0/o_memb_rst]
  connect_bd_net -net mayo_add_vectors_0_o_memb_we [get_bd_pins BRAM_small/BRAM_add_we1] [get_bd_pins mayo_add_vectors_0/o_memb_we]
  connect_bd_net -net mayo_add_vectors_0_o_memc_addr [get_bd_pins BRAM_big/BRAM_add_addr] [get_bd_pins mayo_add_vectors_0/o_memc_addr]
  connect_bd_net -net mayo_add_vectors_0_o_memc_din [get_bd_pins BRAM_big/BRAM_add_din] [get_bd_pins mayo_add_vectors_0/o_memc_din]
  connect_bd_net -net mayo_add_vectors_0_o_memc_en [get_bd_pins BRAM_big/BRAM_add_en] [get_bd_pins mayo_add_vectors_0/o_memc_en]
  connect_bd_net -net mayo_add_vectors_0_o_memc_rst [get_bd_pins BRAM_big/BRAM_add_rst1] [get_bd_pins mayo_add_vectors_0/o_memc_rst]
  connect_bd_net -net mayo_add_vectors_0_o_memc_we [get_bd_pins BRAM_big/BRAM_add_we1] [get_bd_pins mayo_add_vectors_0/o_memc_we]
  connect_bd_net -net mayo_bram_arbiter_1_BRAM_lin_dout [get_bd_pins BRAM_small/BRAM_lin_dout1] [get_bd_pins mayo_linear_combinat_0/i_mem0b_dout]
  connect_bd_net -net mayo_hash_arbiter_0_o_key_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_hash_done] [get_bd_pins hash/o_key_done]
  connect_bd_net -net mayo_hash_arbiter_0_o_key_dyn_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_hash_dyn_done] [get_bd_pins hash/o_key_dyn_done]
  connect_bd_net -net mayo_linear_combinat_0_o_control0a [get_bd_pins BRAM_small/lin_control] [get_bd_pins mayo_linear_combinat_0/o_control0a]
  connect_bd_net -net mayo_linear_combinat_0_o_control0b [get_bd_pins BRAM_small/lin_control1] [get_bd_pins mayo_linear_combinat_0/o_control0b]
  connect_bd_net -net mayo_linear_combinat_0_o_control1a [get_bd_pins BRAM_big/lin_control] [get_bd_pins mayo_linear_combinat_0/o_control1a]
  connect_bd_net -net mayo_linear_combinat_0_o_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_lin_done] [get_bd_pins mayo_linear_combinat_0/o_done]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_addr [get_bd_pins BRAM_small/BRAM_lin_addr] [get_bd_pins mayo_linear_combinat_0/o_mem0a_addr]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_din [get_bd_pins BRAM_small/BRAM_lin_din] [get_bd_pins mayo_linear_combinat_0/o_mem0a_din]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_en [get_bd_pins BRAM_small/BRAM_lin_en] [get_bd_pins mayo_linear_combinat_0/o_mem0a_en]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_rst [get_bd_pins BRAM_small/BRAM_lin_rst] [get_bd_pins mayo_linear_combinat_0/o_mem0a_rst]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0a_we [get_bd_pins BRAM_small/BRAM_lin_we] [get_bd_pins mayo_linear_combinat_0/o_mem0a_we]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_addr [get_bd_pins BRAM_small/BRAM_lin_addr1] [get_bd_pins mayo_linear_combinat_0/o_mem0b_addr]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_din [get_bd_pins BRAM_small/BRAM_lin_din1] [get_bd_pins mayo_linear_combinat_0/o_mem0b_din]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_en [get_bd_pins BRAM_small/BRAM_lin_en1] [get_bd_pins mayo_linear_combinat_0/o_mem0b_en]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_rst [get_bd_pins BRAM_small/BRAM_lin_rst1] [get_bd_pins mayo_linear_combinat_0/o_mem0b_rst]
  connect_bd_net -net mayo_linear_combinat_0_o_mem0b_we [get_bd_pins BRAM_small/BRAM_lin_we1] [get_bd_pins mayo_linear_combinat_0/o_mem0b_we]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_addr [get_bd_pins BRAM_big/BRAM_lin_addr] [get_bd_pins mayo_linear_combinat_0/o_mem1a_addr]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_din [get_bd_pins BRAM_big/BRAM_lin_din] [get_bd_pins mayo_linear_combinat_0/o_mem1a_din]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_en [get_bd_pins BRAM_big/BRAM_lin_en] [get_bd_pins mayo_linear_combinat_0/o_mem1a_en]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_rst [get_bd_pins BRAM_big/BRAM_lin_rst] [get_bd_pins mayo_linear_combinat_0/o_mem1a_rst]
  connect_bd_net -net mayo_linear_combinat_0_o_mem1a_we [get_bd_pins BRAM_big/BRAM_lin_we] [get_bd_pins mayo_linear_combinat_0/o_mem1a_we]
  connect_bd_net -net mayo_negate_0_o_addrb [get_bd_pins BRAM_small/BRAM_neg_addr] [get_bd_pins mayo_negate_0/o_addrb]
  connect_bd_net -net mayo_negate_0_o_control [get_bd_pins BRAM_small/neg_control] [get_bd_pins mayo_negate_0/o_control]
  connect_bd_net -net mayo_negate_0_o_dinb [get_bd_pins BRAM_small/BRAM_neg_din] [get_bd_pins mayo_negate_0/o_dinb]
  connect_bd_net -net mayo_negate_0_o_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_neg_done] [get_bd_pins mayo_negate_0/o_done]
  connect_bd_net -net mayo_negate_0_o_enb [get_bd_pins BRAM_small/BRAM_neg_en] [get_bd_pins mayo_negate_0/o_enb]
  connect_bd_net -net mayo_negate_0_o_rstb [get_bd_pins BRAM_small/BRAM_neg_rst] [get_bd_pins mayo_negate_0/o_rstb]
  connect_bd_net -net mayo_negate_0_o_web [get_bd_pins BRAM_small/BRAM_neg_we] [get_bd_pins mayo_negate_0/o_web]
  connect_bd_net -net mayo_reduce_0_o_addr1 [get_bd_pins BRAM_big/BRAM_red_addr] [get_bd_pins mayo_reduce_0/o_addr1]
  connect_bd_net -net mayo_reduce_0_o_addrb [get_bd_pins BRAM_small/BRAM_red_addr] [get_bd_pins mayo_reduce_0/o_addr0]
  connect_bd_net -net mayo_reduce_0_o_control [get_bd_pins BRAM_small/red_control] [get_bd_pins mayo_reduce_0/o_control0]
  connect_bd_net -net mayo_reduce_0_o_control1 [get_bd_pins BRAM_big/red_control] [get_bd_pins mayo_reduce_0/o_control1]
  connect_bd_net -net mayo_reduce_0_o_din0 [get_bd_pins BRAM_small/BRAM_red_din] [get_bd_pins mayo_reduce_0/o_din0]
  connect_bd_net -net mayo_reduce_0_o_din1 [get_bd_pins BRAM_big/BRAM_red_din] [get_bd_pins mayo_reduce_0/o_din1]
  connect_bd_net -net mayo_reduce_0_o_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_red_done] [get_bd_pins mayo_reduce_0/o_done]
  connect_bd_net -net mayo_reduce_0_o_en1 [get_bd_pins BRAM_big/BRAM_red_en] [get_bd_pins mayo_reduce_0/o_en1]
  connect_bd_net -net mayo_reduce_0_o_enb [get_bd_pins BRAM_small/BRAM_red_en] [get_bd_pins mayo_reduce_0/o_en0]
  connect_bd_net -net mayo_reduce_0_o_rst1 [get_bd_pins BRAM_big/BRAM_red_rst] [get_bd_pins mayo_reduce_0/o_rst1]
  connect_bd_net -net mayo_reduce_0_o_rstb [get_bd_pins BRAM_small/BRAM_red_rst] [get_bd_pins mayo_reduce_0/o_rst0]
  connect_bd_net -net mayo_reduce_0_o_we1 [get_bd_pins BRAM_big/BRAM_red_we] [get_bd_pins mayo_reduce_0/o_we1]
  connect_bd_net -net mayo_reduce_0_o_web [get_bd_pins BRAM_small/BRAM_red_we] [get_bd_pins mayo_reduce_0/o_we0]
  connect_bd_net -net mayo_sample_oil_space_0_o_controlb [get_bd_pins BRAM_small/sam_control1] [get_bd_pins mayo_sample_oil_space_0/o_controlb]
  connect_bd_net -net mayo_sample_oil_space_0_o_done [get_bd_pins MAYO_KEYGEN_FSM_0/i_sam_done] [get_bd_pins mayo_sample_oil_space_0/o_done]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_addr [get_bd_pins BRAM_small/BRAM_sam_addr1] [get_bd_pins mayo_sample_oil_space_0/o_memb_addr]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_din [get_bd_pins BRAM_small/BRAM_sam_din1] [get_bd_pins mayo_sample_oil_space_0/o_memb_din]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_en [get_bd_pins BRAM_small/BRAM_sam_en1] [get_bd_pins mayo_sample_oil_space_0/o_memb_en]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_rst [get_bd_pins BRAM_small/BRAM_sam_rst1] [get_bd_pins mayo_sample_oil_space_0/o_memb_rst]
  connect_bd_net -net mayo_sample_oil_space_0_o_memb_we [get_bd_pins BRAM_small/BRAM_sam_we1] [get_bd_pins mayo_sample_oil_space_0/o_memb_we]
  connect_bd_net -net mayo_sample_oil_space_0_o_trng_data [get_bd_pins TRNG/i_trng1_data1] [get_bd_pins mayo_sample_oil_space_0/o_trng_data]
  connect_bd_net -net mayo_sample_oil_space_0_o_trng_r [get_bd_pins TRNG/i_trng1_r] [get_bd_pins mayo_sample_oil_space_0/o_trng_r]
  connect_bd_net -net mayo_sample_oil_space_0_o_trng_sel [get_bd_pins TRNG/i_trng_sel] [get_bd_pins mayo_sample_oil_space_0/o_trng_sel]
  connect_bd_net -net mayo_sample_oil_space_0_o_trng_w [get_bd_pins TRNG/i_trng1_w] [get_bd_pins mayo_sample_oil_space_0/o_trng_w]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins BRAM_small/rst] [get_bd_pins MAYO_KEYGEN_FSM_0/RESET] [get_bd_pins TRNG/rst] [get_bd_pins hash/rst] [get_bd_pins mayo_add_vectors_0/rst] [get_bd_pins mayo_linear_combinat_0/rst] [get_bd_pins mayo_negate_0/rst] [get_bd_pins mayo_reduce_0/rst] [get_bd_pins mayo_sample_oil_space_0/rst]

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



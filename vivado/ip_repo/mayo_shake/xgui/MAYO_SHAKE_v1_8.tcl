# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_BRAMSIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_READ_DESC_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WRITE_DESC_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_BRAMSIZE { PARAM_VALUE.C_BRAMSIZE } {
	# Procedure called to update C_BRAMSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BRAMSIZE { PARAM_VALUE.C_BRAMSIZE } {
	# Procedure called to validate C_BRAMSIZE
	return true
}

proc update_PARAM_VALUE.C_READ_DESC_SIZE { PARAM_VALUE.C_READ_DESC_SIZE } {
	# Procedure called to update C_READ_DESC_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_READ_DESC_SIZE { PARAM_VALUE.C_READ_DESC_SIZE } {
	# Procedure called to validate C_READ_DESC_SIZE
	return true
}

proc update_PARAM_VALUE.C_WRITE_DESC_SIZE { PARAM_VALUE.C_WRITE_DESC_SIZE } {
	# Procedure called to update C_WRITE_DESC_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WRITE_DESC_SIZE { PARAM_VALUE.C_WRITE_DESC_SIZE } {
	# Procedure called to validate C_WRITE_DESC_SIZE
	return true
}


proc update_MODELPARAM_VALUE.C_BRAMSIZE { MODELPARAM_VALUE.C_BRAMSIZE PARAM_VALUE.C_BRAMSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BRAMSIZE}] ${MODELPARAM_VALUE.C_BRAMSIZE}
}

proc update_MODELPARAM_VALUE.C_WRITE_DESC_SIZE { MODELPARAM_VALUE.C_WRITE_DESC_SIZE PARAM_VALUE.C_WRITE_DESC_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WRITE_DESC_SIZE}] ${MODELPARAM_VALUE.C_WRITE_DESC_SIZE}
}

proc update_MODELPARAM_VALUE.C_READ_DESC_SIZE { MODELPARAM_VALUE.C_READ_DESC_SIZE PARAM_VALUE.C_READ_DESC_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_READ_DESC_SIZE}] ${MODELPARAM_VALUE.C_READ_DESC_SIZE}
}


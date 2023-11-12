# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BRAM_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.BRAM_SIZE { PARAM_VALUE.BRAM_SIZE } {
	# Procedure called to update BRAM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_SIZE { PARAM_VALUE.BRAM_SIZE } {
	# Procedure called to validate BRAM_SIZE
	return true
}


proc update_MODELPARAM_VALUE.BRAM_SIZE { MODELPARAM_VALUE.BRAM_SIZE PARAM_VALUE.BRAM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_SIZE}] ${MODELPARAM_VALUE.BRAM_SIZE}
}


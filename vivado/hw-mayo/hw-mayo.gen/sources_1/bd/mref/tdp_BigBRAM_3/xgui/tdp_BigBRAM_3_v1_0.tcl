# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NB_COL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAM_PERFORMANCE" -parent ${Page_0}


}

proc update_PARAM_VALUE.COL_WIDTH { PARAM_VALUE.COL_WIDTH } {
	# Procedure called to update COL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COL_WIDTH { PARAM_VALUE.COL_WIDTH } {
	# Procedure called to validate COL_WIDTH
	return true
}

proc update_PARAM_VALUE.NB_COL { PARAM_VALUE.NB_COL } {
	# Procedure called to update NB_COL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NB_COL { PARAM_VALUE.NB_COL } {
	# Procedure called to validate NB_COL
	return true
}

proc update_PARAM_VALUE.RAM_PERFORMANCE { PARAM_VALUE.RAM_PERFORMANCE } {
	# Procedure called to update RAM_PERFORMANCE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_PERFORMANCE { PARAM_VALUE.RAM_PERFORMANCE } {
	# Procedure called to validate RAM_PERFORMANCE
	return true
}


proc update_MODELPARAM_VALUE.NB_COL { MODELPARAM_VALUE.NB_COL PARAM_VALUE.NB_COL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NB_COL}] ${MODELPARAM_VALUE.NB_COL}
}

proc update_MODELPARAM_VALUE.COL_WIDTH { MODELPARAM_VALUE.COL_WIDTH PARAM_VALUE.COL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COL_WIDTH}] ${MODELPARAM_VALUE.COL_WIDTH}
}

proc update_MODELPARAM_VALUE.RAM_PERFORMANCE { MODELPARAM_VALUE.RAM_PERFORMANCE PARAM_VALUE.RAM_PERFORMANCE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_PERFORMANCE}] ${MODELPARAM_VALUE.RAM_PERFORMANCE}
}


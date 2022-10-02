# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IS_SIM" -parent ${Page_0}


}

proc update_PARAM_VALUE.IS_SIM { PARAM_VALUE.IS_SIM } {
	# Procedure called to update IS_SIM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IS_SIM { PARAM_VALUE.IS_SIM } {
	# Procedure called to validate IS_SIM
	return true
}


proc update_MODELPARAM_VALUE.IS_SIM { MODELPARAM_VALUE.IS_SIM PARAM_VALUE.IS_SIM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IS_SIM}] ${MODELPARAM_VALUE.IS_SIM}
}


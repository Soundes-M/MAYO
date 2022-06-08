# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IS_SIM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_CELLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_INV_DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_INV_INC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_INV_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POST_PROC_EN" -parent ${Page_0}


}

proc update_PARAM_VALUE.IS_SIM { PARAM_VALUE.IS_SIM } {
	# Procedure called to update IS_SIM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IS_SIM { PARAM_VALUE.IS_SIM } {
	# Procedure called to validate IS_SIM
	return true
}

proc update_PARAM_VALUE.NUM_CELLS { PARAM_VALUE.NUM_CELLS } {
	# Procedure called to update NUM_CELLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_CELLS { PARAM_VALUE.NUM_CELLS } {
	# Procedure called to validate NUM_CELLS
	return true
}

proc update_PARAM_VALUE.NUM_INV_DELAY { PARAM_VALUE.NUM_INV_DELAY } {
	# Procedure called to update NUM_INV_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_INV_DELAY { PARAM_VALUE.NUM_INV_DELAY } {
	# Procedure called to validate NUM_INV_DELAY
	return true
}

proc update_PARAM_VALUE.NUM_INV_INC { PARAM_VALUE.NUM_INV_INC } {
	# Procedure called to update NUM_INV_INC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_INV_INC { PARAM_VALUE.NUM_INV_INC } {
	# Procedure called to validate NUM_INV_INC
	return true
}

proc update_PARAM_VALUE.NUM_INV_START { PARAM_VALUE.NUM_INV_START } {
	# Procedure called to update NUM_INV_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_INV_START { PARAM_VALUE.NUM_INV_START } {
	# Procedure called to validate NUM_INV_START
	return true
}

proc update_PARAM_VALUE.POST_PROC_EN { PARAM_VALUE.POST_PROC_EN } {
	# Procedure called to update POST_PROC_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POST_PROC_EN { PARAM_VALUE.POST_PROC_EN } {
	# Procedure called to validate POST_PROC_EN
	return true
}


proc update_MODELPARAM_VALUE.NUM_CELLS { MODELPARAM_VALUE.NUM_CELLS PARAM_VALUE.NUM_CELLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_CELLS}] ${MODELPARAM_VALUE.NUM_CELLS}
}

proc update_MODELPARAM_VALUE.NUM_INV_START { MODELPARAM_VALUE.NUM_INV_START PARAM_VALUE.NUM_INV_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_INV_START}] ${MODELPARAM_VALUE.NUM_INV_START}
}

proc update_MODELPARAM_VALUE.NUM_INV_INC { MODELPARAM_VALUE.NUM_INV_INC PARAM_VALUE.NUM_INV_INC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_INV_INC}] ${MODELPARAM_VALUE.NUM_INV_INC}
}

proc update_MODELPARAM_VALUE.NUM_INV_DELAY { MODELPARAM_VALUE.NUM_INV_DELAY PARAM_VALUE.NUM_INV_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_INV_DELAY}] ${MODELPARAM_VALUE.NUM_INV_DELAY}
}

proc update_MODELPARAM_VALUE.POST_PROC_EN { MODELPARAM_VALUE.POST_PROC_EN PARAM_VALUE.POST_PROC_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POST_PROC_EN}] ${MODELPARAM_VALUE.POST_PROC_EN}
}

proc update_MODELPARAM_VALUE.IS_SIM { MODELPARAM_VALUE.IS_SIM PARAM_VALUE.IS_SIM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IS_SIM}] ${MODELPARAM_VALUE.IS_SIM}
}


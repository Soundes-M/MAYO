# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_BLOCK0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_BLOCK1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_BLOCK2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_BLOCK3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_CONFIG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_CTRL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_KEY7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_RESULT0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_RESULT1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_RESULT2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_RESULT3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AES_128_BIT_KEY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AES_ENCIPHER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEBUG" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_BLOCK0 { PARAM_VALUE.ADDR_BLOCK0 } {
	# Procedure called to update ADDR_BLOCK0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_BLOCK0 { PARAM_VALUE.ADDR_BLOCK0 } {
	# Procedure called to validate ADDR_BLOCK0
	return true
}

proc update_PARAM_VALUE.ADDR_BLOCK1 { PARAM_VALUE.ADDR_BLOCK1 } {
	# Procedure called to update ADDR_BLOCK1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_BLOCK1 { PARAM_VALUE.ADDR_BLOCK1 } {
	# Procedure called to validate ADDR_BLOCK1
	return true
}

proc update_PARAM_VALUE.ADDR_BLOCK2 { PARAM_VALUE.ADDR_BLOCK2 } {
	# Procedure called to update ADDR_BLOCK2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_BLOCK2 { PARAM_VALUE.ADDR_BLOCK2 } {
	# Procedure called to validate ADDR_BLOCK2
	return true
}

proc update_PARAM_VALUE.ADDR_BLOCK3 { PARAM_VALUE.ADDR_BLOCK3 } {
	# Procedure called to update ADDR_BLOCK3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_BLOCK3 { PARAM_VALUE.ADDR_BLOCK3 } {
	# Procedure called to validate ADDR_BLOCK3
	return true
}

proc update_PARAM_VALUE.ADDR_CONFIG { PARAM_VALUE.ADDR_CONFIG } {
	# Procedure called to update ADDR_CONFIG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_CONFIG { PARAM_VALUE.ADDR_CONFIG } {
	# Procedure called to validate ADDR_CONFIG
	return true
}

proc update_PARAM_VALUE.ADDR_CTRL { PARAM_VALUE.ADDR_CTRL } {
	# Procedure called to update ADDR_CTRL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_CTRL { PARAM_VALUE.ADDR_CTRL } {
	# Procedure called to validate ADDR_CTRL
	return true
}

proc update_PARAM_VALUE.ADDR_KEY0 { PARAM_VALUE.ADDR_KEY0 } {
	# Procedure called to update ADDR_KEY0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY0 { PARAM_VALUE.ADDR_KEY0 } {
	# Procedure called to validate ADDR_KEY0
	return true
}

proc update_PARAM_VALUE.ADDR_KEY1 { PARAM_VALUE.ADDR_KEY1 } {
	# Procedure called to update ADDR_KEY1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY1 { PARAM_VALUE.ADDR_KEY1 } {
	# Procedure called to validate ADDR_KEY1
	return true
}

proc update_PARAM_VALUE.ADDR_KEY2 { PARAM_VALUE.ADDR_KEY2 } {
	# Procedure called to update ADDR_KEY2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY2 { PARAM_VALUE.ADDR_KEY2 } {
	# Procedure called to validate ADDR_KEY2
	return true
}

proc update_PARAM_VALUE.ADDR_KEY3 { PARAM_VALUE.ADDR_KEY3 } {
	# Procedure called to update ADDR_KEY3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY3 { PARAM_VALUE.ADDR_KEY3 } {
	# Procedure called to validate ADDR_KEY3
	return true
}

proc update_PARAM_VALUE.ADDR_KEY4 { PARAM_VALUE.ADDR_KEY4 } {
	# Procedure called to update ADDR_KEY4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY4 { PARAM_VALUE.ADDR_KEY4 } {
	# Procedure called to validate ADDR_KEY4
	return true
}

proc update_PARAM_VALUE.ADDR_KEY5 { PARAM_VALUE.ADDR_KEY5 } {
	# Procedure called to update ADDR_KEY5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY5 { PARAM_VALUE.ADDR_KEY5 } {
	# Procedure called to validate ADDR_KEY5
	return true
}

proc update_PARAM_VALUE.ADDR_KEY6 { PARAM_VALUE.ADDR_KEY6 } {
	# Procedure called to update ADDR_KEY6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY6 { PARAM_VALUE.ADDR_KEY6 } {
	# Procedure called to validate ADDR_KEY6
	return true
}

proc update_PARAM_VALUE.ADDR_KEY7 { PARAM_VALUE.ADDR_KEY7 } {
	# Procedure called to update ADDR_KEY7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_KEY7 { PARAM_VALUE.ADDR_KEY7 } {
	# Procedure called to validate ADDR_KEY7
	return true
}

proc update_PARAM_VALUE.ADDR_RESULT0 { PARAM_VALUE.ADDR_RESULT0 } {
	# Procedure called to update ADDR_RESULT0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_RESULT0 { PARAM_VALUE.ADDR_RESULT0 } {
	# Procedure called to validate ADDR_RESULT0
	return true
}

proc update_PARAM_VALUE.ADDR_RESULT1 { PARAM_VALUE.ADDR_RESULT1 } {
	# Procedure called to update ADDR_RESULT1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_RESULT1 { PARAM_VALUE.ADDR_RESULT1 } {
	# Procedure called to validate ADDR_RESULT1
	return true
}

proc update_PARAM_VALUE.ADDR_RESULT2 { PARAM_VALUE.ADDR_RESULT2 } {
	# Procedure called to update ADDR_RESULT2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_RESULT2 { PARAM_VALUE.ADDR_RESULT2 } {
	# Procedure called to validate ADDR_RESULT2
	return true
}

proc update_PARAM_VALUE.ADDR_RESULT3 { PARAM_VALUE.ADDR_RESULT3 } {
	# Procedure called to update ADDR_RESULT3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_RESULT3 { PARAM_VALUE.ADDR_RESULT3 } {
	# Procedure called to validate ADDR_RESULT3
	return true
}

proc update_PARAM_VALUE.AES_128_BIT_KEY { PARAM_VALUE.AES_128_BIT_KEY } {
	# Procedure called to update AES_128_BIT_KEY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AES_128_BIT_KEY { PARAM_VALUE.AES_128_BIT_KEY } {
	# Procedure called to validate AES_128_BIT_KEY
	return true
}

proc update_PARAM_VALUE.AES_ENCIPHER { PARAM_VALUE.AES_ENCIPHER } {
	# Procedure called to update AES_ENCIPHER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AES_ENCIPHER { PARAM_VALUE.AES_ENCIPHER } {
	# Procedure called to validate AES_ENCIPHER
	return true
}

proc update_PARAM_VALUE.DEBUG { PARAM_VALUE.DEBUG } {
	# Procedure called to update DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG { PARAM_VALUE.DEBUG } {
	# Procedure called to validate DEBUG
	return true
}


proc update_MODELPARAM_VALUE.DEBUG { MODELPARAM_VALUE.DEBUG PARAM_VALUE.DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEBUG}] ${MODELPARAM_VALUE.DEBUG}
}

proc update_MODELPARAM_VALUE.ADDR_CTRL { MODELPARAM_VALUE.ADDR_CTRL PARAM_VALUE.ADDR_CTRL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_CTRL}] ${MODELPARAM_VALUE.ADDR_CTRL}
}

proc update_MODELPARAM_VALUE.ADDR_CONFIG { MODELPARAM_VALUE.ADDR_CONFIG PARAM_VALUE.ADDR_CONFIG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_CONFIG}] ${MODELPARAM_VALUE.ADDR_CONFIG}
}

proc update_MODELPARAM_VALUE.ADDR_KEY0 { MODELPARAM_VALUE.ADDR_KEY0 PARAM_VALUE.ADDR_KEY0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY0}] ${MODELPARAM_VALUE.ADDR_KEY0}
}

proc update_MODELPARAM_VALUE.ADDR_KEY1 { MODELPARAM_VALUE.ADDR_KEY1 PARAM_VALUE.ADDR_KEY1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY1}] ${MODELPARAM_VALUE.ADDR_KEY1}
}

proc update_MODELPARAM_VALUE.ADDR_KEY2 { MODELPARAM_VALUE.ADDR_KEY2 PARAM_VALUE.ADDR_KEY2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY2}] ${MODELPARAM_VALUE.ADDR_KEY2}
}

proc update_MODELPARAM_VALUE.ADDR_KEY3 { MODELPARAM_VALUE.ADDR_KEY3 PARAM_VALUE.ADDR_KEY3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY3}] ${MODELPARAM_VALUE.ADDR_KEY3}
}

proc update_MODELPARAM_VALUE.ADDR_KEY4 { MODELPARAM_VALUE.ADDR_KEY4 PARAM_VALUE.ADDR_KEY4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY4}] ${MODELPARAM_VALUE.ADDR_KEY4}
}

proc update_MODELPARAM_VALUE.ADDR_KEY5 { MODELPARAM_VALUE.ADDR_KEY5 PARAM_VALUE.ADDR_KEY5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY5}] ${MODELPARAM_VALUE.ADDR_KEY5}
}

proc update_MODELPARAM_VALUE.ADDR_KEY6 { MODELPARAM_VALUE.ADDR_KEY6 PARAM_VALUE.ADDR_KEY6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY6}] ${MODELPARAM_VALUE.ADDR_KEY6}
}

proc update_MODELPARAM_VALUE.ADDR_KEY7 { MODELPARAM_VALUE.ADDR_KEY7 PARAM_VALUE.ADDR_KEY7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_KEY7}] ${MODELPARAM_VALUE.ADDR_KEY7}
}

proc update_MODELPARAM_VALUE.ADDR_BLOCK0 { MODELPARAM_VALUE.ADDR_BLOCK0 PARAM_VALUE.ADDR_BLOCK0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_BLOCK0}] ${MODELPARAM_VALUE.ADDR_BLOCK0}
}

proc update_MODELPARAM_VALUE.ADDR_BLOCK1 { MODELPARAM_VALUE.ADDR_BLOCK1 PARAM_VALUE.ADDR_BLOCK1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_BLOCK1}] ${MODELPARAM_VALUE.ADDR_BLOCK1}
}

proc update_MODELPARAM_VALUE.ADDR_BLOCK2 { MODELPARAM_VALUE.ADDR_BLOCK2 PARAM_VALUE.ADDR_BLOCK2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_BLOCK2}] ${MODELPARAM_VALUE.ADDR_BLOCK2}
}

proc update_MODELPARAM_VALUE.ADDR_BLOCK3 { MODELPARAM_VALUE.ADDR_BLOCK3 PARAM_VALUE.ADDR_BLOCK3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_BLOCK3}] ${MODELPARAM_VALUE.ADDR_BLOCK3}
}

proc update_MODELPARAM_VALUE.ADDR_RESULT0 { MODELPARAM_VALUE.ADDR_RESULT0 PARAM_VALUE.ADDR_RESULT0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_RESULT0}] ${MODELPARAM_VALUE.ADDR_RESULT0}
}

proc update_MODELPARAM_VALUE.ADDR_RESULT1 { MODELPARAM_VALUE.ADDR_RESULT1 PARAM_VALUE.ADDR_RESULT1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_RESULT1}] ${MODELPARAM_VALUE.ADDR_RESULT1}
}

proc update_MODELPARAM_VALUE.ADDR_RESULT2 { MODELPARAM_VALUE.ADDR_RESULT2 PARAM_VALUE.ADDR_RESULT2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_RESULT2}] ${MODELPARAM_VALUE.ADDR_RESULT2}
}

proc update_MODELPARAM_VALUE.ADDR_RESULT3 { MODELPARAM_VALUE.ADDR_RESULT3 PARAM_VALUE.ADDR_RESULT3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_RESULT3}] ${MODELPARAM_VALUE.ADDR_RESULT3}
}

proc update_MODELPARAM_VALUE.AES_128_BIT_KEY { MODELPARAM_VALUE.AES_128_BIT_KEY PARAM_VALUE.AES_128_BIT_KEY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AES_128_BIT_KEY}] ${MODELPARAM_VALUE.AES_128_BIT_KEY}
}

proc update_MODELPARAM_VALUE.AES_ENCIPHER { MODELPARAM_VALUE.AES_ENCIPHER PARAM_VALUE.AES_ENCIPHER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AES_ENCIPHER}] ${MODELPARAM_VALUE.AES_ENCIPHER}
}


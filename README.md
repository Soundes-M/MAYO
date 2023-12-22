
# MAYO 
A hardware implementation of the MAYO PQ Signature.  
```
░░░    ░░░  ░░░░░  ░░    ░░  ░░░░░░  
▒▒▒▒  ▒▒▒▒ ▒▒   ▒▒  ▒▒  ▒▒  ▒▒    ▒▒ 
▒▒ ▒▒▒▒ ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒   ▒▒    ▒▒ 
▓▓  ▓▓  ▓▓ ▓▓   ▓▓    ▓▓    ▓▓    ▓▓ 
██      ██ ██   ██    ██     ██████  
```

For futher information, please refer to the paper: 

  HaMAYO: A Fault-Tolerant Reconfigurable Hardware Implementation of the MAYO Signature Scheme
  
# Board
Digilent Xilinx Zynq-7000 [ZedBoard](https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/zedboard/)

# License
This Hardware IP is private. Please do not share.

# Requirements and tools
_Mind the versions used_
- Vivado & Vitis 2020.2
- VHDL 2000

# Directory Hierarchy:
```
/mayo-c 		MAYO C[Only SW]-Based implementation (AVX Support)
/HLS			HLS-C related projects/sources. [deprecated]
/src			MAYO Custom HW Core
  /c			C/Kernel/Driver Code
  /hdl			HW Core Implementation
/tb 			Testbenchs and other test scripts
/vivado 		Vivado project files (.xdc)
/vitis			Vitis/SDK project files
/misc			Documents and other.

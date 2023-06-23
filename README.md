
# MAYO 
A hardware implementation of the MAYO PQ Signature.  

```
░░░    ░░░  ░░░░░  ░░    ░░  ░░░░░░  
▒▒▒▒  ▒▒▒▒ ▒▒   ▒▒  ▒▒  ▒▒  ▒▒    ▒▒ 
▒▒ ▒▒▒▒ ▒▒ ▒▒▒▒▒▒▒   ▒▒▒▒   ▒▒    ▒▒ 
▓▓  ▓▓  ▓▓ ▓▓   ▓▓    ▓▓    ▓▓    ▓▓ 
██      ██ ██   ██    ██     ██████  
```

# Board
Digilent Xilinx Zynq-7000 [ZedBoard](https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/zedboard/)

# License
This Hardware IP is private. Please do not share.

# Requirements and tools
_Mind the versions used_
- Vivado & Vitis 2020.2
- Yocto @gatesgarth
- [linux-xlx](https://github.com/Xilinx/linux-xlnx) @d25c42dcc2a9
- [u-boot-x](https://github.com/Xilinx/u-boot-xlnx) 

# Directory Hierarchy:
```
/mayo-c 		MAYO C[Only SW]-Based implementation (AVX Support)
/HLS			HLS-C related projects/sources. [deprecated]
/src			MAYO Custom HW Core
  /c			C/Kernel/Driver Code
  /hdl			HW Core Implementation
/tb			Testbenchs and other test scripts
/vivado 		Vivado project files (.xdc)
/vitis			Vitis/SDK project files
/yocto			Yocto Linux project and meta-layers [deprecated]
/misc			Documents and other.

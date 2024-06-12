-makelib ies_lib/xpm -sv \
  "D:/vitis/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vitis/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vitis/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../DataFlowJumpInst.srcs/sources_1/ip/rom0_width8_addra16/sim/rom0_width8_addra16.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


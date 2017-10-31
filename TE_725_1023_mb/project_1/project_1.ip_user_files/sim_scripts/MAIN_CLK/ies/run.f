-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/MAIN_CLK/MAIN_CLK_clk_wiz.v" \
  "../../../../project_1.srcs/sources_1/ip/MAIN_CLK/MAIN_CLK.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib


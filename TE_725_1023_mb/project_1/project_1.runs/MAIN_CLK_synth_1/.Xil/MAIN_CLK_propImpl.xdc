set_property SRC_FILE_INFO {cfile:c:/Users/nks/Desktop/TE_725_1023/project_1/project_1.srcs/sources_1/ip/MAIN_CLK/MAIN_CLK.xdc rfile:../../../project_1.srcs/sources_1/ip/MAIN_CLK/MAIN_CLK.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_100m_p17]] 0.1

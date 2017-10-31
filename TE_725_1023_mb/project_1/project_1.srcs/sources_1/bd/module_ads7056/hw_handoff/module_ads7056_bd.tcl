
################################################################
# This is a generated script based on design: module_ads7056
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source module_ads7056_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ADS7056, led, me18

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcsg324-2
}


# CHANGE DESIGN NAME HERE
set design_name module_ads7056

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set spi_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 spi_rtl ]

  # Create ports
  set NCS [ create_bd_port -dir O NCS ]
  set POF_N [ create_bd_port -dir O -from 0 -to 0 POF_N ]
  set POF_P [ create_bd_port -dir O -from 0 -to 0 POF_P ]
  set SCK [ create_bd_port -dir O SCK ]
  set SDO [ create_bd_port -dir I SDO ]
  set clock_rtl [ create_bd_port -dir I -type clk clock_rtl ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
CONFIG.PHASE {0.000} \
 ] $clock_rtl
  set led [ create_bd_port -dir O led ]
  set reset_rtl [ create_bd_port -dir I -type rst reset_rtl ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_rtl
  set reset_rtl_0 [ create_bd_port -dir I -type rst reset_rtl_0 ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_rtl_0
  set reset_rtl_0_1 [ create_bd_port -dir I -type rst reset_rtl_0_1 ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_rtl_0_1

  # Create instance: ADS7056_0, and set properties
  set block_name ADS7056
  set block_cell_name ADS7056_0
  if { [catch {set ADS7056_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ADS7056_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {4} \
CONFIG.C_INTERRUPT_PRESENT {1} \
CONFIG.C_IS_DUAL {0} \
 ] $axi_gpio_0

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
CONFIG.C_SCK_RATIO {2} \
CONFIG.C_SHARED_STARTUP {0} \
CONFIG.C_SPI_MEMORY {3} \
CONFIG.C_SPI_MODE {2} \
CONFIG.C_TYPE_OF_AXI4_INTERFACE {0} \
CONFIG.C_USE_STARTUP {0} \
CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_quad_spi_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {372.827} \
CONFIG.CLKOUT1_PHASE_ERROR {301.601} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {10} \
CONFIG.CLKOUT2_JITTER {271.524} \
CONFIG.CLKOUT2_PHASE_ERROR {301.601} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {60} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_JITTER {245.813} \
CONFIG.CLKOUT3_PHASE_ERROR {301.601} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {120} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {96.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {16} \
CONFIG.MMCM_CLKOUT2_DIVIDE {8} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {5} \
CONFIG.NUM_OUT_CLKS {3} \
CONFIG.USE_LOCKED {false} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: led_0, and set properties
  set block_name led
  set block_cell_name led_0
  if { [catch {set led_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $led_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: me18_0, and set properties
  set block_name me18
  set block_cell_name me18_0
  if { [catch {set me18_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $me18_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_CACHE_BYTE_SIZE {32768} \
CONFIG.C_DCACHE_BYTE_SIZE {32768} \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_USE_DCACHE {1} \
CONFIG.C_USE_ICACHE {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
CONFIG.NUM_SI {3} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {3} \
 ] $microblaze_0_xlconcat

  # Create instance: rst_clk_wiz_0_120M, and set properties
  set rst_clk_wiz_0_120M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_120M ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {BUFG} \
 ] $util_ds_buf_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports spi_rtl] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins microblaze_0/M_AXI_DC] [get_bd_intf_pins microblaze_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins microblaze_0/M_AXI_IC] [get_bd_intf_pins microblaze_0_axi_periph/S02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net microblaze_0_mdm_axi [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]

  # Create port connections
  connect_bd_net -net ADS7056_0_clk [get_bd_ports SCK] [get_bd_pins ADS7056_0/clk_out]
  connect_bd_net -net ADS7056_0_cnv [get_bd_ports NCS] [get_bd_pins ADS7056_0/cnv]
  connect_bd_net -net ADS7056_0_data [get_bd_pins ADS7056_0/data] [get_bd_pins me18_0/TxD_data]
  connect_bd_net -net SDO_1 [get_bd_ports SDO] [get_bd_pins ADS7056_0/data_in]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins led_0/control]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In2]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins led_0/clk_led]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins util_ds_buf_1/BUFG_I]
  connect_bd_net -net clock_rtl_1 [get_bd_ports clock_rtl] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net led_0_led [get_bd_ports led] [get_bd_pins led_0/led]
  connect_bd_net -net mdm_1_Interrupt [get_bd_pins mdm_1/Interrupt] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_120M/mb_debug_sys_rst]
  connect_bd_net -net me18_0_tx [get_bd_pins me18_0/tx] [get_bd_pins util_ds_buf_0/OBUF_IN]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out3] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins me18_0/clk2x] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_axi_periph/S01_ACLK] [get_bd_pins microblaze_0_axi_periph/S02_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_120M/slowest_sync_clk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net reset_rtl_0_1 [get_bd_ports reset_rtl_0] [get_bd_pins clk_wiz_0/reset]
  connect_bd_net -net reset_rtl_0_1_1 [get_bd_ports reset_rtl_0_1] [get_bd_pins rst_clk_wiz_0_120M/ext_reset_in]
  connect_bd_net -net reset_rtl_1 [get_bd_ports reset_rtl] [get_bd_pins ADS7056_0/rst] [get_bd_pins me18_0/TxD_start]
  connect_bd_net -net rst_clk_wiz_0_120M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_120M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_120M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_120M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_120M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_0_120M/mb_reset]
  connect_bd_net -net rst_clk_wiz_0_120M_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins microblaze_0_axi_periph/S01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S02_ARESETN] [get_bd_pins rst_clk_wiz_0_120M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_N [get_bd_ports POF_N] [get_bd_pins util_ds_buf_0/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_P [get_bd_ports POF_P] [get_bd_pins util_ds_buf_0/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_1_BUFG_O [get_bd_pins ADS7056_0/clk_60m] [get_bd_pins util_ds_buf_1/BUFG_O]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port reset_rtl -pg 1 -y 830 -defaultsOSRD
preplace port SDO -pg 1 -y 970 -defaultsOSRD
preplace port led -pg 1 -y 780 -defaultsOSRD
preplace port NCS -pg 1 -y 910 -defaultsOSRD
preplace port reset_rtl_0_1 -pg 1 -y 430 -defaultsOSRD
preplace port SCK -pg 1 -y 890 -defaultsOSRD
preplace port reset_rtl_0 -pg 1 -y 890 -defaultsOSRD
preplace port clock_rtl -pg 1 -y 910 -defaultsOSRD
preplace port spi_rtl -pg 1 -y 0 -defaultsOSRD
preplace portBus POF_P -pg 1 -y 670 -defaultsOSRD
preplace portBus POF_N -pg 1 -y 690 -defaultsOSRD
preplace inst util_ds_buf_1 -pg 1 -lvl 7 -y 1040 -defaultsOSRD
preplace inst ADS7056_0 -pg 1 -lvl 8 -y 910 -defaultsOSRD
preplace inst me18_0 -pg 1 -lvl 7 -y 730 -defaultsOSRD
preplace inst microblaze_0_axi_periph -pg 1 -lvl 6 -y 230 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 7 -y 270 -defaultsOSRD
preplace inst microblaze_0_xlconcat -pg 1 -lvl 3 -y 580 -defaultsOSRD
preplace inst led_0 -pg 1 -lvl 8 -y 780 -defaultsOSRD
preplace inst mdm_1 -pg 1 -lvl 4 -y 740 -defaultsOSRD
preplace inst microblaze_0_axi_intc -pg 1 -lvl 4 -y 540 -defaultsOSRD
preplace inst microblaze_0 -pg 1 -lvl 5 -y 560 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 2 -y 900 -defaultsOSRD
preplace inst microblaze_0_local_memory -pg 1 -lvl 6 -y 570 -defaultsOSRD
preplace inst axi_quad_spi_0 -pg 1 -lvl 1 -y 160 -defaultsOSRD
preplace inst rst_clk_wiz_0_120M -pg 1 -lvl 3 -y 440 -defaultsOSRD
preplace inst util_ds_buf_0 -pg 1 -lvl 8 -y 680 -defaultsOSRD
preplace netloc axi_quad_spi_0_SPI_0 1 1 8 210J -10 NJ -10 NJ -10 NJ -10 NJ -10 NJ -10 NJ -10 2500J
preplace netloc microblaze_0_mdm_axi 1 3 4 790 -30 NJ -30 NJ -30 1930
preplace netloc microblaze_0_intr 1 3 1 770
preplace netloc util_ds_buf_0_OBUF_DS_N 1 8 1 NJ
preplace netloc ADS7056_0_clk 1 8 1 NJ
preplace netloc microblaze_0_Clk 1 0 7 -30 660 NJ 660 400 660 780 660 1110 660 1610 660 1950
preplace netloc microblaze_0_axi_periph_M03_AXI 1 0 7 -20 -70 NJ -70 NJ -70 NJ -70 NJ -70 NJ -70 1950
preplace netloc microblaze_0_intc_axi 1 3 4 780 -40 NJ -40 NJ -40 1940
preplace netloc microblaze_0_interrupt 1 4 1 1080
preplace netloc reset_rtl_0_1_1 1 0 3 -40J 420 NJ 420 NJ
preplace netloc rst_clk_wiz_0_120M_interconnect_aresetn 1 3 3 740 130 NJ 130 NJ
preplace netloc util_ds_buf_0_OBUF_DS_P 1 8 1 NJ
preplace netloc microblaze_0_M_AXI_DC 1 5 1 1570
preplace netloc microblaze_0_ilmb_1 1 5 1 1560
preplace netloc mdm_1_Interrupt 1 2 3 420 670 NJ 670 1060
preplace netloc microblaze_0_axi_dp 1 5 1 1550
preplace netloc ADS7056_0_cnv 1 8 1 NJ
preplace netloc axi_gpio_0_gpio_io_o 1 7 1 2260
preplace netloc rst_clk_wiz_0_120M_mb_reset 1 3 2 760 400 1090
preplace netloc microblaze_0_M_AXI_IC 1 5 1 1580
preplace netloc SDO_1 1 0 8 NJ 970 NJ 970 NJ 970 NJ 970 NJ 970 NJ 970 NJ 970 2250J
preplace netloc clk_wiz_0_clk_out1 1 2 6 NJ 880 NJ 880 NJ 880 NJ 880 NJ 880 2250J
preplace netloc clk_wiz_0_clk_out2 1 2 5 NJ 900 NJ 900 NJ 900 NJ 900 1940
preplace netloc axi_gpio_0_ip2intc_irpt 1 2 6 410 -50 NJ -50 NJ -50 NJ -50 NJ -50 2250
preplace netloc rst_clk_wiz_0_120M_peripheral_aresetn 1 0 7 -20 250 NJ 250 NJ 250 750 250 NJ 250 1620 470 1930J
preplace netloc reset_rtl_0_1 1 0 2 NJ 890 N
preplace netloc microblaze_0_axi_periph_M02_AXI 1 6 1 1960
preplace netloc microblaze_0_dlmb_1 1 5 1 1600
preplace netloc clock_rtl_1 1 0 2 NJ 910 N
preplace netloc microblaze_0_debug 1 4 1 1100
preplace netloc axi_quad_spi_0_ip2intc_irpt 1 1 2 NJ 170 390
preplace netloc util_ds_buf_1_BUFG_O 1 7 1 2260
preplace netloc mdm_1_debug_sys_rst 1 2 3 420 350 NJ 350 1070
preplace netloc me18_0_tx 1 7 1 2250
preplace netloc rst_clk_wiz_0_120M_bus_struct_reset 1 3 3 NJ 420 NJ 420 1590
preplace netloc reset_rtl_1 1 0 8 NJ 830 NJ 830 NJ 830 NJ 830 NJ 830 NJ 830 1930 830 2240J
preplace netloc led_0_led 1 8 1 NJ
preplace netloc ADS7056_0_data 1 6 3 1950 840 NJ 840 2500
levelinfo -pg 1 -60 100 310 580 930 1330 1800 2120 2380 2520 -top -90 -bot 1090
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



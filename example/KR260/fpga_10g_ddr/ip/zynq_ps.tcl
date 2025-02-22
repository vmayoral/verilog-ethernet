# Copyright 2022, The Regents of the University of California.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#    1. Redistributions of source code must retain the above copyright notice,
#       this list of conditions and the following disclaimer.
#
#    2. Redistributions in binary form must reproduce the above copyright notice,
#       this list of conditions and the following disclaimer in the documentation
#       and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE REGENTS OF THE UNIVERSITY OF CALIFORNIA ''AS
# IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE REGENTS OF THE UNIVERSITY OF CALIFORNIA OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
# OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
# IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
# OF SUCH DAMAGE.
#
# The views and conclusions contained in the software and documentation are those
# of the authors and should not be interpreted as representing official policies,
# either expressed or implied, of The Regents of the University of California.

# create block design
create_bd_design "zynq_ps"

# Create blocks

# Zynq PS
set zynq_ultra_ps [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e zynq_ultra_ps ]
set_property -dict [list \
    CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
    CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
    CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
    CONFIG.PSU_BANK_3_IO_STANDARD {LVCMOS33} \
    CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN 1 \
    CONFIG.PSU__DDRC__COMPONENTS {UDIMM} \
    CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
    CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2133P} \
    CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
    CONFIG.PSU__DDRC__T_RC {46.5} \
    CONFIG.PSU__DDRC__T_FAW {21.0} \
    CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} \
    CONFIG.PSU__DDRC__FREQ_MHZ {1067} \
    CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__PMU__GPI0__ENABLE {1} \
    CONFIG.PSU__PMU__GPI1__ENABLE {0} \
    CONFIG.PSU__PMU__GPI2__ENABLE {0} \
    CONFIG.PSU__PMU__GPI3__ENABLE {0} \
    CONFIG.PSU__PMU__GPI4__ENABLE {0} \
    CONFIG.PSU__PMU__GPI5__ENABLE {0} \
    CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
    CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} \
    CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__CAN1__PERIPHERAL__IO {MIO 24 .. 25} \
    CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} \
    CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} \
    CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
    CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} \
    CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
    CONFIG.PSU__SD1__GRP_WP__ENABLE {1} \
    CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
    CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} \
    CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
    CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30} \
    CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} \
    CONFIG.PSU__DP__LANE_SEL {Single Lower} \
    CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__SATA__LANE1__IO {GT Lane3} \
    CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_IO {MIO 31} \
    CONFIG.PSU__PCIE__DEVICE_PORT_TYPE {Root Port} \
    CONFIG.PSU__PCIE__BAR0_ENABLE {0} \
    CONFIG.PSU__PCIE__CLASS_CODE_BASE {0x06} \
    CONFIG.PSU__PCIE__CLASS_CODE_SUB {0x04} \
    CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
    CONFIG.PSU__USE__M_AXI_GP0 {1} \
    CONFIG.PSU__MAXIGP0__DATA_WIDTH {32} \
    CONFIG.PSU__USE__M_AXI_GP1 {0} \
    CONFIG.PSU__USE__M_AXI_GP2 {0} \
    CONFIG.PSU__USE__S_AXI_GP0 {0} \
    CONFIG.PSU__USE__S_AXI_GP2 {1} \
    CONFIG.PSU__USE__IRQ0 {0} \
    CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
    CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
    CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} \
    CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} \
    CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {667} \
    CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL} \
    CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {667} \
    CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL} \
    CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
    CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
    CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {DPLL} \
    CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
    CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {300} \
    CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} \
    CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL} \
] $zynq_ultra_ps

# reset
set proc_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset proc_sys_reset ]

# Create connections

# Clock
set pl_clk0 [get_bd_pins $zynq_ultra_ps/pl_clk0]
make_bd_pins_external $pl_clk0
set_property name pl_clk0 [get_bd_ports -of_objects [get_bd_nets -of_objects $pl_clk0]]
set pl_clk0_port [get_bd_ports -of_objects [get_bd_nets -of_objects $pl_clk0]]

connect_bd_net $pl_clk0 [get_bd_pins $proc_sys_reset/slowest_sync_clk]

set pl_clk0_busif [list]

# Reset
set pl_resetn0 [get_bd_pins $zynq_ultra_ps/pl_resetn0]
connect_bd_net $pl_resetn0 [get_bd_pins $proc_sys_reset/ext_reset_in]

set pl_reset [get_bd_pins $proc_sys_reset/peripheral_reset]
make_bd_pins_external $pl_reset
set_property name pl_reset [get_bd_ports -of_objects [get_bd_nets -of_objects $pl_reset]]

# robotcore-udpip interface: clk and rst for S_AXI and M_AXI
create_bd_port -dir I -type clk -freq_hz 156250000 clk_156mhz_i
create_bd_port -dir I -type rst rstn_156mhz_i

# robotcore-udpip interface S_AXI -> HP0

connect_bd_net [get_bd_ports clk_156mhz_i] [get_bd_pins zynq_ultra_ps/saxihp0_fpd_aclk]
# Smart connect
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
set_property -dict [list CONFIG.NUM_SI {1}] [get_bd_cells smartconnect_0]
connect_bd_intf_net [get_bd_intf_pins $zynq_ultra_ps/S_AXI_HP0_FPD] [get_bd_intf_pins smartconnect_0/M00_AXI]
connect_bd_net [get_bd_ports clk_156mhz_i] [get_bd_pins smartconnect_0/aclk]
connect_bd_net [get_bd_ports rstn_156mhz_i] [get_bd_pins smartconnect_0/aresetn]
make_bd_intf_pins_external  [get_bd_intf_pins smartconnect_0/S00_AXI]
set_property name s_axi_hp0 [get_bd_intf_ports S00_AXI_0]
set_property CONFIG.DATA_WIDTH 64 [get_bd_intf_ports /s_axi_hp0]
set_property -dict [list CONFIG.FREQ_HZ {156250000}] [get_bd_intf_ports s_axi_hp0]
# Assign addresses
assign_bd_address -target_address_space /zynq_ultra_ps/Data [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
assign_bd_address -target_address_space /s_axi_hp0 [get_bd_addr_segs $zynq_ultra_ps/SAXIGP0/HP0_DDR_HIGH] -force
assign_bd_address -target_address_space /s_axi_hp0 [get_bd_addr_segs $zynq_ultra_ps/SAXIGP0/HP0_QSPI] -force
assign_bd_address -target_address_space /s_axi_hp0 [get_bd_addr_segs $zynq_ultra_ps/SAXIGP0/HP0_DDR_LOW] -force
assign_bd_address -target_address_space /s_axi_hp0 [get_bd_addr_segs $zynq_ultra_ps/SAXIGP0/HP0_LPS_OCM] -force

# robotcore-udpip interface M_AXI -> HPM0

connect_bd_net [get_bd_ports clk_156mhz_i] [get_bd_pins zynq_ultra_ps/maxihpm0_fpd_aclk]
# Smart connect
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1
set_property -dict [list CONFIG.NUM_SI {1}] [get_bd_cells smartconnect_1]
connect_bd_intf_net [get_bd_intf_pins $zynq_ultra_ps/M_AXI_HPM0_FPD] [get_bd_intf_pins smartconnect_1/S00_AXI]
connect_bd_net [get_bd_ports clk_156mhz_i] [get_bd_pins smartconnect_1/aclk]
connect_bd_net [get_bd_ports rstn_156mhz_i] [get_bd_pins smartconnect_1/aresetn]
# TEMP (GPIO)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
set_property -dict [list CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_0]
connect_bd_net [get_bd_ports clk_156mhz_i] [get_bd_pins axi_gpio_0/s_axi_aclk]
connect_bd_net [get_bd_ports rstn_156mhz_i] [get_bd_pins axi_gpio_0/s_axi_aresetn]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/M00_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
make_bd_intf_pins_external  [get_bd_intf_pins axi_gpio_0/GPIO]
set_property name GPIO_SHMEM [get_bd_intf_ports GPIO_0]
# Assign addresses
assign_bd_address -target_address_space /zynq_ultra_ps/Data [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
set_property offset 0x00A0000000 [get_bd_addr_segs {zynq_ultra_ps/Data/SEG_axi_gpio_0_Reg}]

# Port clock associations
set lst [list]
foreach port $pl_clk0_busif {
    lappend lst [get_property name $port]
}
set_property CONFIG.ASSOCIATED_BUSIF [join $lst ":"] $pl_clk0_port

validate_bd_design

# Save block design
save_bd_design [current_bd_design]
close_bd_design [current_bd_design]

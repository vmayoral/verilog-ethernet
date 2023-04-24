# add_waves.tcl 
set sig_list {                                 \
    axi_dma_wr_inst.clk                        \ 
    axi_dma_wr_inst.rst                        \ 
    axi_dma_wr_inst.enable                     \ 
    axi_dma_wr_inst.abort                      \ 
    axi_dma_wr_inst.s_axis_write_desc_addr     \ 
    axi_dma_wr_inst.s_axis_write_desc_len      \ 
    axi_dma_wr_inst.s_axis_write_desc_tag      \ 
    axi_dma_wr_inst.s_axis_write_desc_valid    \ 
    axi_dma_wr_inst.s_axis_write_desc_ready    \ 
    axi_dma_wr_inst.s_axis_write_data_tdata    \ 
    axi_dma_wr_inst.s_axis_write_data_tkeep    \ 
    axi_dma_wr_inst.s_axis_write_data_tvalid   \ 
    axi_dma_wr_inst.s_axis_write_data_tready   \ 
    axi_dma_wr_inst.s_axis_write_data_tlast    \ 
    axi_dma_wr_inst.s_axis_write_data_tid      \ 
    axi_dma_wr_inst.s_axis_write_data_tdest    \ 
    axi_dma_wr_inst.s_axis_write_data_tuser    \ 
    m_axi_awid                                 \ 
    m_axi_awaddr                               \ 
    m_axi_awlen                                \ 
    m_axi_awsize                               \ 
    m_axi_awburst                              \ 
    m_axi_awlock                               \ 
    m_axi_awcache                              \ 
    m_axi_awprot                               \ 
    m_axi_awvalid                              \ 
    m_axi_awready                              \ 
    m_axi_wdata                                \ 
    m_axi_wstrb                                \ 
    m_axi_wlast                                \ 
    m_axi_wvalid                               \ 
    m_axi_wready                               \ 
    m_axi_bid                                  \ 
    m_axi_bresp                                \ 
    m_axi_bvalid                               \ 
    m_axi_bready                               \
    m_axi_arid                                 \
    m_axi_araddr                               \
    m_axi_arlen                                \
    m_axi_arsize                               \
    m_axi_arburst                              \
    m_axi_arlock                               \
    m_axi_arcache                              \
    m_axi_arprot                               \
    m_axi_arvalid                              \
    m_axi_arready                              \
    m_axi_rid                                  \
    m_axi_rdata                                \
    m_axi_rresp                                \
    m_axi_rlast                                \
    m_axi_rvalid                               \
    m_axi_rready                               \      
    axis_dma_rd_tdata                          \
    axis_dma_rd_tkeep                          \
    axis_dma_rd_tvalid                         \
    axis_dma_rd_tready                         \
    axis_dma_rd_tlast                          \
    axis_dma_rd_tid                            \      
}

gtkwave::addSignalsFromList $sig_list

# Zoom full (Shift + Alt + F)
gtkwave::/Time/Zoom/Zoom_Full

# Change signal formats
gtkwave::/Edit/Highlight_Regexp "axi_dma_wr_inst.clk"
gtkwave::/Edit/Data_Format/Hexadecimal
gtkwave::/Edit/UnHighlight_All


derive_pll_clocks

set clk_sdram_sys  {*|pll|pll_inst|altera_pll_i|*[0].*|divclk}
set clk_sdram_chip {*|pll|pll_inst|altera_pll_i|*[1].*|divclk}

create_generated_clock -name SDRAM_CLK -source [get_pins -compatibility_mode $clk_sdram_chip] [get_ports {SDRAM_CLK}]

# use proper edges for the timing calculations
# set_multicycle_path -setup -end -rise_from [get_clocks {SDRAM_CLK}] -rise_to [get_clocks $clk_sdram_sys] 2

derive_clock_uncertainty

# Set acceptable delays for SDRAM chip (See correspondent chip datasheet) 
# set_input_delay -max -clock $clk_sdram_sys 8.7ns [get_ports SDRAM_DQ[*]]
# set_input_delay -min -clock $clk_sdram_sys 6.0ns [get_ports SDRAM_DQ[*]]

# set_output_delay -max -clock SDRAM_CLK  1.6ns [get_ports {SDRAM_D* SDRAM_A* SDRAM_BA* SDRAM_n*}]
# set_output_delay -min -clock SDRAM_CLK -0.9ns [get_ports {SDRAM_D* SDRAM_A* SDRAM_BA* SDRAM_n*}]

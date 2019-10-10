
set sdc_version 1.2
current_design CHIP
create_clock [get_ports {CLK}] -name CLK1 -period 10 -waveform {0 5} 
set_case_analysis 0 [get_ports {SCAN_EN}]
set_max_fanout 15 [current_design]
set_max_transition 2.7 [current_design]

set_clock_latency 2 [get_clocks {CLK1}]

set_input_delay     1 -clock CLK1 \
                      [remove_from_collection [all_inputs] [get_ports CLK]]
set_output_delay    1 -clock CLK1 [all_outputs]

set_drive 0.1 [all_inputs]
set_load -pin_load 1 [all_outputs]

set_false_path  -from [get_ports {DoDCT}] 
set_false_path  -from [get_ports {RESET_}] 
set_false_path  -from [get_ports {Mode}] 


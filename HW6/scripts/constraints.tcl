# You can only modify clock period 
#set cycle   10.0

#don't modify the following part
create_clock -name clk -waveform {0 5} -period 10  {clk}
set_dont_touch_network      [find clock clk]
set_clock_uncertainty  0.1  [find clock clk]
set_clock_latency      0.5  [find clock clk]
#set t_in [expr 5]
set_input_delay  5  -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 0      -clock clk [all_outputs] 
set_load         1     [all_outputs]
set_drive        1     [all_inputs]

set_operating_conditions -max_library slow -max slow
set_wire_load_model -name tsmc13_wl10 -library slow                        

set_max_fanout 20 [all_inputs]

                       

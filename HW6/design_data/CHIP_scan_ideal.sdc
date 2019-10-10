# You can only modify clock period 
set cycle   100.0

#don't modify the following part
create_clock -period $cycle [get_ports  clk]
set_clock_latency     2  [get_clocks clk]
set_input_delay  1  -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 3      -clock clk [all_outputs] 

                     

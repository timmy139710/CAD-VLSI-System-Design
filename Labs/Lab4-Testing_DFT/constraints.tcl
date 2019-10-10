create_clock -name "clk" -period 10 -waveform { 0 5  }  { clk  }
set_dont_touch_network  [ find clock clk ]
set_fix_hold  [ find clock clk]
set_operating_conditions "typical" -library "typical"
set_wire_load_model -name "ForQA" -library "typical"
set_wire_load_mode "segmented"
set_input_delay -clock clk 2.5 inputA[*]
set_input_delay -clock clk 3.8 inputB[*]
set_input_delay -clock clk 4.5 instruction[*]
set_input_delay -clock clk 5.2 reset
set_output_delay -clock clk 8 alu_out[*]
set_boundary_optimization "*"
set_fix_multiple_port_nets -all -buffer_constants
set_max_area 0
set_max_fanout 8 ALU
set_max_transition 1 ALU


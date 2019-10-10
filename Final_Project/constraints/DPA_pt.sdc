# operating conditions and boundary conditions #

set cycle  1000         

create_clock -period $cycle [get_ports  clk]

set_load -pin_load 1  [all_outputs]
set_drive          1  [all_inputs]

set_operating_conditions -min_library fast -min fast  -max_library slow -max slow
set_wire_load_model -name tsmc13_wl10 -library slow                        



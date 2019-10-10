saveNetlist DPA_pr.v
all_hold_analysis_views 
all_setup_analysis_views 
extractRC
write_sdf DPA_pr.sdf
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing DPA.def
set dbgLefDefOutVersion 5.8

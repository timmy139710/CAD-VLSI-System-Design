source global_net_connect.cmd
source floorplan.cmd
analyzeFloorplan -outfile core_area.rpt
source full_place.cmd
source create_power_ring.cmd
source power_pad.cmd
source create_power_stripe.cmd
source add_tie_hilo_cell.cmd
source clock_tree_synthesis.cmd
source route_power.cmd
source routing.cmd
source add_core_filler.cmd
source finish.cmd
source verify.cmd
source stream_out_gds.cmd

set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -use_wire_group_bits 1 -use_interleaving_wire_group 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer METAL8 -use_wire_group 1 -type core_rings -jog_distance 0.23 -threshold 0.23 -nets {VDD VSS} -follow core -stacked_via_bottom_layer METAL1 -layer {bottom METAL7 top METAL7 right METAL6 left METAL6} -width 2 -spacing 0.24 -offset 0.23

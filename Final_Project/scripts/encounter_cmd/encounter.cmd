#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Wed Jun 20 14:53:33 2018                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.28-s033_1 (64bit) 03/21/2016 13:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.28-s005 NR160313-1959/14_28-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.28-s006_1 (64bit) 03/08/2016 00:08:23 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.28-s002 (64bit) 03/21/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.28-s007_1 (64bit) Mar  7 2016 23:11:05 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.28-s006
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1
init_design
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type tiehi -pin VDD -inst *
globalNetConnect VSS -type tielo -pin VSS -inst *
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site TSM13SITE -r 1 0.991 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
setPlaceMode -fp true
placeDesign -noPrePlaceOpt
analyzeFloorplan -outfile core_area.rpt
setPlaceMode -fp false
placeDesign -inPlaceOpt -noPrePlaceOpt
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -use_wire_group_bits 1 -use_interleaving_wire_group 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer METAL8 -use_wire_group 1 -type core_rings -jog_distance 0.23 -threshold 0.23 -nets {VDD VSS} -follow core -stacked_via_bottom_layer METAL1 -layer {bottom METAL7 top METAL7 right METAL6 left METAL6} -width 2 -spacing 0.24 -offset 0.23
sroute -connect { padPin } -layerChangeRange { METAL1 METAL8 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort allGeom } -padPinTarget { nearestTarget } -allowJogging 1 -crossoverViaLayerRange { METAL1 METAL8 } -nets { VDD VSS } -allowLayerChange 1 -targetViaLayerRange { METAL1 METAL8 }
addStripe -skip_via_on_wire_shape Noshape -use_wire_group_bits 1 -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 100 -split_vias 1 -use_interleaving_wire_group 1 -skip_via_on_pin Standardcell -same_sized_stack_vias 1 -stacked_via_top_layer METAL8 -use_wire_group 1 -padcore_ring_top_layer_limit METAL7 -spacing 0.24 -xleft_offset 80 -switch_layer_over_obs 1 -xright_offset 80 -merge_stripes_value 0.23 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 2 -nets {VDD VSS} -stacked_via_bottom_layer METAL1 -break_stripes_at_block_rings 1
setEndCapMode -reset
setEndCapMode -boundary_tap false
setTieHiLoMode -reset
setTieHiLoMode -cell {  TIEHI TIELO } -maxDistance 100 -maxFanOut 10 -honorDontTouch false -createHierPort false
addTieHiLo -cell {TIEHI TIELO} -prefix LTIE
setCTSMode -engine ck
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
sroute -connect { corePin } -layerChangeRange { METAL1 METAL8 } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { METAL1 METAL8 } -nets { VDD VSS } -allowLayerChange 1 -targetViaLayerRange { METAL1 METAL8 }
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0
verifyConnectivity -type special -noUnroutedNet -error 1000 -warning 50
redraw
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName ANTENNA
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeTdrEffort 2
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
getFillerMode -quiet
addFiller -cell FILL1 FILL2 FILL4 FILL8 FILL16 FILL32 FILL64 -prefix FILLER
saveNetlist DPA_pr.v
all_hold_analysis_views 
all_setup_analysis_views 
extractRC
write_sdf DPA_pr.sdf
defOut -floorplan -netlist -routing DPA.def
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -error 1000 -warning 50
verifyProcessAntenna -reportfile DPA.antenna.rpt -error 1000
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -timingEngine CTE
setNanoRouteMode -quiet -routeAntennaCellName {}
setStreamOutMode -specifyViaName default -SEvianames false -virtualConnection false -uniquifyCellNamesPrefix false -snapToMGrid false -textSize 1 -version 3
setTieHiLoMode -reset
setTieHiLoMode -cell {TIEHI TIELO} -maxDistance 100 -maxFanOut 10 -honorDontTouch false -createHierPort false
streamOut DPA.gds -mapFile library/streamOut.map -libName DesignLib -merge { library/gds/tpz013g3_v1.1.gds library/gds/tsmc13gfsg_fram.gds } -outputMacros -units 1000 -mode ALL

sroute -connect { corePin } -layerChangeRange { METAL1 METAL8 } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { METAL1 METAL8 } -nets { VDD VSS } -allowLayerChange 1 -targetViaLayerRange { METAL1 METAL8 }
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0
verifyConnectivity -type special -noUnroutedNet -error 1000 -warning 50
redraw

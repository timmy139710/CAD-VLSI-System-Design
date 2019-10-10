setEndCapMode -reset
setEndCapMode -boundary_tap false
setTieHiLoMode -reset
setTieHiLoMode -cell {  TIEHI TIELO } -maxDistance 100 -maxFanOut 10 -honorDontTouch false -createHierPort false
addTieHiLo -cell {TIEHI TIELO} -prefix LTIE

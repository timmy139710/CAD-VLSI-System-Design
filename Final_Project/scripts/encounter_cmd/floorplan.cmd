getIoFlowFlag
setIoFlowFlag 0
floorPlan -site TSM13SITE -r 1 0.95 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
setPlaceMode -fp true
placeDesign -noPrePlaceOpt

export DESIGN_NAME = sequence_detector_110
export PLATFORM    = sky130hd

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/sequence_detector_110.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# Adders degrade GCD
export ADDER_MAP_FILE :=

export CORE_UTILIZATION = 10
export TNS_END_PERCENT = 100
export EQUIVALENCE_CHECK   ?=   0
export REMOVE_CELLS_FOR_EQY = sky130_fd_sc_hd__tapvpwrvgnd*

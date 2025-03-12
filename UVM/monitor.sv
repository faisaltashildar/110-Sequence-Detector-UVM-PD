
class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)

    uvm_analysis_port#(sequence_item) mon_port;
    virtual sequence_detector_if.Monitor vif;
    sequence_item trans;
  
   function new(string name = "monitor", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      mon_port = new("mon_port", this);
      trans = sequence_item::type_id::create("trans");
      if (!uvm_config_db#(virtual sequence_detector_if.Monitor)::get(this, "", "mon_if", vif))
            `uvm_fatal("MONITOR", "Virtual interface not set")
    endfunction

    task run_phase(uvm_phase phase);
        forever 
          begin
            @(vif.cb_monitor)
            trans.seq_in = vif.cb_monitor.seq_in;
            trans.detect = vif.cb_monitor.detect;
           // `uvm_info("MONITOR", $sformatf("Captured Transaction: seq_in=%b, detect=%b", trans.seq_in, trans.detect), UVM_MEDIUM)
            mon_port.write(trans);
        end
    endtask
      
endclass


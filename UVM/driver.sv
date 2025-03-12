
class driver extends uvm_driver #(sequence_item);
    `uvm_component_utils(driver)

    virtual sequence_detector_if.Driver vif;
    //sequence_item req;
  
   function new(string name = "driver", uvm_component parent=null);
      super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
      if (!uvm_config_db#(virtual sequence_detector_if.Driver)::get(this, "", "drv_if", vif))
            `uvm_fatal("DRIVER", "Virtual interface not set")
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(req);
            @(vif.cb_driver)
            vif.cb_driver.seq_in <= req.seq_in;
           // `uvm_info("DRIVER", $sformatf("Driving Transaction: seq_in=%b", req.seq_in), UVM_MEDIUM)
            seq_item_port.item_done();
        end
    endtask
      
endclass


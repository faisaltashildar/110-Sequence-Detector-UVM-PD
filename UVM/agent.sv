class agent extends uvm_agent;
    `uvm_component_utils(agent)

    driver drv;
    monitor mon;
    uvm_sequencer#(sequence_item) seqr;

    function new(string name = "agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        drv = driver::type_id::create("drv", this);
        mon = monitor::type_id::create("mon", this);
        seqr = uvm_sequencer#(sequence_item)::type_id::create("seqr", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(seqr.seq_item_export);
    endfunction
endclass

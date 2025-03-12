class env extends uvm_env;
    `uvm_component_utils(env)

    agent agt;
    scoreboard scb;

    function new(string name = "env", uvm_component parent);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agt = agent::type_id::create("agt", this);
        scb = scoreboard::type_id::create("scb", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        agt.mon.mon_port.connect(scb.item_collected_export);
    endfunction
endclass



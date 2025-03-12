class test extends uvm_test;
    `uvm_component_utils(test)

    env e;
    random_sequence seq;

    function new(string name = "test", uvm_component parent);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        e = env::type_id::create("e", this);
        seq = random_sequence::type_id::create("seq");
    endfunction

    task run_phase(uvm_phase phase);
        
        phase.raise_objection(this);
        seq.start(e.agt.seqr);
        phase.drop_objection(this);
    endtask
endclass

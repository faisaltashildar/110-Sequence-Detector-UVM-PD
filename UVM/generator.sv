

class random_sequence extends uvm_sequence#(sequence_item);
  `uvm_object_utils(random_sequence)

    function new(string name = "detection_sequence");
        super.new(name);
    endfunction


  
  virtual task body();
    sequence_item tr;

    // Example sequence: 0 -> 1 -> 1 -> 0 -> 1 -> 1 -> 0 -> 0
    int stimulus[] = '{0, 1, 1, 0, 1, 1, 0, 0};

    for (int i = 0; i < 8; i++) begin  // Explicitly declare 'i'
        tr = sequence_item::type_id::create("tr");
        start_item(tr);
        tr.seq_in = stimulus[i];  // Assign sequence bit
        finish_item(tr);

        `uvm_info("SEQUENCE", $sformatf("Generated seq_in=%b", tr.seq_in), UVM_MEDIUM)
    end
endtask
endclass







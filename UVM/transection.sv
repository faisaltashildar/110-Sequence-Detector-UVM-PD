class sequence_item extends uvm_sequence_item;
  
    rand bit seq_in;
    bit detect;
  
    `uvm_object_utils_begin(sequence_item)
        `uvm_field_int(seq_in, UVM_ALL_ON)
        `uvm_field_int(detect, UVM_ALL_ON)
    `uvm_object_utils_end

    function new(string name = "sequence_item");
        super.new(name);
    endfunction
  
endclass

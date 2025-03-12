class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    // 3-bit queue to hold last three transactions
    logic [2:0] input_queue = 3'b000;
    logic expected_output;
    int count = 0; // Transaction counter

    uvm_analysis_imp#(sequence_item, scoreboard) item_collected_export;

    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
        item_collected_export = new("item_collected_export", this);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction
  
  virtual function void write(sequence_item tr);
    // Shift left and add new bit
    input_queue = {input_queue[1:0], tr.seq_in};
    count++;

    if (count >= 3) begin
        // Detect "110" pattern
        expected_output = (input_queue == 3'b110);

        // Only compare when input_queue matches "110"
        if (input_queue == 3'b110) begin
            if (expected_output != tr.detect & tr.detect != 1'b1) begin
                `uvm_error("SCOREBOARD", $sformatf("Mismatch! input_queue=%b, Expected detect=%b, DUT detect=%b", 
                    input_queue, expected_output, tr.detect))
            end else begin
                `uvm_info("SCOREBOARD", $sformatf("Match! input_queue=%b, Expected detect=%b, DUT detect=%b", 
                    input_queue, expected_output, tr.detect), UVM_LOW)
            end
        end else begin
            // If the sequence is not "110", just print that the queue is filling
            `uvm_info("SCOREBOARD", $sformatf("Queue Filling: input_queue=%b, count=%0d", input_queue, count), UVM_MEDIUM)
        end
    end else begin
        `uvm_info("SCOREBOARD", $sformatf("Queue Filling: input_queue=%b, count=%0d", input_queue, count), UVM_MEDIUM)
    end
endfunction



endclass








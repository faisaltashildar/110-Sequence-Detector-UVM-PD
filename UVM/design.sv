// Code your design here


module sequence_detector_110 (
    input logic clk,    // Clock signal
    input logic rst,    // Reset signal
    input logic seq_in, // Serial input bit
    output logic detect // Output (1 when "110" is detected)
);
    typedef enum logic [1:0] { 
        S0, // Initial state
        S1, // Detected '1'
        S2, // Detected '11'
        S3  // Detected '110' (output high)
    } state_t;

    state_t state, next_state;

    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    always_comb begin
        next_state = state;
        detect = 0;
        case (state)
            S0: if (seq_in) next_state = S1;
            S1: if (seq_in) next_state = S2; else next_state = S0;
            S2: if (!seq_in) begin 
                    next_state = S3; 
                    detect = 1; 
                end
            S3: if (seq_in) next_state = S1; else next_state = S0;
        endcase
    end

endmodule


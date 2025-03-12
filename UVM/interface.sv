
interface sequence_detector_if(input logic clk, input logic rst);
    logic seq_in;
    logic detect;

    // Clocking block for the driver
    clocking cb_driver @(posedge clk);
        output seq_in;
    endclocking

    // Clocking block for the monitor
    clocking cb_monitor @(posedge clk);
        input seq_in, detect;
    endclocking

    // Modports using the clocking blocks
    modport Driver (clocking cb_driver);
    modport Monitor (clocking cb_monitor);
      
endinterface



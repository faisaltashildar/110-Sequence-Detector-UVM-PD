// Code your testbench here
// or browse Examples


import uvm_pkg::*;
`include "uvm_macros.svh"

`include "package.sv"

module testbench;
    logic clk;
    logic rst;

    sequence_detector_if vif(clk, rst);
  sequence_detector_110 dut (.clk(vif.clk), .rst(vif.rst), .seq_in(vif.seq_in), .detect(vif.detect));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #5 rst = 0;
    end

    initial 
      begin
        //uvm_config_db#(virtual sequence_detector_if)::set(null, "*", "vif", intf);
       uvm_config_db#(virtual sequence_detector_if.Driver)::set(null, "*", "drv_if", vif);
       uvm_config_db#(virtual sequence_detector_if.Monitor)::set(null, "*", "mon_if", vif);
       run_test("test");
     end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule


interface jc_intf(input logic clk, reset);
  logic [7:0] q;

  clocking bfm_cb @(posedge clk);
    default input #1 output #1;
    input q;
  endclocking

  clocking monitor_cb @(posedge clk);
    default input #1 output #1;
    input q;
  endclocking

  modport BFM (clocking bfm_cb, input clk, reset);
  modport MONITOR (clocking monitor_cb, input clk, reset);
endinterface

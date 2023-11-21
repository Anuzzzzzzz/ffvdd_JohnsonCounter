`include "cov.sv"

class environment;
  generator gen;
  jc_bfm bfm;
  jc_cov cov;
  mailbox gen2bfm;
  virtual jc_intf intf;
  event ended;

  function new(virtual jc_intf intf);
    this.intf = intf;
    gen2bfm = new();
    gen = new(gen2bfm, ended);
    bfm = new(intf, gen2bfm);
    cov = new();
  endfunction

  task pre_test;
    bfm.reset();
  endtask

  task test;
    fork
      gen.main();
      bfm.main();
      cov.main();
    join_any
  endtask

  task post_test;
    wait(ended.triggered);
    wait(gen.repeat_count == bfm.no_transaction);
  endtask

  task run;
    pre_test();
    test();
    post_test();
    $finish;
  endtask
endclass
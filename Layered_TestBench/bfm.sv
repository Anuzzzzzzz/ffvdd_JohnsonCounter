class jc_bfm;
  virtual jc_intf intf;
  mailbox gen2bfm;
  int no_transaction;

function new(virtual jc_intf intf, mailbox gen2bfm);
    this.intf = intf;
    this.gen2bfm = gen2bfm;
endfunction

task reset;
    wait(intf.reset);
    $display("Resetting is on");
    //intf.reset <= 1'b1;
    wait(!intf.reset);
    $display("Reset finished");
endtask

task main;
    forever begin
      transaction trans;
      gen2bfm.get(trans);
      $display("Transaction No. = %0d", no_transaction);

      repeat (2) @(posedge intf.clk);
      trans.q= intf.bfm_cb.q;
      trans.display();
      no_transaction++;
    end
  endtask
endclass

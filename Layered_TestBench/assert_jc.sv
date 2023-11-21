module assert_jc(intf vif);


  A1: cover property (@(posedge vif.clk) $fell(vif.clk));

  //A2: cover property (@(posedge vif.reset) $rose(vif.reset));

endmodule

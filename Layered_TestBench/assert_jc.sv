module assert_jc(intf vif);


  A1: cover property (@(posedge vif.clk) $fell(vif.clk));

  
endmodule

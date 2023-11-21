module jc_tb;
bit clk;
bit reset;
jc_intf intf(clk, reset);
test t1(intf);
jc dut(.reset(intf.reset),.clk(intf.clk),.q(intf.q));
assert_jc ajc(intf);


initial begin
clk=0;

#6 reset =1;
#6 reset =0;
#6 reset =1;
#6 reset =0;
#6 reset =1;
#6 reset =0;
#6 reset =1;
#6 reset =0;
#6 reset =1;
#6 reset =0;

end

always #2 clk = ~clk;

initial #100 $finish;

endmodule

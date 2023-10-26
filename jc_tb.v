module jc_tb;
reg clk;
reg rst;
wire [7:0]q;
jc j1(rst,clk,q);

initial
begin
clk=0;
rst = 0;

#6 rst =1;
end

always #2 clk = ~clk;

initial #68 $finish;

endmodule

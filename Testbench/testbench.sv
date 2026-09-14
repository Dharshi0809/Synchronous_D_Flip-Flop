`include "common.sv"
`include "transaction.sv"
`include "generator.sv"
`include "interface.sv"
`include "driver.sv"
`include "coverage.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "agent.sv"
`include "environment.sv"


module top;
  reg reset,clk;
  intf pif(clk,reset);
  initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end
  environment env;
  
  syn_d_ff dff(
    .clk    (pif.clk),
    .reset  (pif.reset),
    .d      (pif.d),
    .q      (pif.q)
  );
  
  initial begin
    reset = 0;										
    env = new();
    env.run();
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
  #100
  $display("coverage== %0.2f %%", $get_coverage());
  $finish;
  end
  

endmodule
  
           




interface intf(input logic clk,reset);
  logic d;
  logic q;
  clocking drv_cb@(posedge clk);
    output d;
    input q;
  endclocking
  clocking mon_cb@(posedge clk);
    input reset;
    input d;
    input q;
  endclocking
endinterface
  

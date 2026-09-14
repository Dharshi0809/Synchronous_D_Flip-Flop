class scoreboard;
 
  bit prev_d;
  bit first_cycle = 1;
  virtual intf vif;

  function new();
    vif = top.pif;
  endfunction
  task run();
    transaction trans;
    forever begin
      common::mon2scb.get(trans);
      trans.print("scoreboard class signal");
      if (vif.reset) begin
        if (trans.q == 0)
          $display("reset matched");
        else
          $display("reset mismatched");

        prev_d = 0;
        first_cycle = 1;
      end
      else begin
        
        if (first_cycle) begin
          first_cycle = 0;
          prev_d = trans.d;
          $display("----------------------------------");
        end
      else begin
        
        if (trans.q == prev_d)begin
            $display("you win");
          $display("reset=%0b ,d=%0d,q=%0d",vif.reset,trans.d,trans.q);
        end
          else
            $display("u lose");

          prev_d = trans.d;
        end
      end
    end
  endtask
endclass


class monitor;
  virtual intf vif;
  function new();
    vif=top.pif;
  endfunction
  task run();
    transaction trans;
    forever begin
      @(vif.mon_cb);
      trans=new();
      trans.d=vif.mon_cb.d;
      trans.q=vif.mon_cb.q;
      common::mon2scb.put(trans);
      common::mon2cov.put(trans);
      trans.print("monitor class signal");
    end
  endtask
endclass




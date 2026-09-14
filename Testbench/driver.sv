class driver;
  virtual intf vif;
  function new();
    vif=top.pif;
  endfunction
  task run();
    transaction trans;
    forever begin
      trans=new();
      common::gen2drv.get(trans);
      @(vif.drv_cb);
      vif.drv_cb.d<=trans.d;
      trans.q=vif.drv_cb.q;
      trans.print("driver class signal");
    end
  endtask
endclass




class coverage;
  transaction trans; 
  covergroup cg;
    option.per_instance=1;
    D:coverpoint trans.d;
  endgroup
  function new();
    cg=new();
  endfunction
  task run();
    forever begin
      trans=new();
      common::mon2cov.get(trans);
      cg.sample();
    end
  endtask
endclass
    

class agent;
  generator g;
  driver d;
  monitor m;
  coverage c;
  task run();
    g=new();
    d=new();
    m=new();
    c=new();
    fork
      g.run();
      d.run();
      m.run();
      c.run();
    join
  endtask
endclass
  

class transaction;
  rand bit d;
  bit q;
  function void print(string tag="");
    $display("[%s] d=%0b q=%0b",tag,d,q);
  endfunction
endclass
  

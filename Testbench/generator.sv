class generator;
  transaction trans;
  task run();
    repeat(10) begin
      trans=new();
      assert(trans.randomize()) else $error("randomization didnt happen");
      trans.print("generator class signals");
      common::gen2drv.put(trans);
    end
  endtask
endclass
      

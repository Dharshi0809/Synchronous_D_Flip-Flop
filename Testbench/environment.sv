class environment;
	agent a;
	scoreboard s;
	task run();
		a = new();
		s = new();
		fork
			a.run();
			s.run();
		join
	endtask
endclass



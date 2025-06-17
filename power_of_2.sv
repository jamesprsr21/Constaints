// Using `Shift operator also we can achieve power of 2
//like 0001= 2^0, 0010=2^1, 0100=2^2, 1000=2^3

class AB;
  rand bit[31:0] val;
  
  constraint c1{val inside {[0:32]};}
  
  constraint power_of_2{ val != 0;
		        (val & (val-1)) == 0;} //bitwise AND operation
							
  function void post_randomize();
    $display("value is %0d", val);
  endfunction
endclass

module test;
AB a;
  initial
    begin
      a=new();
      repeat(10)
      a.randomize();
    end
endmodule

///////////////////////////////////////////////Or

class AB;
  rand bit[31:0] val;
  
  constraint c1{val inside {[0:32]};}
  
  constraint power_of_2{$onehot(val)==1;}
							
  function void post_randomize();
    $display("value is %0d", val);
  endfunction
endclass

module test;
AB a;
  initial
    begin
      a=new();
      repeat(10)
      a.randomize();
    end
endmodule

/////////////////////////////////////////////////////
class AB;
  rand bit[31:0] val;
  
  
  constraint c1{val inside {[0:32]};}
  
  constraint c2{;}
  
							
  function void post_randomize();
    for (int i = 0; i < 10; i++) begin
     val = 32'b1 << i;
      $display("Power of 2 (%0d): %0d", i, val);
    end
  endfunction
endclass

module test;
AB a;
  initial
    begin
      a=new();
      repeat(10)
      a.randomize();
    end
endmodule

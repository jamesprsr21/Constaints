// 4bit Variable a, should generate 1011 value 20% of time it randomize. 

class test;
  rand bit[3:0] a;
  
  constraint c1{a dist{a:=80, 4'b1011:=20};}
  
  function void post_randomize();
    $display("%b",a);
  endfunction
  
endclass

module eg;
  test t;
  initial 
    begin
      t=new();
      repeat(10)
      t.randomize();
    end
endmodule

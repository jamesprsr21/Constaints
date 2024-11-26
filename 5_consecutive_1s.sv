// 32 bit variable with 5 consecutive 1s
class eg;
  rand bit [31:0]a;
  rand bit [4:0]i;

  constraint c1{a== (31<<i);}

    
  function void post_randomize();
      $display("%b", a);  
  endfunction
endclass

module test;
eg g;
  initial 
    begin
      g=new();
      repeat(5)
      g.randomize();
    end
endmodule

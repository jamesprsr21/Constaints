// 32 bit variable with 5 consecutive 1s
class eg;
  rand bit [31:0]a;
  rand bit [4:0]i;

  constraint c1{a== (31<<i);}  //31=5'b11111  | where i is random variable of 5bit

    
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

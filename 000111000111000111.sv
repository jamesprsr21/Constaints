// Constraint to generate 000111000111000111....
class eg;
  rand bit a[];
  rand bit b[$];
  constraint c1{a.size==24;}
    
    
    function void post_randomize();
                
                foreach(a[i]) begin
                  repeat(3)
                    b.push_back(0);
              
                  repeat(3)
                    b.push_back(1);  end
                
      foreach(b[i])
                  $write("%b",b[i]);
    endfunction
endclass

module test;
 eg g;
  initial
    begin
      g=new();
      g.randomize();
    end
endmodule

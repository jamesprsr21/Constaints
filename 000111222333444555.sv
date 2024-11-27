//000111222333444555666.....

class eg;
  rand int a[];
  rand int b[$];
  constraint c1{a.size==9;}
  constraint c2{foreach(a[i])
    a[i]==i;}
    
    function void post_randomize();
                
                foreach(a[i]) begin
                  repeat(3)
                    b.push_back(a[i]);
                     end
                
      foreach(b[i])
        $write("%0d",b[i]);
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

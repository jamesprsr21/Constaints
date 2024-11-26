//constraint to generate 9,99,999,9999,99999,...

class gen;
  rand longint a[20];
  
  constraint s1{foreach(a[i])
    if(i==0)
      a[i]==0;
                else if(i>0)
                  a[i]==a[i-1]*10+9;
               }
endclass

module check;
 gen g1;
  initial 
    begin
      g1=new();
      repeat(1)
        begin
          g1.randomize();
          foreach(g1.a[i])
            $display("i=%0d,a=%0d",i,g1.a[i]);
        end
      
    end
endmodule 

////////////////////////////////////////////////////////////////////////////or
class eg;
  rand int a[];
  constraint c1{a.size==9;}
  constraint c2{foreach(a[i])
    a[i]==10**(i+1);}
  
  function void post_randomize();

    foreach(a[i])  begin
          a[i]=a[i]-1;
      $display("%0d",a[i]);  end
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

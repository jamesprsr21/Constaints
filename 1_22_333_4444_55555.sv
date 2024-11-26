//constraint for 1 22 333 4444 5555
class ab;
  rand longint b[$];
  rand longint a[];
  
  constraint c1{a.size==9;}
  constraint c2{foreach(a[i])
    a[i]==i+1;}
  
  function void post_randomize();
    foreach(a[i])
      repeat(i+1)
      b.push_back(a[i]);
        
    foreach(b[i])
      $write("%0d",b[i]);
  endfunction
endclass

module test();
ab a;
  initial
  begin
    a=new();
    a.randomize();
  end
endmodule

//////////////////////////or//////////////////////
class ab;
  rand int a[];
  constraint x{a.size==7;}
  constraint y{foreach(a[i])
    a[i]==i+1;}
               
               function void post_randomize();
                 foreach(a[i])
                   repeat(a[i])
                     $write("%0d",a[i]);
               endfunction
endclass
               
module test();
ab a;
  initial
  begin
    a=new();
    a.randomize();
  end
endmodule

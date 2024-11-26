//constraint for reverse number like eg 123 to 321 using array(queue method)

class reverse;
  rand int a[];
  rand int b[$];
  
  constraint c1{a.size==7;}
  constraint c2{foreach(a[i])
    a[i] inside {[0:9]};}
  
  function void post_randomize();
          $write("a=");
    foreach(a[i])  begin
      $write("%0d", a[i]); 
    end
          $display(""); 
    
    foreach(a[i])
      b.push_front(a[i]);
    
    $write("reverse=");
      foreach(b[i])
      $write("%0d",b[i]);    
  endfunction

endclass

module test;
  reverse r;
  initial 
    begin
      r=new();
      r.randomize();
    end
endmodule 

//palindrom number
module test();
  class pal;
    rand int a[9];
    constraint c1{foreach(a[i])
      a[i] inside {[1:10]};}
    constraint x{foreach(a[i])
      a[i]==a[a.size-i-1];}  //a[0]=a[8] | a[1]=a[7] | a[2]=a[6] | a[3]=a[5] | a[4]=a[4] 
  
endclass
  
  pal p;
  initial
    begin
      p=new();
      p.randomize();
      foreach(p.a[i])
        $display("%0d",p.a[i]);
    end
  
endmodule

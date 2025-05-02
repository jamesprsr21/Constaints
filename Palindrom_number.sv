//palindrom number
module test();
  class pal;
    rand int a[7];
    constraint c1{foreach(a[i])
      a[i] inside {[1:10]};}
    constraint x{foreach(a[i])
      a[i]==a[a.size-i-1];}  
/*
let say a.size==7  {[0:6]}
a[0]=a[7-0-1] ==a[6]   //0th and 6th positions values are same
a[1]=a[7-1-1] ==a[5]  //1th and 5th positions values are same 
a[2]=a[7-2-1] ==a[4]  //2nd and 4th positions values are same
simillarly
a[3]==a[3]  //and so on
a[4]==a[2]
a[5]==a[1]
a[6]==a[0]
*/ 
  
endclass
  
  pal p;
  initial
    begin
      p=new();
      p.randomize();
      foreach(p.a[i])
        $write("%0d",p.a[i]);
    end
  
endmodule


//output : 3194913  

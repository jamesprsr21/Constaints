//palindrom number (Soft coded)
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

/////////////////////////////////////////////////////////////////////////////////////////////////////////  Another way
//palindrom Numbers  (Hard coded)
class test;;
  rand int a;
  int b;
  int c;
  //constraint c1{a inside {[1001:9999]};}  //for 4 digit numbers
  constraint c2{a inside {[10001:99999]};} //for 5 digit numbers

  //constraint c1{a==1234;}

  function void post_randomize();
    //     b=(a/1000*1000) + (((a/100)%10)*100) + ((a/100)%10)*10 + a/1000;   //for 4 digit numbers
    //eg. c=(a/1000*1000) + 0 + 0 + a/1000;  //let say if you want 00 in the middle | Like this any manupulation you can do according to your need
    
    b=(a/10000*10000) + ((a/1000)%10)*1000 + (((a/100)%10)*100) + ((a/1000)%10)*10 + a/10000;  //for 5 digit numbers
//      1st digit         2nd digit             3rd digit             4th digit        5th digit
    //       1st=5th           2nd=4th            3rd(middle one)         4th=2nd          5th=1st

    $display("%0d",b);
    //$display("%0d",c);

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


/*OUTPUT: 
28982
31713
65456
78587
29792
21612
94849
31213
64546
34743
*/










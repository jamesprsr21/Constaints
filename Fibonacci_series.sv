//FIBONACCI SERIES
class test;;
  rand int a[15];

  //constraint c0{a.size==100;}
  constraint c1{foreach(a[i])
    a[i] inside {[0:1000]};}  

  constraint c2{foreach(a[i]) {
    if(i==0)              //For the first two values (0th and 1th location) we are manually giving data 0 and 1 respectively
      a[i]==0;
    else if(i==1)
      a[i]==1;
    else
      a[i]==a[i-1]+a[i-2];      //after the initial two digits are available, then next every 3rd digit will be the summation of it previous two digits.
  } }

  function void post_randomize();
    foreach(a[i]) begin
      $write("%0d  ",a[i]);  end
   

  endfunction
endclass

module eg;
  test t;
  initial
    begin
      t=new();
      t.randomize();
    end
endmodule



//output: 0  1  1  2  3  5  8  13  21  34  55  89  144  233  377

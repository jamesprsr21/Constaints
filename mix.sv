// Code your testbench here
// or browse Examples
//Constraints
//1: 010101010101....
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==0;
               else
                 
                 a[i]==1;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/

//2: 010203040506...
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==0;
               else
                 
                 a[i]==(i+1)/2;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/


//3: 102030405060..
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    if(i%2==1)
      a[i]==0;
               else
                 
                 a[i]==(i+2)/2;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/
//012345678...
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    a[i]==i;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/

//1234554321
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    if(i<5)
      a[i]==i+1;
               else  
                 a[i]==(10-i);}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/

//9 19 29 39 49 59 69 79
/*class cons;
  rand int a[];
  constraint x{a.size==8;}
  constraint y{foreach(a[i])
    a[i]==(10*i)+9;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/

//5 -10 15 -20 25 -30
/*class cons;
  rand int a[];
  constraint x{a.size==6;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==5*i+5;
               else              
                 a[i]==-5*(i+1);}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/

//1122334455
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==(i+2)/2;
       else
         a[i]==(i+1)/2;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/
//or 1122334455
/*class cons;
  rand int a[];
  constraint x{a.size==10;}
  constraint y{foreach(a[i])
    a[i]==(i+2)/2;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize);
    end
endmodule*/



/*class cons;

rand int a[];
constraint x{a.size()==10;}
  constraint z{foreach(a[j])
    a[j] inside {[0:100]};}
constraint y{foreach(a[i])
  if(i>0)
  a[i]>a[i-1];}
function void post_randomize();
$display("Randomize data is %0p",a);
endfunction
endclass

module top;
cons c_h;

initial
begin
c_h=new();
assert(c_h.randomize());
end
endmodule*/

//Generate unique number //something is wrong with the code  
/*class cons;
  randc bit [5:0]a[];

 constraint x{a.size==20;}
  constraint y{foreach(a[i])
    a[i]%4==0;}
  function void post_randomize();
    
    foreach(a[i])
    $display("Randomized data is %0d", a[i]);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize);
    end
endmodule*/

//122333444455555
/*class test;
  int a=1;
  rand bit[3:0] b[];
  constraint c1{b.size==a;}  //size should be equal to the int a;
  constraint c2{foreach(b[i]) b[i]==a;}
  function void post_randomize();
    a++;
    foreach(b[i])
    $write("%0d",b[i]);
  endfunction
endclass
module top;
  test t;
  initial begin  t=new;
    repeat(5) begin
      assert(t.randomize()); //$write("%p",t.b);
    end
  end
endmodule*/

//112123123412345
/*class test;
  int a=1;
   rand bit[3:0] b[];
  constraint c1{b.size==a;}
  constraint c2{foreach(b[i]) 
    b[i]==i+1;}
  function void post_randomize();
    a++;
  endfunction
endclass
module top;
  test t;
  initial begin  t=new;
    repeat(5) begin
      assert(t.randomize()); 
      $write("%p",t.b);
    end
  end
endmodule*/

//5 55 555 5555 55555
// class test;
//   int a=1;
//    rand bit[3:0] b[];
//   constraint c1{b.size==a;}
//   constraint c2{foreach(b[i]) b[i]==5;}
//   function void post_randomize();
//     a++;
//   endfunction
// endclass
// module top;
//   test t;
//   initial begin  t=new;
//     repeat(5) begin
//       assert(t.randomize()); 
//       $write("%p",t.b);
//     end
//   end
// endmodule


/*class cons;
  rand int x[3][3];
  constraint a{foreach(x[i,j]) 
    x[i,j] inside {[0:50]};}
  constraint b{foreach(x[i,j])
    if(i==0 && j<4)
      x[i]+x[j]==20;}

  function void post_randomize();
    $write("%p",x);
  endfunction
endclass

module test;
  cons c;
  initial
    begin
  c=new();
      assert(c.randomize());
    end
endmodule*/
    
////////////////////////////////////////////////////////////////////
/*class constr;
  rand int a[10];   //we can directly declare the size
rand int b;
  //constraint x{a.size==10;}
  constraint z{foreach(a[i])
                a[i] inside {[1:50]};}
  constraint y{foreach(a[i])
    a[i]%2==0;}
    function void pre_randomize();
    $write("In Pre_randomize()");
    $display("%0p",a);
  endfunction
  function void post_randomize();
    $write("In Post_randomize()");
    $display("%0p",a);
  endfunction
endclass

module test;
  constr cons;
  initial
    begin
      cons=new();
      cons.randomize();
    end
endmodule*/

/////////////////// 01020302010 /////////////////////

/*class cons;
  rand int a[];
  constraint x{a.size==11;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==0;
               else if(i<6)
                 a[i]==(i+1)/2;
                   else
                     a[7]==2;
                     a[9]==1;}  //Jugaar
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule*/

//or

class cons;
  rand int a[];
  constraint x{a.size==11;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==0;
               else if(i<6)
                 a[i]==(i+1)/2;
                   else
                     a[i]==i%3+1;}
  function void post_randomize();
    $display("Randomized data is %0p",a);
  endfunction
endclass
cons c;
module top;
  initial
    begin
      c=new();
      assert(c.randomize());
    end
endmodule

  




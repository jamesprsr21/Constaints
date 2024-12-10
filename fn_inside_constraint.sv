 // constraint for even number
class even_number;
  rand int a[];  //a is dynamic array
  rand int b[10];  //b is a dynamic array of size 10(declared in compilation time)
  constraint c1{a.size ==10;}  //the size of a is 10
 constraint c2{foreach(b[i])
   b[i] inside {[0:50]};}  //range of value
  constraint c3{foreach(b[i])
    b[i]%2==0;}  //even number logic

  function int name(input int x[10]);  //a function taken of retutn type int with input argument of int variable of dynamic array type 
int i;
for(i=0;i<=10;i++)
  a[i]=x[i]-1;
  return a[i];
endfunction

function void post_randomize();
  name(b);
  foreach(b[i])
    $write("b=%0d ", b[i]);
  $display("");
  foreach(a[i])
    $write("a=%0d ", a[i]);
endfunction

endclass

module test;
  even_number ev;
  initial 
  begin
   ev=new();
   ev.randomize();
  end
endmodule


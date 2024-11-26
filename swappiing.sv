//Using NBA assignment. Evaluation of RHS happens in the Active region & and the assignment happens in the NBA region
 module swap();
   int a,b;
   initial
     begin
       a=5;
       b=10;
       a<=b;
       b<=a;
       $monitor("a=%0d, b=%0d",a,b);
     end
 endmodule

/////////////////////////////OR//////////////////////using the Arithmetic operation
 module swap();
   int a,b;
   initial
     begin
      a=5;
      b=10;
      a=a+b;  //15
      b=a-b;  //15-10=5
      a=a-b;  //15-5=10
      $monitor("a=%0d, b=%0d",a,b);
     end
 endmodule

////////////////////////////Using temp variable
module swap();
  int a,b;
  int temp;
  initial
    begin
      a=5;
      b=10;
      temp=a;
      a=b;
      b=temp;

      $monitor("a=%0d, b=%0d",a,b);
    end
endmodule



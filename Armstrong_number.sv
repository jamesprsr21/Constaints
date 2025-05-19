//Armstrong nuber
/*
class art;
rand int a;
  //3 Digit Armstrong number
// constraint c3{ a inside {[100:999]};}
// constraint c2{ a==   (((a/100)**3)+ (((a/10)%10)**3)  + ((a%10)**3))
// 			   ;}
  
  //4digit Armstrong number
  constraint c3{ a inside {[1000:9999]};}
  constraint c2{ a==   (((a/1000)**4)+ (((a/100)%10)**4)+ (((a/10)%10)**4) + ((a%10)**4))
			   ;}
endclass

module top;
art arr;

initial begin
arr = new();
repeat(5)
begin
assert(arr.randomize());
$display("%p",arr.a);
end
end
endmodule
*/
////////////////////////////////////////////////////////////////////////or try to make it soft coded
//Armstrong number
  
  class eg;
  rand int a;
    int arm;
  int temp;
  int count=1;
  
  constraint c1{a inside {[0:999999]};}
  
//   function int digit(input int a);
//    temp=a;
//     foreach(a[i])  begin
//     if((a/10)!=0)
//     begin
//     temp=temp/10;
//       count=count++;  end
//       else 
//         break;
//     end
//   endfunction
  
  function void post_randomize();
    //digit(a);
       temp=a;
    foreach(a[i])  begin     //loop for iterating multiple times 
      if((temp/10)!=0)       //till the number temp become 0
    begin
    temp=temp/10;            //continously divide it by 10 
      count=count++;         //it will count upto that number of times
      //     $display("%0d",a);  
//     $display("%0d",count);
//     $display("%0d",temp);
    end
      else 
        break;
    end
    
    for(int i=0;i<=count;i++)   begin
     arm= ( (a/10**(count-i)) % 10)**count;
      arm=arm+arm;
      $display("arm  %0d",arm);   end
    
    $display("Generated value: %0d",a);
    $display("Number of Digits: %0d",count);
    $display("%0d",arm);

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

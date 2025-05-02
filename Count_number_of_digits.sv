class eg;
  rand int a;
  int temp;
  int count=1;
  
  constraint c1{a inside {[100000:999999099]};}
  
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
    
    $display("Generated value: %0d",a);
    $display("Number of Digits: %0d",count);
    //$display("%0d",temp);

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

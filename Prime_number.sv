// Code your testbench here
// or browse Examples
/*
class pr_num;
  rand int num;
  int no;
  int i;
  int cnt;
  int qu_p[$];
  int qu_c[$];
  constraint num_s { num inside {[1:100]};
                    }
  constraint uniq_s {unique {num};}

  function void post_randomize();
    $display("%0d",num);
      for(int j=2;j<num/2;j++) begin
        if(num%j==0) begin
           cnt = 1;
          
           break;
        end
        else begin
          cnt = 0; 
      end
    end
    
    if(num == 2 ) 
        qu_p.push_back(num);
    else if(cnt==0)
      qu_p.push_back(num);
 
    
  endfunction
  
  
endclass

module pr_num_tb;
pr_num  pr;
  
  initial begin
    repeat(20) begin
    pr = new();
    pr.randomize();
      
      $display("qu %0p con %0p",pr.qu_p,pr.qu_c);
    end
  end
endmodule

*/

class pr_num;
  rand int num[20];
  int i;
  int cnt;
  int qu_p[$];
  int qu_c[$];
  constraint num_s { foreach(num[i]) {num[i] inside {[1:100]};
                                      if(i>0)
                                        num[i] > num[i-1];}
                    }
  constraint uniq_s {unique {num};}

  function void post_randomize();
 
 for(i=0;i<$size(num);i++) begin
   cnt = 0;
   for(int j=2;j<=num[i]/2;j++) begin
     if(num[i]%j==0) begin
        cnt = 1;
         break;
      end
        else begin
          cnt = 0; 
      end
    end
  
                    
    if((num[i] >1) &&(num[i] == 2 || cnt == 0)) 
        qu_p.push_back(num[i]);
          else if(cnt==1)
             qu_c.push_back(num[i]);
 
 end   
  endfunction
  
  
endclass

module pr_num_tb;
pr_num  pr;
  
  initial begin
    pr = new();
    pr.randomize();
    $display("num %0p",pr.num);
    $display("qu %0p con %0p",pr.qu_p,pr.qu_c);
  end
endmodule

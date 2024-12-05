class a;
  rand int x;
  rand int y;
  
  //constraint c1{x inside {[0:10]};
               // y inside {[10:20]};}
  
  constraint c1{x>0 && x<10;}
  
  function void post_randomize();
    $display("a= %0d, b= %0d",x,y);
  endfunction
endclass

module test;
 a ah;
  initial
  begin
    ah=new();
    ah.randomize(x,y);
  end
endmodule 

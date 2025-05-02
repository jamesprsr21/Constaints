class ab;
  rand int a[4][4];
  //right diagonal shouild be one 
  /*constraint c1{foreach(a[i,j]) {
    if(i+j==3)  //if the sumation of the index i and j are 3 
      a[i][j]==1;
                else
                  a[i][j]==0; } */ 
  
  //left diagonal should be one
    constraint c2{foreach(a[i,j]) {
      if(i==j)  //if both the index(i and j) are same
      a[i][j]==1;
                else
                  a[i][j]==0; }
               
               }
endclass 



module top;
     
  ab c=new();


 initial begin
    $display("######## OUTPUT ########");
    assert(c.randomize());
    foreach(c.a[i,j]) begin
      $write("%0d \t",c.a[i][j]);
        if(j==3)
          $display("");
      end
    $display("######## END ########");
  end
 
endmodule


/*OUTPUT:
######## OUTPUT ########
1 	0 	0 	0 	
0 	1 	0 	0 	
0 	0 	1 	0 	
0 	0 	0 	1 	
######## END ########
*/

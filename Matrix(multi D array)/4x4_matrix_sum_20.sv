//Constraint of 4x4 matrix where sum of each row, column, diagonal is 20

class ab;

  rand int a[][];
    
     //Defining the size of the 2D array 
 constraint x{a.size()==4; 
               foreach(a[i]) 
               {
                 a[i].size==4; 

                 }
               }
 
//Declaring the range of the data
 constraint y{foreach(a[i,j])
                   a[i][j] inside {[0:20]};}

//Sum of row is 20
constraint z{foreach(a[i,j])
                  a[i].sum()==20;}
                 
//Sum of column is 20
//                  constraint w{foreach(a[i,j])
//                    a[i][j]+a[i+1][j]+a[i+2][j]+a[i+3][j]==20;}
     //or            
constraint c2 { foreach (a[j])
     //if(j%2==0)
       a.sum with (int'(a[item.index][j]))==20;}
                 
//sum of diagonal is 20
//                  constraint D{foreach(a[i,j]) {
//                    //if (i==j)
//                    a[i][j]+a[i+1][j+1]+a[i+2][j+2]+a[i+3][j+3]==30;
//                    a[i][j+3]+a[i+1][j+2]+a[i+2][j+1]+a[i+3][j]==30;} } 
                 
            constraint left_diagonal{
              foreach(a[i,j]){
                if(i==0){
                a[i][i]+a[i+1][i+1]+a[i+2][i+2]+a[i+3][i+3]==20;
                }
              }
            }
                  constraint right_diagonal{
                    foreach(a[i,j]){
                      if(i==3)
                        a[i-3][i]+a[i-2][i-1]+a[i-1][i-2]+a[i][i-3]==20;
                    }
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
